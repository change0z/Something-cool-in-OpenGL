cmake_minimum_required(VERSION 3.10)
project(OpenGLTest)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find required packages
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
find_package(glfw3 REQUIRED)

# Create executable
add_executable(test_opengl test-opengl.cpp)

# Link libraries
target_link_libraries(test_opengl
    OpenGL::GL
    GLEW::GLEW
    glfw
)