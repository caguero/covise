MACRO(USE_VISIONARAY)
    if(COVISE_USE_VISIONARAY)
        IF(NOT VISIONARAY_USED)
            using_message("Using Visionaray")

            set(VISIONARAY_INCLUDE_DIR "${COVISEDIR}/src/3rdparty/visionaray/include")
            if(BUILD_SHARED_LIBS)
                set(VISIONARAY_LIBRARY "${COVISEDIR}/${ARCHSUFFIX}/lib/libvisionaray${CMAKE_SHARED_LIBRARY_SUFFIX}")
            else()
                set(VISIONARAY_LIBRARY "${COVISEDIR}/${ARCHSUFFIX}/lib/libvisionaray${CMAKE_STATIC_LIBRARY_SUFFIX}")
            endif()

            covise_find_package(OpenGL REQUIRED)

            if(COVISE_USE_CUDA)
                covise_find_package(CUDA)
            endif()

            if(NOT APPLE AND NOT WIN32)
                covise_find_package(PTHREAD REQUIRED)
            endif()

            USE_GLEW()
            USE_BOOST()
            include_directories(${OPENGL_INCLUDE_DIR})
            include_directories(${VISIONARAY_INCLUDE_DIR})

            set(EXTRA_LIBS
                ${EXTRA_LIBS}
                ${VISIONARAY_LIBRARY}
            )

            if (NOT APPLE AND NOT WIN32)
                include_directories(${PTHREAD_INCLUDE_DIR})
                set(EXTRA_LIBS
                    ${EXTRA_LIBS}
                    ${PTHREAD_LIBRARY}
                )
            endif()

            if(COVISE_USE_CUDA AND CUDA_FOUND)
                include_directories(${CUDA_INCLUDE_DIRS})
                set(EXTRA_LIBS ${EXTRA_LIBS} ${CUDA_LIBRARIES})
            endif()

            SET(VISIONARAY_USED TRUE)
        ENDIF(NOT VISIONARAY_USED)
    else()
        if (NOT "${opt}" STREQUAL "optional")
            return()
        endif()

    endif()
ENDMACRO(USE_VISIONARAY)
