CMAKE_MINIMUM_REQUIRED(VERSION 3.6)
PROJECT("GMath")

#########################
SET(GMATH_VERSION 1.414)#
#########################


AUX_SOURCE_DIRECTORY(${PROJECT_SOURCE_DIR}/src SRC_MAIN)
AUX_SOURCE_DIRECTORY(${PROJECT_SOURCE_DIR}/src/header/cmake SRC_HEADER_CMAKE)
AUX_SOURCE_DIRECTORY(${PROJECT_SOURCE_DIR}/src/header/original SRC_HEADER_ORIGIN)
AUX_SOURCE_DIRECTORY(${PROJECT_SOURCE_DIR}/src/source SRC_SOURCE)

####################
FILE(WRITE ${PROJECT_SOURCE_DIR}/src/header/cmake/versionInfo.hpp "struct version_info{long double version};const version_info versionInfo={1.414};")
####################

ADD_EXECUTABLE("GMath" ${SRC_MAIN} ${SRC_HEADER} ${SRC_SOURCE})