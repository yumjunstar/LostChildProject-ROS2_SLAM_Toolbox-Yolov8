// generated from rosidl_typesupport_fastrtps_c/resource/idl__type_support_c.cpp.em
// with input from msg_interface:srv/AddToQueue.idl
// generated code does not contain a copyright notice
#include "msg_interface/srv/detail/add_to_queue__rosidl_typesupport_fastrtps_c.h"


#include <cassert>
#include <limits>
#include <string>
#include "rosidl_typesupport_fastrtps_c/identifier.h"
#include "rosidl_typesupport_fastrtps_c/wstring_conversion.hpp"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
#include "msg_interface/msg/rosidl_typesupport_fastrtps_c__visibility_control.h"
#include "msg_interface/srv/detail/add_to_queue__struct.h"
#include "msg_interface/srv/detail/add_to_queue__functions.h"
#include "fastcdr/Cdr.h"

#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-parameter"
# ifdef __clang__
#  pragma clang diagnostic ignored "-Wdeprecated-register"
#  pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
# endif
#endif
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif

// includes and forward declarations of message dependencies and their conversion functions

#if defined(__cplusplus)
extern "C"
{
#endif

#include "rosidl_runtime_c/string.h"  // input_string
#include "rosidl_runtime_c/string_functions.h"  // input_string

// forward declare type support functions


using _AddToQueue_Request__ros_msg_type = msg_interface__srv__AddToQueue_Request;

static bool _AddToQueue_Request__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  const _AddToQueue_Request__ros_msg_type * ros_message = static_cast<const _AddToQueue_Request__ros_msg_type *>(untyped_ros_message);
  // Field name: input_string
  {
    const rosidl_runtime_c__String * str = &ros_message->input_string;
    if (str->capacity == 0 || str->capacity <= str->size) {
      fprintf(stderr, "string capacity not greater than size\n");
      return false;
    }
    if (str->data[str->size] != '\0') {
      fprintf(stderr, "string not null-terminated\n");
      return false;
    }
    cdr << str->data;
  }

  return true;
}

static bool _AddToQueue_Request__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  _AddToQueue_Request__ros_msg_type * ros_message = static_cast<_AddToQueue_Request__ros_msg_type *>(untyped_ros_message);
  // Field name: input_string
  {
    std::string tmp;
    cdr >> tmp;
    if (!ros_message->input_string.data) {
      rosidl_runtime_c__String__init(&ros_message->input_string);
    }
    bool succeeded = rosidl_runtime_c__String__assign(
      &ros_message->input_string,
      tmp.c_str());
    if (!succeeded) {
      fprintf(stderr, "failed to assign string into field 'input_string'\n");
      return false;
    }
  }

  return true;
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_msg_interface
size_t get_serialized_size_msg_interface__srv__AddToQueue_Request(
  const void * untyped_ros_message,
  size_t current_alignment)
{
  const _AddToQueue_Request__ros_msg_type * ros_message = static_cast<const _AddToQueue_Request__ros_msg_type *>(untyped_ros_message);
  (void)ros_message;
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // field.name input_string
  current_alignment += padding +
    eprosima::fastcdr::Cdr::alignment(current_alignment, padding) +
    (ros_message->input_string.size + 1);

  return current_alignment - initial_alignment;
}

static uint32_t _AddToQueue_Request__get_serialized_size(const void * untyped_ros_message)
{
  return static_cast<uint32_t>(
    get_serialized_size_msg_interface__srv__AddToQueue_Request(
      untyped_ros_message, 0));
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_msg_interface
size_t max_serialized_size_msg_interface__srv__AddToQueue_Request(
  bool & full_bounded,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;
  (void)full_bounded;

  // member: input_string
  {
    size_t array_size = 1;

    full_bounded = false;
    for (size_t index = 0; index < array_size; ++index) {
      current_alignment += padding +
        eprosima::fastcdr::Cdr::alignment(current_alignment, padding) +
        1;
    }
  }

  return current_alignment - initial_alignment;
}

static size_t _AddToQueue_Request__max_serialized_size(bool & full_bounded)
{
  return max_serialized_size_msg_interface__srv__AddToQueue_Request(
    full_bounded, 0);
}


static message_type_support_callbacks_t __callbacks_AddToQueue_Request = {
  "msg_interface::srv",
  "AddToQueue_Request",
  _AddToQueue_Request__cdr_serialize,
  _AddToQueue_Request__cdr_deserialize,
  _AddToQueue_Request__get_serialized_size,
  _AddToQueue_Request__max_serialized_size
};

static rosidl_message_type_support_t _AddToQueue_Request__type_support = {
  rosidl_typesupport_fastrtps_c__identifier,
  &__callbacks_AddToQueue_Request,
  get_message_typesupport_handle_function,
};

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, msg_interface, srv, AddToQueue_Request)() {
  return &_AddToQueue_Request__type_support;
}

#if defined(__cplusplus)
}
#endif

// already included above
// #include <cassert>
// already included above
// #include <limits>
// already included above
// #include <string>
// already included above
// #include "rosidl_typesupport_fastrtps_c/identifier.h"
// already included above
// #include "rosidl_typesupport_fastrtps_c/wstring_conversion.hpp"
// already included above
// #include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
// already included above
// #include "msg_interface/msg/rosidl_typesupport_fastrtps_c__visibility_control.h"
// already included above
// #include "msg_interface/srv/detail/add_to_queue__struct.h"
// already included above
// #include "msg_interface/srv/detail/add_to_queue__functions.h"
// already included above
// #include "fastcdr/Cdr.h"

#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-parameter"
# ifdef __clang__
#  pragma clang diagnostic ignored "-Wdeprecated-register"
#  pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
# endif
#endif
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif

// includes and forward declarations of message dependencies and their conversion functions

#if defined(__cplusplus)
extern "C"
{
#endif

// already included above
// #include "rosidl_runtime_c/string.h"  // string_list
// already included above
// #include "rosidl_runtime_c/string_functions.h"  // string_list

// forward declare type support functions


using _AddToQueue_Response__ros_msg_type = msg_interface__srv__AddToQueue_Response;

static bool _AddToQueue_Response__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  const _AddToQueue_Response__ros_msg_type * ros_message = static_cast<const _AddToQueue_Response__ros_msg_type *>(untyped_ros_message);
  // Field name: success
  {
    cdr << (ros_message->success ? true : false);
  }

  // Field name: string_list
  {
    const rosidl_runtime_c__String * str = &ros_message->string_list;
    if (str->capacity == 0 || str->capacity <= str->size) {
      fprintf(stderr, "string capacity not greater than size\n");
      return false;
    }
    if (str->data[str->size] != '\0') {
      fprintf(stderr, "string not null-terminated\n");
      return false;
    }
    cdr << str->data;
  }

  return true;
}

static bool _AddToQueue_Response__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  _AddToQueue_Response__ros_msg_type * ros_message = static_cast<_AddToQueue_Response__ros_msg_type *>(untyped_ros_message);
  // Field name: success
  {
    uint8_t tmp;
    cdr >> tmp;
    ros_message->success = tmp ? true : false;
  }

  // Field name: string_list
  {
    std::string tmp;
    cdr >> tmp;
    if (!ros_message->string_list.data) {
      rosidl_runtime_c__String__init(&ros_message->string_list);
    }
    bool succeeded = rosidl_runtime_c__String__assign(
      &ros_message->string_list,
      tmp.c_str());
    if (!succeeded) {
      fprintf(stderr, "failed to assign string into field 'string_list'\n");
      return false;
    }
  }

  return true;
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_msg_interface
size_t get_serialized_size_msg_interface__srv__AddToQueue_Response(
  const void * untyped_ros_message,
  size_t current_alignment)
{
  const _AddToQueue_Response__ros_msg_type * ros_message = static_cast<const _AddToQueue_Response__ros_msg_type *>(untyped_ros_message);
  (void)ros_message;
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // field.name success
  {
    size_t item_size = sizeof(ros_message->success);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name string_list
  current_alignment += padding +
    eprosima::fastcdr::Cdr::alignment(current_alignment, padding) +
    (ros_message->string_list.size + 1);

  return current_alignment - initial_alignment;
}

static uint32_t _AddToQueue_Response__get_serialized_size(const void * untyped_ros_message)
{
  return static_cast<uint32_t>(
    get_serialized_size_msg_interface__srv__AddToQueue_Response(
      untyped_ros_message, 0));
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_msg_interface
size_t max_serialized_size_msg_interface__srv__AddToQueue_Response(
  bool & full_bounded,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;
  (void)full_bounded;

  // member: success
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint8_t);
  }
  // member: string_list
  {
    size_t array_size = 1;

    full_bounded = false;
    for (size_t index = 0; index < array_size; ++index) {
      current_alignment += padding +
        eprosima::fastcdr::Cdr::alignment(current_alignment, padding) +
        1;
    }
  }

  return current_alignment - initial_alignment;
}

static size_t _AddToQueue_Response__max_serialized_size(bool & full_bounded)
{
  return max_serialized_size_msg_interface__srv__AddToQueue_Response(
    full_bounded, 0);
}


static message_type_support_callbacks_t __callbacks_AddToQueue_Response = {
  "msg_interface::srv",
  "AddToQueue_Response",
  _AddToQueue_Response__cdr_serialize,
  _AddToQueue_Response__cdr_deserialize,
  _AddToQueue_Response__get_serialized_size,
  _AddToQueue_Response__max_serialized_size
};

static rosidl_message_type_support_t _AddToQueue_Response__type_support = {
  rosidl_typesupport_fastrtps_c__identifier,
  &__callbacks_AddToQueue_Response,
  get_message_typesupport_handle_function,
};

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, msg_interface, srv, AddToQueue_Response)() {
  return &_AddToQueue_Response__type_support;
}

#if defined(__cplusplus)
}
#endif

#include "rosidl_typesupport_fastrtps_cpp/service_type_support.h"
#include "rosidl_typesupport_cpp/service_type_support.hpp"
// already included above
// #include "rosidl_typesupport_fastrtps_c/identifier.h"
// already included above
// #include "msg_interface/msg/rosidl_typesupport_fastrtps_c__visibility_control.h"
#include "msg_interface/srv/add_to_queue.h"

#if defined(__cplusplus)
extern "C"
{
#endif

static service_type_support_callbacks_t AddToQueue__callbacks = {
  "msg_interface::srv",
  "AddToQueue",
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, msg_interface, srv, AddToQueue_Request)(),
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, msg_interface, srv, AddToQueue_Response)(),
};

static rosidl_service_type_support_t AddToQueue__handle = {
  rosidl_typesupport_fastrtps_c__identifier,
  &AddToQueue__callbacks,
  get_service_typesupport_handle_function,
};

const rosidl_service_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__SERVICE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, msg_interface, srv, AddToQueue)() {
  return &AddToQueue__handle;
}

#if defined(__cplusplus)
}
#endif