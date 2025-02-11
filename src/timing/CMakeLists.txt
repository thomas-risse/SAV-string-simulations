cmake_minimum_required(VERSION 3.19)
set(PROJECT_NAME timeCubicString)
project(${PROJECT_NAME})

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

find_package (Eigen3 3.3 REQUIRED NO_MODULE)
target_link_libraries(
	${PROJECT_NAME} PUBLIC
	Eigen3::Eigen
)

target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_17)