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

uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    float2 _76 = shader_in[4].xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(_76.x, _76.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt3s3, r0.xyxx.xy);
    float3 _98 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _98.x, _98.y, _98.z);
    float4 _107 = r0;
    _107.y = r0.y + r0.y;
    r0 = _107;
    float4 _114 = r1;
    _114.x = r1.w * r1.y;
    r1 = _114;
    float4 _126 = r0;
    _126.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _126;
    float4 _130 = r0;
    _130.x = r1.x;
    r0 = _130;
    float4 _138 = r0;
    _138.w = (-r0.w) + asfloat(1065353216u);
    r0 = _138;
    float4 _145 = r0;
    _145.w = max(r0.w, asfloat(0u));
    r0 = _145;
    float4 _150 = r0;
    _150.z = sqrt(r0.w);
    r0 = _150;
    float3 _157 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_157.x, _157.y, _157.z, r0.w);
    float3 _169 = (cb2_m[2].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_169.x, _169.y, _169.z, r0.w);
    float4 _185 = r0;
    _185.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _185;
    float4 _190 = r0;
    _190.w = rsqrt(r0.w);
    r0 = _190;
    float3 _196 = r0.www * r0.xyz;
    r0 = float4(_196.x, _196.y, _196.z, r0.w);
    float4 _214 = r0;
    _214.w = mad(r0.xyz.z, shader_in[3].xyz.z, mad(r0.xyz.y, shader_in[3].xyz.y, r0.xyz.x * shader_in[3].xyz.x));
    r0 = _214;
    float4 _223 = r1;
    _223.x = abs(r0.w) + abs(r0.w);
    r1 = _223;
    float4 _235 = r0;
    _235.w = clamp((r0.w * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _235;
    float4 _245 = r1;
    _245.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _245;
    float4 _251 = r1;
    _251.x = max(r1.x, asfloat(0u));
    r1 = _251;
    float4 _260 = r1;
    _260.x = r1.x * cb0_m[7].y;
    r1 = _260;
    float3 _279 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _279.x, _279.y, _279.z);
    float3 _295 = (r0.www * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _295.x, _295.y, _295.z);
    float3 _314 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-r1.yzw);
    r2 = float4(_314.x, _314.y, _314.z, r2.w);
    float3 _325 = (r1.xxx * r2.xyz) + r1.yzw;
    r1 = float4(_325.x, _325.y, _325.z, r1.w);
    float3 _334 = (-r1.xyz) + asfloat(uint3(1082130432u, 1082130432u, 1082130432u));
    r2 = float4(_334.x, _334.y, _334.z, r2.w);
    float3 _346 = (cb2_m[2].w.xxx * r2.xyz) + r1.xyz;
    r1 = float4(_346.x, _346.y, _346.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].zwzz.xy);
    float4 _364 = r0;
    _364.w = r2.w * cb2_m[1].x;
    r0 = _364;
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _385 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r4 = float4(_385.x, _385.y, _385.z, r4.w);
    float3 _403 = ((-r3.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r2.xyz;
    r2 = float4(_403.x, _403.y, _403.z, r2.w);
    float3 _413 = (r0.www * r2.xyz) + r4.xyz;
    r2 = float4(_413.x, _413.y, _413.z, r2.w);
    r4 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _429 = (-r2.xyz) + r4.xyz;
    r4 = float4(_429.x, _429.y, _429.z, r4.w);
    float4 _438 = r0;
    _438.w = r4.w * cb2_m[1].w;
    r0 = _438;
    float3 _447 = (r0.www * r4.xyz) + r2.xyz;
    r2 = float4(_447.x, _447.y, _447.z, r2.w);
    float3 _454 = r1.xyz * r2.xyz;
    r1 = float4(_454.x, _454.y, _454.z, r1.w);
    float2 _467 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r4 = float4(_467.x, _467.y, r4.z, r4.w);
    r4 = tex2D(SPIRV_Cross_Combinedt15s15, r4.xyxx.xy);
    float3 _481 = r1.xyz * r4.xxx;
    r1 = float4(_481.x, _481.y, _481.z, r1.w);
    float4 _499 = r0;
    _499.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _499;
    float4 _504 = r0;
    _504.w = rsqrt(r0.w);
    r0 = _504;
    float3 _511 = r0.www * shader_in[2].xyz;
    r4 = float4(_511.x, r4.y, _511.y, _511.z);
    float4 _528 = r0;
    _528.x = clamp(mad(r0.xyz.z, r4.xzw.z, mad(r0.xyz.y, r4.xzw.y, r0.xyz.x * r4.xzw.x)), 0.0f, 1.0f);
    r0 = _528;
    float4 _535 = r0;
    _535.x = r4.y * r0.x;
    r0 = _535;
    float3 _541 = r2.xyz * r0.xxx;
    r0 = float4(_541.x, _541.y, _541.z, r0.w);
    float3 _557 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r0 = float4(_557.x, _557.y, _557.z, r0.w);
    float4 _566 = r0;
    _566.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _566;
    float3 _572 = r0.xyz * r0.www;
    r0 = float4(_572.x, _572.y, _572.z, r0.w);
    float3 _589 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r3 = float4(_589.x, _589.y, _589.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _618 = gl_FragCoord;
    _618.w = 1.0f / _618.w;
    shader_in[0] = float4(_618.xy.x, _618.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
