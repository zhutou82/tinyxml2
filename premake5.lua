project "tinyxml2"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"tinyxml2.h",
		"tinyxml2.cpp"
	}

	filter "system:windows"
		systemversion "10.0.14393.0"
		staticruntime "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
