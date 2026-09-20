file(REMOVE_RECURSE
  "MyQmlApp/main.qml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/appQtQmlApp_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
