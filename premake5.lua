workspace "AOC"
	configurations {"Debug", "Release" }
	location "AOC/AOC-2015"
	
project "AOC-2015"

	kind "ConsoleApp"
	language"C++"
	targetdir "bin/%{cfg.buildcfg}"
	
	files {"src/**.h", "src/**.cpp"}
	
	filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"

	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"