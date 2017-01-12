#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW64-Windows
CND_DLIB_EXT=dll
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/com_snmill_jffmpeg_VideoCodecJNI.o


# C Compiler Flags
CFLAGS=-m64

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L../compiled/windows -lavcodec-57 -lavcodec -lavdevice-57 -lavdevice -lavfilter-6 -lavfilter -lavformat-57 -lavformat -lavutil-55 -lavutil -lswresample-2 -lswresample -lswscale-4 -lswscale

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libffmpegjni.${CND_DLIB_EXT}

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libffmpegjni.${CND_DLIB_EXT}: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libffmpegjni.${CND_DLIB_EXT} ${OBJECTFILES} ${LDLIBSOPTIONS} -shared

${OBJECTDIR}/com_snmill_jffmpeg_VideoCodecJNI.o: com_snmill_jffmpeg_VideoCodecJNI.c
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -I/C/Program\ Files/Java/jdk1.8.0_11/include -I/C/Program\ Files/Java/jdk1.8.0_11/include/win32 -I../ffmpeg-3.2.2 -I../ffmpeg-3.2.2/libavcodec -I../ffmpeg-3.2.2/libavdevice -I../ffmpeg-3.2.2/libavfilter -I../ffmpeg-3.2.2/libavformat -I../ffmpeg-3.2.2/libavresample -I../ffmpeg-3.2.2/libavutil -I../ffmpeg-3.2.2/libpostproc -I../ffmpeg-3.2.2/libswresample -I../ffmpeg-3.2.2/libswscale -I../jffmpeg/jffmpeg/src/main/resources/includes  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/com_snmill_jffmpeg_VideoCodecJNI.o com_snmill_jffmpeg_VideoCodecJNI.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
