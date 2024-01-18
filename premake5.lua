workspace "src"
    configurations { "Debug", "Release" }

project "Dummy"
    location "src"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"

    files { "src/**.cpp" }

    filter "configuration:Debug"
        define { "DEBUG" }
        symbols "On"

    filter "configuration:Release"
        define { "NDEBUG" }
        optimize "On"