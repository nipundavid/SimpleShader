﻿Shader "ShaderTutorial/MyShader_" {
	Properties {
		_Color ("Color",Color) = (1.0,1.0,1.0,1.0)
		_WaveScale ("Wave scale", Range (0.02,0.15)) = 0.07 // sliders
	    _ReflDistort ("Reflection distort", Range (0,1.5)) = 0.5
	    _RefrDistort ("Refraction distort", Range (0,1.5)) = 0.4
	    _RefrColor ("Refraction color", Color) = (.34, .85, .92, 1) // color
	    _ReflectionTex ("Environment Reflection", 2D) = "" {} // textures
	    _RefractionTex ("Environment Refraction", 2D) = "" {}
	    _Fresnel ("Fresnel (A) ", 2D) = "" {}
	    _BumpMap ("Bumpmap (RGB) ", 2D) = "" {}
	}
}