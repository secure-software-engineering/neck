add_executable(constantconv
  constantconv.cpp
)

target_link_libraries(constantconv
  LINK_PUBLIC
  phasar_config
  phasar_utils
  phasar_pointer
  phasar_typehierarchy
  phasar_controlflow
  phasar_phasarllvm_utils
  phasar_db
  phasar_ifdside
)

if(USE_LLVM_FAT_LIB)
  llvm_config(constantconv USE_SHARED ${LLVM_LINK_COMPONENTS})
else()
  llvm_config(constantconv ${LLVM_LINK_COMPONENTS})
endif()
