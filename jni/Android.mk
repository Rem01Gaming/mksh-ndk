# Android.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := mksh
LOCAL_SRC_FILES := \
    src/main.c \
    src/lalloc.c \
    src/edit.c \
    src/eval.c \
    src/exec.c \
    src/expr.c \
    src/funcs.c \
    src/histrap.c \
    src/jobs.c \
    src/lex.c \
    src/misc.c \
    src/shf.c \
    src/syn.c \
    src/tree.c \
    src/ulimit.c \
    src/var.c

LOCAL_CFLAGS := \
    -Wall \
    -Werror \
    -Wno-deprecated-declarations \
    -fno-asynchronous-unwind-tables \
    -fno-strict-aliasing \
    -fwrapv \
    -DNDEBUG \
    -DMKSH_ASSUME_UTF8 \
    -DMKSH_DONT_EMIT_IDSTRING \
    -DMKSH_BUILDSH \
    -D_GNU_SOURCE \
    -DSETUID_CAN_FAIL_WITH_EAGAIN \
    -DHAVE_STRING_POOLING=2 \
    -DHAVE_ATTRIBUTE_BOUNDED=1 \
    -DHAVE_ATTRIBUTE_FORMAT=1 \
    -DHAVE_ATTRIBUTE_NORETURN=1 \
    -DHAVE_ATTRIBUTE_PURE=1 \
    -DHAVE_ATTRIBUTE_UNUSED=1 \
    -DHAVE_ATTRIBUTE_USED=1 \
    -DHAVE_SYS_TIME_H=1 \
    -DHAVE_TIME_H=1 \
    -DHAVE_BOTH_TIME_H=1 \
    -DHAVE_SYS_BSDTYPES_H=0 \
    -DHAVE_SYS_FILE_H=1 \
    -DHAVE_SYS_MKDEV_H=0 \
    -DHAVE_SYS_MMAN_H=1 \
    -DHAVE_SYS_PARAM_H=1 \
    -DHAVE_SYS_RESOURCE_H=1 \
    -DHAVE_SYS_SELECT_H=1 \
    -DHAVE_SYS_SYSMACROS_H=1 \
    -DHAVE_BSTRING_H=0 \
    -DHAVE_GRP_H=1 \
    -DHAVE_IO_H=0 \
    -DHAVE_LIBGEN_H=1 \
    -DHAVE_LIBUTIL_H=0 \
    -DHAVE_PATHS_H=1 \
    -DHAVE_STDINT_H=1 \
    -DHAVE_STRINGS_H=1 \
    -DHAVE_TERMIOS_H=1 \
    -DHAVE_ULIMIT_H=0 \
    -DHAVE_VALUES_H=0 \
    -DHAVE_CAN_INTTYPES=1 \
    -DHAVE_CAN_UCBINTS=1 \
    -DHAVE_CAN_INT8TYPE=1 \
    -DHAVE_CAN_UCBINT8=1 \
    -DHAVE_SIG_T=1 \
    -DHAVE_SYS_ERRLIST=0 \
    -DHAVE_SYS_SIGNAME=1 \
    -DHAVE_SYS_SIGLIST=1 \
    -DHAVE_FLOCK=1 \
    -DHAVE_LOCK_FCNTL=1 \
    -DHAVE_RLIMIT=1 \
    -DHAVE_RLIM_T=1 \
    -DHAVE_GETRUSAGE=1 \
    -DHAVE_GETSID=1 \
    -DHAVE_GETTIMEOFDAY=1 \
    -DHAVE_KILLPG=1 \
    -DHAVE_MEMMOVE=1 \
    -DHAVE_MKNOD=0 \
    -DHAVE_MMAP=1 \
    -DHAVE_FTRUNCATE=1 \
    -DHAVE_NICE=1 \
    -DHAVE_REVOKE=0 \
    -DHAVE_SETLOCALE_CTYPE=1 \
    -DHAVE_LANGINFO_CODESET=1 \
    -DHAVE_SELECT=1 \
    -DHAVE_SETRESUGID=1 \
    -DHAVE_SETGROUPS=1 \
    -DHAVE_STRERROR=1 \
    -DHAVE_STRSIGNAL=1 \
    -DHAVE_STRLCPY=1 \
    -DHAVE_FLOCK_DECL=1 \
    -DHAVE_REVOKE_DECL=1 \
    -DHAVE_SYS_ERRLIST_DECL=0 \
    -DHAVE_SYS_SIGLIST_DECL=1 \
    -DHAVE_ST_MTIM=1 \
    -DHAVE_ST_MTIMENSEC=0 \
    -DHAVE_PERSISTENT_HISTORY=0 \
    -DMKSH_BUILD_R=593 \
    -DMKSH_DEFAULT_PROFILEDIR=\"/system/etc\" \
    -DMKSHRC_PATH=\"/system/etc/mkshrc\" \
    -DMKSH_DEFAULT_EXECSHELL=\"/system/bin/sh\" \
    -DMKSH_DEFAULT_TMPDIR=\"/data/local/tmp\"

LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)
