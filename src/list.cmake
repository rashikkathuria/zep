
SET(ZEP_ROOT ${CMAKE_CURRENT_LIST_DIR}/../)
SET(ZEP_SOURCE
${ZEP_ROOT}/src/mcommon/animation/timer.cpp
${ZEP_ROOT}/src/mcommon/animation/timer.h
${ZEP_ROOT}/src/mcommon/string/stringutils.cpp
${ZEP_ROOT}/src/mcommon/file/file.cpp
${ZEP_ROOT}/src/mcommon/file/file.h
${ZEP_ROOT}/src/mcommon/string/stringutils.h
${ZEP_ROOT}/src/mcommon/threadutils.h
${ZEP_ROOT}/src/mcommon/file/archive.h
${ZEP_ROOT}/src/mcommon/file/archive.cpp
${ZEP_ROOT}/src/mcommon/logger.h
${ZEP_ROOT}/src/mcommon/file/mfilesystem.h
${ZEP_ROOT}/src/mcommon/file/mfilesystem.cpp
${ZEP_ROOT}/src/mcommon/FileWatcher/FileWatcher.cpp
${ZEP_ROOT}/src/editor.cpp
${ZEP_ROOT}/src/editor.h
${ZEP_ROOT}/src/splits.cpp
${ZEP_ROOT}/src/splits.h
${ZEP_ROOT}/src/buffer.cpp
${ZEP_ROOT}/src/buffer.h
${ZEP_ROOT}/src/commands.cpp
${ZEP_ROOT}/src/commands.h
${ZEP_ROOT}/src/display.h
${ZEP_ROOT}/src/tab_window.cpp
${ZEP_ROOT}/src/tab_window.h
${ZEP_ROOT}/src/window.cpp
${ZEP_ROOT}/src/window.h
${ZEP_ROOT}/src/window_base.cpp
${ZEP_ROOT}/src/window_base.h
${ZEP_ROOT}/src/scroller.cpp
${ZEP_ROOT}/src/scroller.h
${ZEP_ROOT}/src/syntax.cpp
${ZEP_ROOT}/src/syntax.h
${ZEP_ROOT}/src/syntax_providers.cpp
${ZEP_ROOT}/src/syntax_providers.h
${ZEP_ROOT}/src/syntax_rainbow_brackets.cpp
${ZEP_ROOT}/src/syntax_rainbow_brackets.h
${ZEP_ROOT}/src/mode.cpp
${ZEP_ROOT}/src/mode.h
${ZEP_ROOT}/src/mode_standard.cpp
${ZEP_ROOT}/src/mode_standard.h
${ZEP_ROOT}/src/mode_vim.cpp
${ZEP_ROOT}/src/mode_vim.h
${ZEP_ROOT}/src/theme.cpp
${ZEP_ROOT}/src/theme.h
${ZEP_ROOT}/src/list.cmake
)

IF (TARGET_PC)
SET (ZEP_SOURCE ${ZEP_SOURCE}
${ZEP_ROOT}/src/mcommon/FileWatcher/FileWatcherWin32.cpp
)
ENDIF()
IF (TARGET_MAC)
SET (ZEP_SOURCE ${ZEP_SOURCE}
${ZEP_ROOT}/src/mcommon/FileWatcher/FileWatcherOSX.cpp
)
ENDIF()
IF (TARGET_LINUX)
SET (ZEP_SOURCE ${ZEP_SOURCE}
${ZEP_ROOT}/src/mcommon/FileWatcher/FileWatcherLinux.cpp
)
ENDIF()


LIST(APPEND SRC_INCLUDE src src/mcommon)

IF (BUILD_QT)
SET(ZEP_SOURCE_QT
    ${ZEP_ROOT}/src/qt/zepdisplay_qt.cpp
    ${ZEP_ROOT}/src/qt/zepdisplay_qt.h
    ${ZEP_ROOT}/src/qt/zepwidget_qt.cpp
    ${ZEP_ROOT}/src/qt/zepwidget_qt.h
    )
SET(ZEP_INCLUDE_QT ${ZEP_ROOT}/src/qt)
ENDIF()

IF (BUILD_IMGUI)
SET(ZEP_SOURCE_IMGUI
    ${ZEP_ROOT}/src/imgui/display_imgui.cpp
    ${ZEP_ROOT}/src/imgui/display_imgui.h
    ${ZEP_ROOT}/src/imgui/editor_imgui.cpp
    ${ZEP_ROOT}/src/imgui/editor_imgui.h)
SET(ZEP_INCLUDE_IMGUI ${ZEP_ROOT}/src/qt)
ENDIF()

