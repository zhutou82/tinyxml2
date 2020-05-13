--
-- Requires: Premake 5 (https://premake.github.io/)
-- Usage: premake5 --file=premake5.lua [project / makefile format, refer to premake5 --help] --target=[target from below]
--
-- projects
project "tinyxml2"
	language "C++"
	kind "staticlib"

	files {
		"tinyxml2.h",
		"tinyxml2.cpp"
	}

	filter "configurations:Debug"
		runtime "Debug"
        buildoptions "/MTd"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
        buildoptions "/MT"
		optimize "on"
