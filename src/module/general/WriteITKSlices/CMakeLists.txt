USING(ITK)

SET(HEADERS
  
)

SET(SOURCES
  WriteITKSlices.cpp
)

SET(EXTRASOURCES
  WriteITKSlices.h
)

ADD_COVISE_MODULE(IO WriteITKSlices ${EXTRASOURCES} )
TARGET_LINK_LIBRARIES(WriteITKSlices coApi coAppl coCore ${ITK_LIBRARIES})

COVISE_INSTALL_TARGET(WriteITKSlices)
