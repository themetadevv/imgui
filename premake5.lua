-- docking branch

imgui_prj_output_dir = ("bin/imgui/builds")
imgui_prj_intermediates_dir = ("bin/imgui/intermediates")

project "imgui"
	kind "StaticLib"
	language "C++"
    cppdialect "C++20"
	systemversion "latest"
	staticruntime "Off" 

	targetdir (imgui_prj_output_dir .. "/%{cfg.system}_%{cfg.buildcfg}")
    objdir (imgui_prj_intermediates_dir .. "/%{cfg.system}")

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
		"ImGuizmo.cpp"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		optimize "off"

	filter "configurations:Release"
		runtime "Release"
		symbols "off"
		optimize "on"
