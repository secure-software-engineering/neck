set(NECK_SCENARIOS
  not-in-main.c
  nested-loop.c
  cycle-from-neck-succ.c
  early-exit-from-case.c
)

foreach(EG ${NECK_SCENARIOS})
  get_filename_component(SRC_FILE ${EG} NAME)
  generate_ll_file(FILE ${SRC_FILE} DEBUG)
endforeach(EG)
