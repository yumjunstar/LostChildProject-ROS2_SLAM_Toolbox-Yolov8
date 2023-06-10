import numpy as np
import cv2
from cv_bridge import CvBridge

# ROS Library
import rclpy
from rclpy.node import Node
from sensor_msgs.msg import *
from std_msgs.msg import *

# Beagle Library
import roboidai as ai
class camera_pub(Node):
    def __init__ (self, camera_instance_):
        self.camera_instance = camera_instance_

        node_name = 'camera' # ROS2 노드 이름
        topic_msg_type = Image # Topic msg type
        topic_msg_name = 'camera_image' # Topic msg name
        qos_profile = 10
        fps = 15 # 얼마의 주기로 topic msg 를 보낼 것인지 (카메리의 FPS와 동일하게 설정)
        timer_period = 1/fps

        super().__init__(node_name)

        self.br = CvBridge()
        self.publisher_ = self.create_publisher(topic_msg_type, 
                                                topic_msg_name, 
                                                qos_profile)
  
        self.timer = self.create_timer(timer_period, self.camera_publish)


    def camera_publish(self):
        cam_image = self.camera_instance.read()

        try:
            camera_msg = self.br.cv2_to_imgmsg(cam_image)
            self.publisher_.publish(camera_msg) # Init에서 create_publish 한 instance를 이용해 publish 
        except (UnboundLocalError, TypeError) as e:
            self.get_logger().info('Camera is loading : {0}'.format(e))
        except Exception as e:
            self.get_logger().info('Error : {error}'.format(error = e))
        else:
            self.get_logger().info('Camera Publishing')
        # camera_msg = Image()
        # camera_msg.header = Header()

        # camera_msg.header.frame_id = "image"
        # camera_msg.header.stamp = Node.get_clock(self).now().to_msg()
        # cam_height = len(cam_image)
        # cam_width = len(cam_image[0])
        # cam_channel = len(cam_image[0][0])

        # camera_msg.encoding = "bgr8"
        # camera_msg.is_bigendian = False
        # camera_msg.step = cam_height * cam_channel * 1 # 1 byte = 8 bit
        # camera_msg.height = cam_height
        # camera_msg.width = cam_width
        # print (cam_height, cam_width, cam_channel)
        # camera_msg.data = sum(cam_image, []) # 풀어 해진 8bit data #8bit 데이터라서 딱히 변환할 필요 없을 것 같음

def camera_undistort():


    dist = np.array([k1, k2, p1, p2, k3])
    mtx = np.array([[fx, 0, cx], [0, fy, cy], [0, 0, 1]])

    image = cv2.imread('./cali_images/WIN_20230110_13_21_30_Pro.jpg')

    h, w = image.shape[:2]

    newcameramtx, roi = cv2.getOptimalNewCameraMatrix(mtx,
                                                    dist,
                                                    (w, h),
                                                    1, (w, h))

    # undistort
    dst = cv2.undistort(image, mtx, dist, None, newcameramtx)

    x, y, w, h = roi
    dst = dst[y:y+h, x:x+w]

    cv2.imshow('result', dst)
    cv2.waitKey(0)
    cv2.destroyAllWindows()

    return dst
def main(args = None):
    camera_type = 'ip0'
    cam = ai.Camera(camera_type)
    rclpy.init(args = args)
    node = camera_pub(cam)
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        node.get_logger().info('Keyboard INterrupt (SIGINT)')
    finally:
        node.destroy_node()
        rclpy.shutdown()
if __name__ == '__main__':
    main()