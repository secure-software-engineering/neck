file(GLOB_RECURSE CONFIG_SRC *.h *.cpp)

if(BUILD_SHARED_LIBS)
  add_library(neckid_config
    SHARED
    ${CONFIG_SRC}
  )
else()
  add_library(neckid_config
    STATIC
    ${CONFIG_SRC}
  )
endif()

target_link_libraries(neckid_config
  LINK_PUBLIC
)

set_target_properties(neckid_config
  PROPERTIES
  LINKER_LANGUAGE CXX
  PREFIX "lib"
)

install(TARGETS neckid_config
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib
)
