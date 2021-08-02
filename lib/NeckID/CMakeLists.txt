file(GLOB_RECURSE CONFIG_SRC *.h *.cpp)

if(BUILD_SHARED_LIBS)
  add_library(neckid_neckid
    SHARED
    ${CONFIG_SRC}
  )
else()
  add_library(neckid_neckid
    STATIC
    ${CONFIG_SRC}
  )
endif()

target_link_libraries(neckid_neckid
  LINK_PUBLIC
)

set_target_properties(neckid_neckid
  PROPERTIES
  LINKER_LANGUAGE CXX
  PREFIX "lib"
)

install(TARGETS neckid_neckid
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib
)
