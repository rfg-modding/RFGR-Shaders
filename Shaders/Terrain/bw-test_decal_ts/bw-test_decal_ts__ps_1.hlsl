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
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float3 v3;
static float4 v4;
static float4 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _67 = r0;
    _67.x = mad(shader_in[5].xyz.z, shader_in[5].xyz.z, mad(shader_in[5].xyz.y, shader_in[5].xyz.y, shader_in[5].xyz.x * shader_in[5].xyz.x));
    r0 = _67;
    float4 _72 = r0;
    _72.y = rsqrt(r0.x);
    r0 = _72;
    float4 _77 = r0;
    _77.x = sqrt(r0.x);
    r0 = _77;
    float4 _98 = r0;
    _98.x = clamp(((-r0.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _98;
    float3 _105 = r0.yyy * shader_in[5].xyz;
    r0 = float4(r0.x, _105.x, _105.y, _105.z);
    float3 _110 = -r0.yzw;
    float4 _125 = r1;
    _125.x = mad(_110.z, shader_in[4].xyz.z, mad(_110.y, shader_in[4].xyz.y, _110.x * shader_in[4].xyz.x));
    r1 = _125;
    float4 _134 = r1;
    _134.x = min(r1.x, cb1_m[2].x);
    r1 = _134;
    float4 _143 = r1;
    _143.x = r1.x + (-cb1_m[2].y);
    r1 = _143;
    float4 _149 = r1;
    _149.x = max(r1.x, asfloat(0u));
    r1 = _149;
    float4 _158 = r1;
    _158.x = r1.x * cb1_m[2].z;
    r1 = _158;
    float4 _169 = r1;
    _169.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _169;
    float4 _180 = r1;
    _180.x = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r1 = _180;
    float4 _187 = r0;
    _187.x = r0.x * r1.x;
    r0 = _187;
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
    float3 _279 = (cb2_m[2].y.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    float4 _367 = r0;
    _367.w = shader_in[6].z / cb2_m[2].x;
    r0 = _367;
    float4 _375 = r0;
    _375.w = clamp((-r0.w) + asfloat(1065353216u), 0.0f, 1.0f);
    r0 = _375;
    float4 _382 = r0;
    _382.w = r0.w * r0.w;
    r0 = _382;
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[6].xyxx.xy);
    float3 _396 = r0.www * r1.xyz;
    r1 = float4(_396.x, _396.y, _396.z, r1.w);
    float3 _409 = r1.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_409.x, _409.y, _409.z, r1.w);
    float3 _425 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r0 = float4(_425.x, _425.y, _425.z, r0.w);
    float3 _434 = r0.xyz * shader_in[3].xyz;
    r0 = float4(_434.x, _434.y, _434.z, r0.w);
    float4 _443 = r0;
    _443.w = (-shader_in[5].w) + asfloat(1065353216u);
    r0 = _443;
    float3 _449 = r0.xyz * r0.www;
    r0 = float4(_449.x, _449.y, _449.z, r0.w);
    float4 _455 = r0;
    _455.w = shader_in[4].w;
    r0 = _455;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    frag_main();
}
