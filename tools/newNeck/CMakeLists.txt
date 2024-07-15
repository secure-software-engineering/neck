add_executable(newNeck
  newNeck.cpp
)

target_link_libraries(newNeck
  LINK_PUBLIC
  phasar_config
  phasar_utils
  phasar_pointer
  phasar_llvm_typehierarchy
  phasar_controlflow
  phasar_llvm_utils
  phasar_db
  phasar_llvm_ifdside 
  neckid_neckid
  ${Boost_LIBRARIES}
)

if(USE_LLVM_FAT_LIB)
  llvm_config(newNeck USE_SHARED ${LLVM_LINK_COMPONENTS})
else()
  llvm_config(newNeck ${LLVM_LINK_COMPONENTS})
endif()
