    cmake_minimum_required(VERSION 2.8.2)
    project(ProjectName)

    find_package(library)

    include_directories(${library_INCLUDE_DIRS})

    add_subdirectory(src)

    add_executable(ProjectName)

    target_link_libraries(ProjectName ${library_LIBRARIES})
