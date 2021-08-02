add_executable(neck
  neck.cpp
)

target_link_libraries(neck
  LINK_PUBLIC
  neckid_config
  neckid_neckid
  ${Boost_LIBRARIES}
)

if(USE_LLVM_FAT_LIB)
  llvm_config(neck USE_SHARED ${LLVM_LINK_COMPONENTS})
else()
  llvm_config(neck ${LLVM_LINK_COMPONENTS})
endif()
