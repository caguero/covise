
SET(HEADERS
  
)

SET(SOURCES
  ReadNas.cpp
)

SET(EXTRASOURCES
  ReadNas.h
)

USE_VTK(OPTIONAL)
ADD_COVISE_MODULE(IO ReadNas ${EXTRASOURCES} )
TARGET_LINK_LIBRARIES(ReadNas  coAlg coApi coAppl coCore )

COVISE_INSTALL_TARGET(ReadNas)
