add_library(HelperFunctions HelperFunctions.cc)

install(TARGETS HelperFunctions DESTINATION bin)
install(FILES HelperFunctions.h DESTINATION include)

