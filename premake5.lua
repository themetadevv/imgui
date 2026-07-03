project "imgui"
	kind "StaticLib"
	language "C++"
    cppdialect "C++23"
	systemversion "latest"
	staticruntime "Off" 

	targetdir ("bin/build/%{cfg.system}_%{cfg.buildcfg}")
    objdir ("bin/intermediates/%{cfg.system}")

	-- add required files
	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
        "ImGuizmo.h",
        "ImGuizmo.cpp",
    
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp"
	}

    includedirs {
        "%{prj.location}/"
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		optimize "off"

	filter "configurations:Release"
		runtime "Release"
		symbols "off"
		optimize "on"
