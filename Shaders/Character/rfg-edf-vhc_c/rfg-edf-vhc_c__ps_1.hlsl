cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
};

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
    float4 cb2_m[6] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float3 _86 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _86.x, _86.y, _86.z);
    float4 _95 = r0;
    _95.y = r0.y + r0.y;
    r0 = _95;
    float4 _102 = r1;
    _102.x = r1.w * r1.y;
    r1 = _102;
    float4 _114 = r0;
    _114.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _114;
    float4 _118 = r0;
    _118.x = r1.x;
    r0 = _118;
    float4 _126 = r0;
    _126.w = (-r0.w) + asfloat(1065353216u);
    r0 = _126;
    float4 _133 = r0;
    _133.w = max(r0.w, asfloat(0u));
    r0 = _133;
    float4 _138 = r0;
    _138.z = sqrt(r0.w);
    r0 = _138;
    float3 _145 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_145.x, _145.y, _145.z, r0.w);
    float3 _161 = (cb2_m[5].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_161.x, _161.y, _161.z, r0.w);
    float4 _177 = r0;
    _177.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _177;
    float4 _182 = r0;
    _182.w = rsqrt(r0.w);
    r0 = _182;
    float3 _188 = r0.www * r0.xyz;
    r0 = float4(_188.x, _188.y, _188.z, r0.w);
    float4 _207 = r0;
    _207.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _207;
    float4 _212 = r0;
    _212.w = rsqrt(r0.w);
    r0 = _212;
    float3 _219 = r0.www * shader_in[3].xyz;
    r1 = float4(_219.x, _219.y, _219.z, r1.w);
    float4 _238 = r0;
    _238.w = clamp(mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x)), 0.0f, 1.0f);
    r0 = _238;
    float4 _245 = r0;
    _245.w = r0.w * r0.w;
    r0 = _245;
    float4 _252 = r0;
    _252.w = r0.w * r0.w;
    r0 = _252;
    float4 _259 = r0;
    _259.w = r0.w * r0.w;
    r0 = _259;
    r2 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[5].xyxx.xy);
    float4 _275 = r0;
    _275.w = r0.w * r2.y;
    r0 = _275;
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[1].xyxx.xy);
    float4 _291 = r1;
    _291.w = (-r2.w) + asfloat(1065353216u);
    r1 = _291;
    float4 _298 = r0;
    _298.w = r0.w * r1.w;
    r0 = _298;
    float4 _316 = r1;
    _316.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _316;
    float4 _322 = r3;
    _322.x = rsqrt(r1.w);
    r3 = _322;
    float4 _327 = r1;
    _327.w = sqrt(r1.w);
    r1 = _327;
    float4 _341 = r1;
    _341.w = clamp(((-r1.w) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _341;
    float3 _348 = r3.xxx * shader_in[2].xyz;
    r3 = float4(_348.x, _348.y, _348.z, r3.w);
    float4 _364 = r1;
    _364.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r1 = _364;
    float4 _372 = r4;
    _372.x = r1.x * asfloat(1077936128u);
    r4 = _372;
    float2 _382 = (r1.xx * asfloat(uint2(1077936128u, 1077936128u))) + asfloat(uint2(1065353216u, 3212836864u));
    r4 = float4(r4.x, _382.x, _382.y, r4.w);
    float3 _392 = clamp(abs(r4.xyz) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u)), 0.0f.xxx, 1.0f.xxx);
    r1 = float4(_392.x, _392.y, _392.z, r1.w);
    float3 _402 = (r1.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u))) + asfloat(uint3(0u, 1065353216u, 1065353216u));
    r1 = float4(_402.x, _402.y, _402.z, r1.w);
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[5].zwzz.xy);
    float3 _417 = r1.xyz * r4.xyz;
    r1 = float4(_417.x, _417.y, _417.z, r1.w);
    float3 _430 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_430.x, _430.y, _430.z, r4.w);
    float3 _446 = (float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z) * r1.xxx) + r4.xyz;
    r4 = float4(_446.x, _446.y, _446.z, r4.w);
    float3 _462 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r1.zzz) + r4.xyz;
    r1 = float4(_462.x, _462.y, _462.z, r1.w);
    float3 _469 = r0.www * r1.xyz;
    r1 = float4(_469.x, _469.y, _469.z, r1.w);
    float3 _474 = -r3.xyz;
    float4 _488 = r0;
    _488.w = mad(_474.z, shader_in[4].xyz.z, mad(_474.y, shader_in[4].xyz.y, _474.x * shader_in[4].xyz.x));
    r0 = _488;
    float4 _504 = r0;
    _504.x = clamp(mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x)), 0.0f, 1.0f);
    r0 = _504;
    float4 _512 = r0;
    _512.y = min(r0.w, cb1_m[2].x);
    r0 = _512;
    float4 _521 = r0;
    _521.y = r0.y + (-cb1_m[2].y);
    r0 = _521;
    float4 _527 = r0;
    _527.y = max(r0.y, asfloat(0u));
    r0 = _527;
    float4 _535 = r0;
    _535.y = r0.y * cb1_m[2].z;
    r0 = _535;
    float4 _546 = r0;
    _546.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _546;
    float4 _556 = r0;
    _556.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _556;
    float4 _563 = r0;
    _563.y = r0.y * r1.w;
    r0 = _563;
    float3 _569 = r0.yyy * r1.xyz;
    r1 = float4(_569.x, _569.y, _569.z, r1.w);
    float4 _577 = r0;
    _577.x = r0.y * r0.x;
    r0 = _577;
    float2 _589 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r0 = float4(r0.x, _589.x, _589.y, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r0.yzyy.xy);
    float4 _604 = r0;
    _604.y = max(r3.y, asfloat(1028443341u));
    r0 = _604;
    float3 _610 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _610.x, _610.y, _610.z);
    float4 _619 = r1;
    _619.x = r2.w * cb2_m[4].w;
    r1 = _619;
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float3 _643 = ((-r4.xyz) * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z)) + r2.xyz;
    r1 = float4(r1.x, _643.x, _643.y, _643.z);
    float3 _656 = r4.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_656.x, _656.y, _656.z, r2.w);
    float3 _666 = (r1.xxx * r1.yzw) + r2.xyz;
    r1 = float4(_666.x, _666.y, _666.z, r1.w);
    float3 _673 = r0.xxx * r1.xyz;
    r1 = float4(_673.x, _673.y, _673.z, r1.w);
    float3 _683 = (r1.xyz * r3.yyy) + r0.yzw;
    r0 = float4(_683.x, _683.y, _683.z, r0.w);
    float3 _696 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_696.x, _696.y, _696.z, r0.w);
    float4 _705 = r0;
    _705.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _705;
    float3 _711 = r0.xyz * r0.www;
    r4 = float4(_711.x, _711.y, _711.z, r4.w);
    o0 = r4 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _744 = gl_FragCoord;
    _744.w = 1.0f / _744.w;
    shader_in[0] = float4(_744.xy.x, _744.xy.y, shader_in[0].z, shader_in[0].w);
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
