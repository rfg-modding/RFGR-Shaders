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
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float3 v1;
static float4 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

static float4 shader_in[4];
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
    _126.x = mad(_111.z, shader_in[2].xyz.z, mad(_111.y, shader_in[2].xyz.y, _111.x * shader_in[2].xyz.x));
    r1 = _126;
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
    float2 _200 = shader_in[3].xy * float2(cb2_m[3].y, cb2_m[3].z);
    r1 = float4(_200.x, _200.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt3s3, r1.xyxx.xy);
    float3 _221 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _221.x, _221.y, _221.z);
    float4 _230 = r1;
    _230.y = r1.y + r1.y;
    r1 = _230;
    float4 _237 = r2;
    _237.x = r2.w * r2.y;
    r2 = _237;
    float4 _249 = r1;
    _249.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r1 = _249;
    float4 _253 = r1;
    _253.x = r2.x;
    r1 = _253;
    float4 _260 = r1;
    _260.w = (-r1.w) + asfloat(1065353216u);
    r1 = _260;
    float4 _266 = r1;
    _266.w = max(r1.w, asfloat(0u));
    r1 = _266;
    float4 _271 = r1;
    _271.z = sqrt(r1.w);
    r1 = _271;
    float3 _278 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float3 _290 = (cb2_m[3].x.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_290.x, _290.y, _290.z, r1.w);
    float4 _306 = r1;
    _306.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _306;
    float4 _311 = r1;
    _311.w = rsqrt(r1.w);
    r1 = _311;
    float3 _317 = r1.www * r1.xyz;
    r1 = float4(_317.x, _317.y, _317.z, r1.w);
    float4 _334 = r0;
    _334.y = clamp(mad(r1.xyz.z, r0.yzw.z, mad(r1.xyz.y, r0.yzw.y, r1.xyz.x * r0.yzw.x)), 0.0f, 1.0f);
    r0 = _334;
    float4 _341 = r0;
    _341.x = r0.x * r0.y;
    r0 = _341;
    float2 _353 = shader_in[3].zw + float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, _353.x, _353.y, r0.w);
    float2 _362 = r0.yz + asfloat(uint2(3204448256u, 3204448256u));
    r0 = float4(r0.x, _362.x, _362.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, r0.yzyy.xy);
    float2 _378 = trunc(float2(cb2_m[2].y, cb2_m[2].x));
    r2 = float4(_378.x, _378.y, r2.z, r2.w);
    float4 _385 = r2;
    _385.z = trunc(cb2_m[1].w);
    r2 = _385;
    float4 _400 = r0;
    _400.y = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _400;
    float4 _406 = r0;
    _406.y = min(r0.y, asfloat(1065353216u));
    r0 = _406;
    float2 _417 = shader_in[3].xy * float2(cb2_m[2].z, cb2_m[2].w);
    r0 = float4(r0.x, r0.y, _417.x, _417.y);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, r0.zwzz.xy);
    float3 _448 = (r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + (-r2.xyz);
    r1 = float4(_448.x, _448.y, _448.z, r1.w);
    float3 _458 = (r0.yyy * r1.xyz) + r2.xyz;
    r0 = float4(r0.x, _458.x, _458.y, _458.z);
    float3 _465 = r0.yzw * r0.xxx;
    r0 = float4(_465.x, _465.y, _465.z, r0.w);
    float3 _478 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_478.x, _478.y, _478.z, r0.w);
    float4 _487 = r0;
    _487.w = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _487;
    float3 _493 = r0.xyz * r0.www;
    r0 = float4(_493.x, _493.y, _493.z, r0.w);
    float4 _497 = r0;
    _497.w = asfloat(1065353216u);
    r0 = _497;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
