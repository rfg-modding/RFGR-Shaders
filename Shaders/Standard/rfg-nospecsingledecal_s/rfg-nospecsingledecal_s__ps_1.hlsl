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
static float4 r3;

void ps_main()
{
    float4 _66 = r0;
    _66.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _66;
    float4 _71 = r0;
    _71.y = rsqrt(r0.x);
    r0 = _71;
    float4 _76 = r0;
    _76.x = sqrt(r0.x);
    r0 = _76;
    float4 _96 = r0;
    _96.x = clamp(((-r0.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _96;
    float3 _103 = r0.yyy * shader_in[1].xyz;
    r0 = float4(r0.x, _103.x, _103.y, _103.z);
    float3 _108 = -r0.yzw;
    float4 _123 = r1;
    _123.x = mad(_108.z, shader_in[2].xyz.z, mad(_108.y, shader_in[2].xyz.y, _108.x * shader_in[2].xyz.x));
    r1 = _123;
    float4 _131 = r1;
    _131.x = min(r1.x, cb1_m[2].x);
    r1 = _131;
    float4 _140 = r1;
    _140.x = r1.x + (-cb1_m[2].y);
    r1 = _140;
    float4 _146 = r1;
    _146.x = max(r1.x, asfloat(0u));
    r1 = _146;
    float4 _155 = r1;
    _155.x = r1.x * cb1_m[2].z;
    r1 = _155;
    float4 _166 = r1;
    _166.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _166;
    float4 _177 = r1;
    _177.x = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r1 = _177;
    float4 _184 = r0;
    _184.x = r0.x * r1.x;
    r0 = _184;
    float3 _198 = shader_in[3].xyy * float3(cb2_m[2].z, cb2_m[2].w, cb2_m[2].x);
    r1 = float4(_198.x, _198.y, r1.z, _198.z);
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, r1.xyxx.xy);
    float3 _221 = (r2.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(r3.x, _221.x, _221.y, _221.z);
    float4 _230 = r2;
    _230.y = r2.y + r2.y;
    r2 = _230;
    float4 _237 = r3;
    _237.x = r3.w * r3.y;
    r3 = _237;
    float4 _249 = r1;
    _249.x = mad(r3.xz.y, r3.xz.y, r3.xz.x * r3.xz.x);
    r1 = _249;
    float4 _253 = r2;
    _253.x = r3.x;
    r2 = _253;
    float4 _260 = r1;
    _260.x = (-r1.x) + asfloat(1065353216u);
    r1 = _260;
    float4 _266 = r1;
    _266.x = max(r1.x, asfloat(0u));
    r1 = _266;
    float4 _271 = r2;
    _271.z = sqrt(r1.x);
    r2 = _271;
    float3 _278 = r2.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r2 = float4(_278.x, _278.y, _278.z, r2.w);
    float3 _290 = (cb2_m[2].y.xxx * r2.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r2 = float4(_290.x, _290.y, _290.z, r2.w);
    float4 _306 = r1;
    _306.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _306;
    float4 _311 = r1;
    _311.x = rsqrt(r1.x);
    r1 = _311;
    float3 _317 = r1.xxx * r2.xyz;
    r2 = float4(_317.x, _317.y, _317.z, r2.w);
    float4 _334 = r0;
    _334.y = clamp(mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x)), 0.0f, 1.0f);
    r0 = _334;
    float4 _341 = r0;
    _341.x = r0.x * r0.y;
    r0 = _341;
    float4 _350 = r1;
    _350.z = shader_in[3].x * cb2_m[1].w;
    r1 = _350;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float3 _369 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _369.x, _369.y, _369.z);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[3].zwzz.xy);
    float3 _394 = ((-r1.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r2.xyz;
    r1 = float4(_394.x, _394.y, _394.z, r1.w);
    float4 _403 = r1;
    _403.w = r2.w * cb2_m[1].x;
    r1 = _403;
    float3 _412 = (r1.www * r1.xyz) + r0.yzw;
    r0 = float4(r0.x, _412.x, _412.y, _412.z);
    float3 _419 = r0.yzw * r0.xxx;
    r0 = float4(_419.x, _419.y, _419.z, r0.w);
    float3 _432 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_432.x, _432.y, _432.z, r0.w);
    float4 _441 = r0;
    _441.w = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _441;
    float3 _447 = r0.xyz * r0.www;
    r0 = float4(_447.x, _447.y, _447.z, r0.w);
    float4 _451 = r0;
    _451.w = asfloat(1065353216u);
    r0 = _451;
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
