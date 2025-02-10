cbuffer cb0_t : register(b0)
{
    float4 cb0_m[8] : packoffset(c0);
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
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float4 gl_FragCoord;
static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float3 v6;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[6].xyxx.xy);
    float3 _81 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _81.x, _81.y, _81.z);
    float4 _90 = r0;
    _90.y = r0.y + r0.y;
    r0 = _90;
    float4 _97 = r1;
    _97.x = r1.w * r1.y;
    r1 = _97;
    float4 _109 = r0;
    _109.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _109;
    float4 _113 = r0;
    _113.x = r1.x;
    r0 = _113;
    float4 _121 = r0;
    _121.w = (-r0.w) + asfloat(1065353216u);
    r0 = _121;
    float4 _128 = r0;
    _128.w = max(r0.w, asfloat(0u));
    r0 = _128;
    float4 _133 = r0;
    _133.z = sqrt(r0.w);
    r0 = _133;
    float3 _140 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_140.x, _140.y, _140.z, r0.w);
    float3 _156 = (cb2_m[2].y.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_156.x, _156.y, _156.z, r0.w);
    float4 _172 = r0;
    _172.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _172;
    float4 _177 = r0;
    _177.w = rsqrt(r0.w);
    r0 = _177;
    float3 _183 = r0.www * r0.xyz;
    r0 = float4(_183.x, _183.y, _183.z, r0.w);
    float4 _201 = r0;
    _201.w = mad(r0.xyz.z, shader_in[5].xyz.z, mad(r0.xyz.y, shader_in[5].xyz.y, r0.xyz.x * shader_in[5].xyz.x));
    r0 = _201;
    float4 _210 = r1;
    _210.x = abs(r0.w) + abs(r0.w);
    r1 = _210;
    float4 _222 = r0;
    _222.w = clamp((r0.w * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _222;
    float4 _232 = r1;
    _232.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _232;
    float4 _238 = r1;
    _238.x = max(r1.x, asfloat(0u));
    r1 = _238;
    float4 _247 = r1;
    _247.x = r1.x * cb0_m[7].y;
    r1 = _247;
    float3 _268 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _268.x, _268.y, _268.z);
    float3 _284 = (r0.www * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _284.x, _284.y, _284.z);
    float3 _303 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-r1.yzw);
    r2 = float4(_303.x, _303.y, _303.z, r2.w);
    float3 _314 = (r1.xxx * r2.xyz) + r1.yzw;
    r1 = float4(_314.x, _314.y, _314.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[6].xyxx.xy);
    float3 _335 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_335.x, _335.y, _335.z, r2.w);
    float3 _342 = r1.xyz * r2.xyz;
    r1 = float4(_342.x, _342.y, _342.z, r1.w);
    float2 _354 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_354.x, _354.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float3 _369 = r1.xyz * r3.xxx;
    r1 = float4(_369.x, _369.y, _369.z, r1.w);
    float4 _388 = r0;
    _388.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _388;
    float4 _393 = r0;
    _393.w = rsqrt(r0.w);
    r0 = _393;
    float3 _400 = r0.www * shader_in[1].xyz;
    r3 = float4(_400.x, r3.y, _400.y, _400.z);
    float4 _417 = r0;
    _417.x = clamp(mad(r0.xyz.z, r3.xzw.z, mad(r0.xyz.y, r3.xzw.y, r0.xyz.x * r3.xzw.x)), 0.0f, 1.0f);
    r0 = _417;
    float4 _424 = r0;
    _424.x = r3.y * r0.x;
    r0 = _424;
    float3 _430 = r2.xyz * r0.xxx;
    r0 = float4(_430.x, _430.y, _430.z, r0.w);
    float3 _446 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r0 = float4(_446.x, _446.y, _446.z, r0.w);
    float4 _456 = r0;
    _456.w = shader_in[6].z / cb2_m[2].x;
    r0 = _456;
    float4 _464 = r0;
    _464.w = clamp((-r0.w) + asfloat(1065353216u), 0.0f, 1.0f);
    r0 = _464;
    float4 _471 = r0;
    _471.w = r0.w * r0.w;
    r0 = _471;
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[6].xyxx.xy);
    float3 _485 = r0.www * r1.xyz;
    r1 = float4(_485.x, _485.y, _485.z, r1.w);
    float3 _501 = (r1.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + r0.xyz;
    r0 = float4(_501.x, _501.y, _501.z, r0.w);
    float4 _519 = r1;
    _519.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _519;
    float4 _524 = r1;
    _524.x = rsqrt(r1.x);
    r1 = _524;
    float4 _532 = r1;
    _532.x = r1.x * shader_in[2].z;
    r1 = _532;
    float4 _545 = r1;
    _545.x = clamp((r1.x * shader_in[3].x) + shader_in[3].y, 0.0f, 1.0f);
    r1 = _545;
    float4 _560 = r1;
    _560.y = clamp((abs(shader_in[2].w) * shader_in[3].z) + shader_in[3].w, 0.0f, 1.0f);
    r1 = _560;
    float4 _567 = r1;
    _567.y = (-r1.y) + asfloat(1065353216u);
    r1 = _567;
    float4 _574 = r1;
    _574.x = r1.y * r1.x;
    r1 = _574;
    float4 _581 = r0;
    _581.w = r1.x * r2.w;
    r0 = _581;
    r0 *= shader_in[4];
    float4 _594 = r1;
    _594.x = (-shader_in[5].w) + asfloat(1065353216u);
    r1 = _594;
    float3 _600 = r0.xyz * r1.xxx;
    r1 = float4(_600.x, _600.y, _600.z, r1.w);
    float3 _617 = (shader_in[5].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xyz;
    r0 = float4(_617.x, _617.y, _617.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    float4 _650 = gl_FragCoord;
    _650.w = 1.0f / _650.w;
    shader_in[0] = float4(_650.xy.x, _650.xy.y, shader_in[0].z, shader_in[0].w);
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
    v6 = stage_input.v6;
    frag_main();
}
