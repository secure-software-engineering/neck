set(EXAMPLES
  neck-same-level.c
)

foreach(EG ${EXAMPLES})
  get_filename_component(SRC_FILE ${EG} NAME)
  generate_ll_file(FILE ${SRC_FILE} DEBUG)
endforeach(EG)
