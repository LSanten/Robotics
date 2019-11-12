# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bucket: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ibucket:/home/gravl/leon_repo/test_ws/src/bucket/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bucket_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg" NAME_WE)
add_custom_target(_bucket_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bucket" "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(bucket
  "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bucket
)

### Generating Services

### Generating Module File
_generate_module_cpp(bucket
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bucket
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bucket_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bucket_generate_messages bucket_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg" NAME_WE)
add_dependencies(bucket_generate_messages_cpp _bucket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bucket_gencpp)
add_dependencies(bucket_gencpp bucket_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bucket_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(bucket
  "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bucket
)

### Generating Services

### Generating Module File
_generate_module_eus(bucket
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bucket
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bucket_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bucket_generate_messages bucket_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg" NAME_WE)
add_dependencies(bucket_generate_messages_eus _bucket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bucket_geneus)
add_dependencies(bucket_geneus bucket_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bucket_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(bucket
  "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bucket
)

### Generating Services

### Generating Module File
_generate_module_lisp(bucket
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bucket
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bucket_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bucket_generate_messages bucket_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg" NAME_WE)
add_dependencies(bucket_generate_messages_lisp _bucket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bucket_genlisp)
add_dependencies(bucket_genlisp bucket_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bucket_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(bucket
  "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bucket
)

### Generating Services

### Generating Module File
_generate_module_nodejs(bucket
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bucket
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bucket_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bucket_generate_messages bucket_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg" NAME_WE)
add_dependencies(bucket_generate_messages_nodejs _bucket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bucket_gennodejs)
add_dependencies(bucket_gennodejs bucket_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bucket_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(bucket
  "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bucket
)

### Generating Services

### Generating Module File
_generate_module_py(bucket
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bucket
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bucket_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bucket_generate_messages bucket_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gravl/leon_repo/test_ws/src/bucket/msg/Nums.msg" NAME_WE)
add_dependencies(bucket_generate_messages_py _bucket_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bucket_genpy)
add_dependencies(bucket_genpy bucket_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bucket_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bucket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bucket
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(bucket_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bucket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bucket
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(bucket_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bucket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bucket
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(bucket_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bucket)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bucket
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(bucket_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bucket)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bucket\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bucket
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(bucket_generate_messages_py std_msgs_generate_messages_py)
endif()
