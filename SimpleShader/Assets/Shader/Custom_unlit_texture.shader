Shader "Custom/Unlit_texture" {
	Properties {
		_Color("Main Color",Color) = (1,1,1,1)
		_MainTexture("Main Texture",2D) = "white"{}
	}

	SubShader{
		PASS{
				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag

				fixed4 _Color;

				struct appDataIn {
					float4 vertex : POSITION;
				};

				struct appDataOut {
					float4 pos : SV_POSITION;
				};

				appDataOut vert(appDataIn v)  {
					appDataOut o;
					o.pos = mul(UNITY_MATRIX_MVP,v.vertex);
					return o;
				}

				fixed4 frag(appDataOut o) : COLOR {
					return _Color;
				}
				ENDCG
			}
	}
}