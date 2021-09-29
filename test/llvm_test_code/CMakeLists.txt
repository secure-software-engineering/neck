add_custom_target(NeckIDLLFileGeneration ALL)

subdirlist(subdirs ${CMAKE_CURRENT_SOURCE_DIR})
foreach(subdir ${subdirs})
  add_subdirectory(${subdir})
endforeach(subdir)
