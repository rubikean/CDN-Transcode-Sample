cmake_minimum_required (VERSION 2.8)

Project(OVC NONE)

if (NOT DEFINED NVODS)
    set(NVODS "2")
endif()
if (NOT DEFINED NLIVES)
    set(NLIVES "1")
endif()

file(GLOB dirs "deployment" "*")
list(REMOVE_DUPLICATES dirs)
foreach(dir ${dirs})
    if(EXISTS ${dir}/CMakeLists.txt)
        add_subdirectory(${dir})
    endif()
endforeach()

# legal message
execute_process(COMMAND printf "\nThis script will build third party components licensed under various open source licenses into your container images. The terms under which those components may be used and distributed can be found with the license document that is provided with those components. Please familiarize yourself with those terms to ensure your distribution of those components complies with the terms of those licenses.\n\n")
execute_process(COMMAND printf "\n-- Setting: NVODS=${NVODS}, NLIVES=${NLIVES}\n")
