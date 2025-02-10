cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[7] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;

static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void ps_main()
{
    float4 _73 = r0;
    _73.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _73;
    float4 _83 = r0;
    _83.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _83;
    float4 _93 = r0;
    _93.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _93;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float4 _117 = r1;
    _117.y = r0.y + r0.y;
    r1 = _117;
    float3 _129 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _129.x, _129.y, _129.z);
    float4 _137 = r0;
    _137.x = r0.w * r0.y;
    r0 = _137;
    float4 _149 = r0;
    _149.y = mad(r0.xz.y, r0.xz.y, r0.xz.x * r0.xz.x);
    r0 = _149;
    float4 _156 = r0;
    _156.y = (-r0.y) + asfloat(1065353216u);
    r0 = _156;
    float4 _162 = r0;
    _162.y = max(r0.y, asfloat(0u));
    r0 = _162;
    float4 _167 = r1;
    _167.z = sqrt(r0.y);
    r1 = _167;
    float4 _171 = r1;
    _171.x = r0.x;
    r1 = _171;
    float3 _178 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_178.x, _178.y, _178.z, r0.w);
    float3 _191 = (cb2_m[5].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_191.x, _191.y, _191.z, r0.w);
    float4 _207 = r0;
    _207.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _207;
    float4 _212 = r0;
    _212.w = rsqrt(r0.w);
    r0 = _212;
    float3 _218 = r0.www * r0.xyz;
    r0 = float4(_218.x, _218.y, _218.z, r0.w);
    float4 _237 = r0;
    _237.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _237;
    float4 _242 = r0;
    _242.w = rsqrt(r0.w);
    r0 = _242;
    float3 _249 = r0.www * shader_in[2].xyz;
    r1 = float4(_249.x, _249.y, _249.z, r1.w);
    float4 _268 = r0;
    _268.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _268;
    float4 _273 = r0;
    _273.w = rsqrt(r0.w);
    r0 = _273;
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float4 _308 = r1;
    _308.w = r4.w * cb2_m[4].z;
    r1 = _308;
    r5 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[1].xyxx.xy);
    float4 _325 = r2;
    _325.w = r5.w * cb2_m[3].x;
    r2 = _325;
    float3 _335 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r6 = float4(_335.x, _335.y, _335.z, r6.w);
    float4 _352 = r0;
    _352.w = mad(r6.xyz.z, r6.xyz.z, mad(r6.xyz.y, r6.xyz.y, r6.xyz.x * r6.xyz.x));
    r0 = _352;
    float4 _357 = r0;
    _357.w = rsqrt(r0.w);
    r0 = _357;
    float3 _363 = r0.www * r6.xyz;
    r6 = float4(_363.x, _363.y, _363.z, r6.w);
    float4 _382 = r0;
    _382.w = clamp(mad(r0.xyz.z, r6.xyz.z, mad(r0.xyz.y, r6.xyz.y, r0.xyz.x * r6.xyz.x)), 0.0f, 1.0f);
    r0 = _382;
    float4 _387 = r0;
    _387.w = log2(r0.w);
    r0 = _387;
    float4 _396 = r6;
    _396.x = r0.w * cb2_m[6].x;
    r6 = _396;
    float4 _404 = r6;
    _404.y = r0.w * cb2_m[5].y;
    r6 = _404;
    float4 _413 = r6;
    _413.z = r0.w * cb2_m[4].w;
    r6 = _413;
    float3 _417 = exp2(r6.zxy);
    r6 = float4(_417.x, _417.y, _417.z, r6.w);
    float2 _428 = r6.yz * float2(cb2_m[5].w, cb2_m[5].x);
    r6 = float4(r6.x, _428.x, _428.y, r6.w);
    float4 _445 = r0;
    _445.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _445;
    float4 _452 = r0;
    _452.x = r0.x + asfloat(925353388u);
    r0 = _452;
    float3 _464 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _464.x, _464.y, _464.z);
    float4 _474 = r1;
    _474.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _474;
    float4 _481 = r1;
    _481.x = r1.x * r6.x;
    r1 = _481;
    float4 _488 = r1;
    _488.x = r1.x / r0.x;
    r1 = _488;
    float4 _494 = r1;
    _494.x = r1.x + asfloat(3212836864u);
    r1 = _494;
    float4 _503 = r1;
    _503.x = (r3.w * r1.x) + asfloat(1065353216u);
    r1 = _503;
    float3 _509 = r0.yzw * r1.xxx;
    r2 = float4(_509.x, _509.y, _509.z, r2.w);
    float3 _520 = ((-r1.xxx) * r0.yzw) + r4.xyz;
    r0 = float4(r0.x, _520.x, _520.y, _520.z);
    float3 _530 = (r1.www * r0.yzw) + r2.xyz;
    r0 = float4(r0.x, _530.x, _530.y, _530.z);
    float3 _538 = (-r0.yzw) + r5.xyz;
    r1 = float4(_538.x, _538.y, _538.z, r1.w);
    float3 _548 = (r2.www * r1.xyz) + r0.yzw;
    r0 = float4(r0.x, _548.x, _548.y, _548.z);
    float3 _556 = r4.xyz + (-r5.xyz);
    r1 = float4(_556.x, _556.y, _556.z, r1.w);
    float4 _565 = r2;
    _565.x = (-cb2_m[3].y) + asfloat(1065353216u);
    r2 = _565;
    float4 _572 = r2;
    _572.x = r1.w * r2.x;
    r2 = _572;
    float4 _579 = r2;
    _579.x = r2.w * r2.x;
    r2 = _579;
    float3 _588 = (r2.xxx * r1.xyz) + r0.yzw;
    r0 = float4(r0.x, _588.x, _588.y, _588.z);
    float3 _601 = r6.yyy * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r1 = float4(_601.x, _601.y, _601.z, r1.w);
    float4 _613 = r2;
    _613.x = ((-r4.w) * cb2_m[4].z) + asfloat(1065353216u);
    r2 = _613;
    float4 _623 = r1;
    _623.w = (r2.w * r2.x) + r1.w;
    r1 = _623;
    float4 _630 = r1;
    _630.w = (-r1.w) + asfloat(1065353216u);
    r1 = _630;
    float3 _646 = (r6.zzz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + (-r1.xyz);
    r2 = float4(_646.x, _646.y, _646.z, r2.w);
    float3 _656 = (r3.www * r2.xyz) + r1.xyz;
    r1 = float4(_656.x, _656.y, _656.z, r1.w);
    float3 _663 = r3.xyz * r1.xyz;
    r1 = float4(_663.x, _663.y, _663.z, r1.w);
    float3 _670 = r1.www * r1.xyz;
    r1 = float4(_670.x, _670.y, _670.z, r1.w);
    float3 _680 = (r0.yzw * r0.xxx) + r1.xyz;
    r0 = float4(_680.x, _680.y, _680.z, r0.w);
    float3 _693 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_693.x, _693.y, _693.z, o0.w);
    float4 _697 = o0;
    _697.w = asfloat(1065353216u);
    o0 = _697;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
