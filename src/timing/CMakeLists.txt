cmake_minimum_required(VERSION 3.19)
set(PROJECT_NAME timeCubicString)
project(${PROJECT_NAME})

message("${CMAKE_SYSTEM_FRAMEWORK_PATH}")

set(AUDIO_PROCESSORS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../processor)

include_directories(
	${AUDIO_PROCESSORS_DIR}
)

set( SOURCE_FILES
    ${PROJECT_NAME}.cpp
	${AUDIO_PROCESSORS_DIR}/CubicStringProcessor.cpp
	${AUDIO_PROCESSORS_DIR}/CubicStringProcessorEigen.cpp
)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

# Add the Accelerate framework
find_library(ACCELERATE_LIBRARY Accelerate)
if(ACCELERATE_LIBRARY)
    message(STATUS "Found Accelerate library: ${ACCELERATE_LIBRARY}")
    target_link_libraries(${PROJECT_NAME} PUBLIC ${ACCELERATE_LIBRARY})
else()
    message(FATAL_ERROR "Accelerate library not found")
endif()

find_package (Eigen3 3.3 REQUIRED NO_MODULE)
target_link_libraries(
	${PROJECT_NAME} PUBLIC
	Eigen3::Eigen
)

if(APPLE)
	target_link_libraries(
		${PROJECT_NAME} PRIVATE
		"-framework Accelerate"
	)
endif()


target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_17)