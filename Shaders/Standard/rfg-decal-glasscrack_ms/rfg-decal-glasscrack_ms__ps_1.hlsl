cbuffer cb1_t : register(b1)
{
    float4 cb1_m[3] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float2 v6;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float2 v6 : TEXCOORD6;
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _69 = r0;
    _69.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _69;
    float4 _74 = r0;
    _74.y = rsqrt(r0.x);
    r0 = _74;
    float4 _79 = r0;
    _79.x = sqrt(r0.x);
    r0 = _79;
    float4 _99 = r0;
    _99.x = clamp(((-r0.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _99;
    float3 _106 = r0.yyy * shader_in[1].xyz;
    r0 = float4(r0.x, _106.x, _106.y, _106.z);
    float3 _111 = -r0.yzw;
    float4 _126 = r1;
    _126.x = mad(_111.z, shader_in[5].xyz.z, mad(_111.y, shader_in[5].xyz.y, _111.x * shader_in[5].xyz.x));
    r1 = _126;
    float4 _135 = r1;
    _135.x = min(r1.x, cb1_m[2].x);
    r1 = _135;
    float4 _144 = r1;
    _144.x = r1.x + (-cb1_m[2].y);
    r1 = _144;
    float4 _150 = r1;
    _150.x = max(r1.x, asfloat(0u));
    r1 = _150;
    float4 _159 = r1;
    _159.x = r1.x * cb1_m[2].z;
    r1 = _159;
    float4 _170 = r1;
    _170.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _170;
    float4 _181 = r1;
    _181.x = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r1 = _181;
    float4 _188 = r0;
    _188.x = r0.x * r1.x;
    r0 = _188;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[6].xyxx.xy);
    float3 _210 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _210.x, _210.y, _210.z);
    float4 _219 = r1;
    _219.y = r1.y + r1.y;
    r1 = _219;
    float4 _226 = r2;
    _226.x = r2.w * r2.y;
    r2 = _226;
    float4 _238 = r1;
    _238.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r1 = _238;
    float4 _242 = r1;
    _242.x = r2.x;
    r1 = _242;
    float4 _249 = r1;
    _249.w = (-r1.w) + asfloat(1065353216u);
    r1 = _249;
    float4 _255 = r1;
    _255.w = max(r1.w, asfloat(0u));
    r1 = _255;
    float4 _260 = r1;
    _260.z = sqrt(r1.w);
    r1 = _260;
    float3 _267 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_267.x, _267.y, _267.z, r1.w);
    float3 _279 = (cb2_m[2].w.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_279.x, _279.y, _279.z, r1.w);
    float4 _295 = r1;
    _295.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _295;
    float4 _300 = r1;
    _300.w = rsqrt(r1.w);
    r1 = _300;
    float3 _306 = r1.www * r1.xyz;
    r1 = float4(_306.x, _306.y, _306.z, r1.w);
    float4 _323 = r0;
    _323.y = clamp(mad(r1.xyz.z, r0.yzw.z, mad(r1.xyz.y, r0.yzw.y, r1.xyz.x * r0.yzw.x)), 0.0f, 1.0f);
    r0 = _323;
    float4 _330 = r0;
    _330.x = r0.x * r0.y;
    r0 = _330;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[6].xyxx.xy);
    float3 _350 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _350.x, _350.y, _350.z);
    float3 _357 = r0.yzw * r0.xxx;
    r0 = float4(_357.x, _357.y, _357.z, r0.w);
    float3 _370 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_370.x, _370.y, _370.z, r0.w);
    float4 _388 = r1;
    _388.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _388;
    float4 _393 = r1;
    _393.x = rsqrt(r1.x);
    r1 = _393;
    float4 _401 = r1;
    _401.x = r1.x * shader_in[2].z;
    r1 = _401;
    float4 _415 = r1;
    _415.x = clamp((r1.x * shader_in[3].x) + shader_in[3].y, 0.0f, 1.0f);
    r1 = _415;
    float4 _430 = r1;
    _430.y = clamp((abs(shader_in[2].w) * shader_in[3].z) + shader_in[3].w, 0.0f, 1.0f);
    r1 = _430;
    float4 _437 = r1;
    _437.y = (-r1.y) + asfloat(1065353216u);
    r1 = _437;
    float4 _444 = r0;
    _444.w = r1.y * r1.x;
    r0 = _444;
    r0 *= shader_in[4];
    float4 _457 = r1;
    _457.x = (-shader_in[5].w) + asfloat(1065353216u);
    r1 = _457;
    float3 _463 = r0.xyz * r1.xxx;
    r0 = float4(_463.x, _463.y, _463.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, shader_in[6].z, shader_in[6].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    frag_main();
}
