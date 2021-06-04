# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "action_quiz: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iaction_quiz:/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(action_quiz_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_custom_target(_action_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_quiz" "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg" "actionlib_msgs/GoalID:action_quiz/CustomActionMsgActionGoal:actionlib_msgs/GoalStatus:std_msgs/Header:action_quiz/CustomActionMsgResult:action_quiz/CustomActionMsgGoal:action_quiz/CustomActionMsgActionFeedback:action_quiz/CustomActionMsgActionResult:action_quiz/CustomActionMsgFeedback"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_custom_target(_action_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_quiz" "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg" "actionlib_msgs/GoalID:action_quiz/CustomActionMsgGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_custom_target(_action_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_quiz" "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg" "action_quiz/CustomActionMsgResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_custom_target(_action_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_quiz" "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg" "action_quiz/CustomActionMsgFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_custom_target(_action_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_quiz" "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_custom_target(_action_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_quiz" "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_custom_target(_action_quiz_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action_quiz" "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_quiz
)
_generate_msg_cpp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_quiz
)
_generate_msg_cpp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_quiz
)
_generate_msg_cpp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_quiz
)
_generate_msg_cpp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_quiz
)
_generate_msg_cpp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_quiz
)
_generate_msg_cpp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_quiz
)

### Generating Services

### Generating Module File
_generate_module_cpp(action_quiz
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_quiz
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(action_quiz_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(action_quiz_generate_messages action_quiz_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_cpp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_cpp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_cpp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_cpp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_cpp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_cpp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_cpp _action_quiz_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_quiz_gencpp)
add_dependencies(action_quiz_gencpp action_quiz_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_quiz_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_quiz
)
_generate_msg_eus(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_quiz
)
_generate_msg_eus(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_quiz
)
_generate_msg_eus(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_quiz
)
_generate_msg_eus(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_quiz
)
_generate_msg_eus(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_quiz
)
_generate_msg_eus(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_quiz
)

### Generating Services

### Generating Module File
_generate_module_eus(action_quiz
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_quiz
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(action_quiz_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(action_quiz_generate_messages action_quiz_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_eus _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_eus _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_eus _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_eus _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_eus _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_eus _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_eus _action_quiz_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_quiz_geneus)
add_dependencies(action_quiz_geneus action_quiz_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_quiz_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_quiz
)
_generate_msg_lisp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_quiz
)
_generate_msg_lisp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_quiz
)
_generate_msg_lisp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_quiz
)
_generate_msg_lisp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_quiz
)
_generate_msg_lisp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_quiz
)
_generate_msg_lisp(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_quiz
)

### Generating Services

### Generating Module File
_generate_module_lisp(action_quiz
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_quiz
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(action_quiz_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(action_quiz_generate_messages action_quiz_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_lisp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_lisp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_lisp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_lisp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_lisp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_lisp _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_lisp _action_quiz_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_quiz_genlisp)
add_dependencies(action_quiz_genlisp action_quiz_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_quiz_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_quiz
)
_generate_msg_nodejs(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_quiz
)
_generate_msg_nodejs(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_quiz
)
_generate_msg_nodejs(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_quiz
)
_generate_msg_nodejs(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_quiz
)
_generate_msg_nodejs(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_quiz
)
_generate_msg_nodejs(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_quiz
)

### Generating Services

### Generating Module File
_generate_module_nodejs(action_quiz
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_quiz
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(action_quiz_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(action_quiz_generate_messages action_quiz_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_nodejs _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_nodejs _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_nodejs _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_nodejs _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_nodejs _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_nodejs _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_nodejs _action_quiz_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_quiz_gennodejs)
add_dependencies(action_quiz_gennodejs action_quiz_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_quiz_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_quiz
)
_generate_msg_py(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_quiz
)
_generate_msg_py(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_quiz
)
_generate_msg_py(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_quiz
)
_generate_msg_py(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_quiz
)
_generate_msg_py(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_quiz
)
_generate_msg_py(action_quiz
  "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_quiz
)

### Generating Services

### Generating Module File
_generate_module_py(action_quiz
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_quiz
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(action_quiz_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(action_quiz_generate_messages action_quiz_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgAction.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_py _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionGoal.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_py _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionResult.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_py _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgActionFeedback.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_py _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgGoal.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_py _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgResult.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_py _action_quiz_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/.private/action_quiz/share/action_quiz/msg/CustomActionMsgFeedback.msg" NAME_WE)
add_dependencies(action_quiz_generate_messages_py _action_quiz_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_quiz_genpy)
add_dependencies(action_quiz_genpy action_quiz_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_quiz_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_quiz)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action_quiz
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(action_quiz_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(action_quiz_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_quiz)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action_quiz
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(action_quiz_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(action_quiz_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_quiz)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action_quiz
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(action_quiz_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(action_quiz_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_quiz)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action_quiz
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(action_quiz_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(action_quiz_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_quiz)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_quiz\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action_quiz
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(action_quiz_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(action_quiz_generate_messages_py std_msgs_generate_messages_py)
endif()
