add_library(date INTERFACE EXCLUDE_FROM_ALL)
target_compile_features(date INTERFACE cxx_std_17)
target_compile_definitions(date INTERFACE LIBRARY_HEADER_ONLY)
target_include_directories(date SYSTEM INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/date/include)

function(link_date target MOD)
    target_link_libraries(${target} ${MOD} date)
endfunction()
