cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _79 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _79.x, _79.y, _79.z);
    float4 _88 = r0;
    _88.y = r0.y + r0.y;
    r0 = _88;
    float4 _95 = r1;
    _95.x = r1.w * r1.y;
    r1 = _95;
    float4 _107 = r0;
    _107.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _107;
    float4 _111 = r0;
    _111.x = r1.x;
    r0 = _111;
    float4 _119 = r0;
    _119.w = (-r0.w) + asfloat(1065353216u);
    r0 = _119;
    float4 _126 = r0;
    _126.w = max(r0.w, asfloat(0u));
    r0 = _126;
    float4 _131 = r0;
    _131.z = sqrt(r0.w);
    r0 = _131;
    float3 _138 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_138.x, _138.y, _138.z, r0.w);
    float3 _153 = (cb2_m[1].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_153.x, _153.y, _153.z, r0.w);
    float4 _169 = r0;
    _169.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _169;
    float4 _174 = r0;
    _174.w = rsqrt(r0.w);
    r0 = _174;
    float3 _180 = r0.www * r0.xyz;
    r0 = float4(_180.x, _180.y, _180.z, r0.w);
    float4 _199 = r0;
    _199.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _199;
    float4 _204 = r0;
    _204.w = rsqrt(r0.w);
    r0 = _204;
    float3 _211 = r0.www * shader_in[2].xyz;
    r1 = float4(_211.x, _211.y, _211.z, r1.w);
    float4 _227 = r0;
    _227.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _227;
    float4 _233 = r0;
    _233.x = max(r0.x, asfloat(0u));
    r0 = _233;
    float3 _245 = r0.xxx * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_245.x, _245.y, _245.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _266 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_266.x, _266.y, _266.z, r1.w);
    float3 _273 = r0.xyz * r1.xyz;
    r0 = float4(_273.x, _273.y, _273.z, r0.w);
    float3 _290 = ((-float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z)) * r1.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_290.x, _290.y, _290.z, r1.w);
    float3 _297 = (-r1.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_297.x, _297.y, _297.z, r1.w);
    float2 _311 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_311.x, _311.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float3 _329 = (r0.xyz * r2.yyy) + r1.xyz;
    r0 = float4(_329.x, _329.y, _329.z, r0.w);
    float4 _339 = r0;
    _339.w = (-shader_in[5].w) + asfloat(1065353216u);
    r0 = _339;
    float3 _345 = r0.xyz * r0.www;
    r0 = float4(_345.x, _345.y, _345.z, r0.w);
    float3 _363 = (shader_in[5].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_363.x, _363.y, _363.z, r0.w);
    float4 _382 = r1;
    _382.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _382;
    float4 _387 = r1;
    _387.x = rsqrt(r1.x);
    r1 = _387;
    float4 _395 = r1;
    _395.x = r1.x * shader_in[3].z;
    r1 = _395;
    float4 _410 = r1;
    _410.x = clamp((r1.x * shader_in[4].x) + shader_in[4].y, 0.0f, 1.0f);
    r1 = _410;
    float4 _425 = r1;
    _425.y = clamp((abs(shader_in[3].w) * shader_in[4].z) + shader_in[4].w, 0.0f, 1.0f);
    r1 = _425;
    float4 _432 = r1;
    _432.y = (-r1.y) + asfloat(1065353216u);
    r1 = _432;
    float4 _439 = r1;
    _439.x = r1.y * r1.x;
    r1 = _439;
    float4 _446 = r0;
    _446.w = r1.x * r1.w;
    r0 = _446;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _476 = gl_FragCoord;
    _476.w = 1.0f / _476.w;
    shader_in[0] = float4(_476.xy.x, _476.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
