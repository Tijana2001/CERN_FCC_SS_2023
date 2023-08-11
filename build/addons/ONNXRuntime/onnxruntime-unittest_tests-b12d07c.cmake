add_test( UT_flavtagging /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/build/addons/ONNXRuntime/onnxruntime-unittest flavtagging  )
set_tests_properties( UT_flavtagging PROPERTIES WORKING_DIRECTORY /afs/cern.ch/user/t/tcvijeti/tt/FCCAnalyses/addons/ONNXRuntime)
set( onnxruntime-unittest_TESTS UT_flavtagging)
