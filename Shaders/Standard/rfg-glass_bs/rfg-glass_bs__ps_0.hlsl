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

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

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

void ps_main()
{
    float4 _72 = r0;
    _72.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _72;
    float4 _77 = r0;
    _77.x = rsqrt(r0.x);
    r0 = _77;
    float4 _95 = r0;
    _95.y = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _95;
    float4 _100 = r0;
    _100.y = rsqrt(r0.y);
    r0 = _100;
    float3 _107 = r0.yyy * shader_in[2].xyz;
    r0 = float4(r0.x, _107.x, _107.y, _107.z);
    float3 _118 = (shader_in[3].xyz * r0.xxx) + r0.yzw;
    r1 = float4(_118.x, _118.y, _118.z, r1.w);
    float4 _137 = r0;
    _137.x = mad(shader_in[4].xyz.z, r0.yzw.z, mad(shader_in[4].xyz.y, r0.yzw.y, shader_in[4].xyz.x * r0.yzw.x));
    r0 = _137;
    float4 _146 = r0;
    _146.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _146;
    float4 _161 = r0;
    _161.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _161;
    float4 _166 = r0;
    _166.y = rsqrt(r0.y);
    r0 = _166;
    float3 _172 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _172.x, _172.y, _172.z);
    float4 _190 = r1;
    _190.x = mad(shader_in[4].xyz.z, shader_in[4].xyz.z, mad(shader_in[4].xyz.y, shader_in[4].xyz.y, shader_in[4].xyz.x * shader_in[4].xyz.x));
    r1 = _190;
    float4 _195 = r1;
    _195.x = rsqrt(r1.x);
    r1 = _195;
    float3 _202 = r1.xxx * shader_in[4].xyz;
    r1 = float4(_202.x, _202.y, _202.z, r1.w);
    float4 _218 = r0;
    _218.y = mad(r1.xyz.z, r0.yzw.z, mad(r1.xyz.y, r0.yzw.y, r1.xyz.x * r0.yzw.x));
    r0 = _218;
    float4 _225 = r0;
    _225.y = max(r0.y, asfloat(0u));
    r0 = _225;
    float4 _230 = r0;
    _230.y = log2(r0.y);
    r0 = _230;
    float4 _241 = r0;
    _241.z = cb2_m[2].w + asfloat(925353388u);
    r0 = _241;
    float4 _248 = r0;
    _248.y = r0.y * r0.z;
    r0 = _248;
    float4 _253 = r0;
    _253.y = exp2(r0.y);
    r0 = _253;
    float4 _261 = r0;
    _261.y = r0.y * cb2_m[2].x;
    r0 = _261;
    float2 _274 = shader_in[1].xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(r0.x, r0.y, _274.x, _274.y);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, r0.zwzz.xy);
    float3 _295 = r1.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_295.x, _295.y, _295.z, r1.w);
    float3 _302 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _302.x, _302.y, _302.z);
    float3 _315 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _315.x, _315.y, _315.z);
    float4 _326 = r1;
    _326.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _326;
    float4 _335 = r1;
    _335.x = abs(r1.x) + abs(r1.x);
    r1 = _335;
    float4 _346 = r1;
    _346.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _346;
    float4 _352 = r1;
    _352.x = max(r1.x, asfloat(0u));
    r1 = _352;
    float4 _361 = r1;
    _361.x = r1.x * cb0_m[7].y;
    r1 = _361;
    float3 _385 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _385.x, _385.y, _385.z);
    float3 _401 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _401.x, _401.y, _401.z);
    float3 _415 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(_415.x, _415.y, _415.z, r2.w);
    float3 _426 = (r1.xxx * r2.xyz) + r1.yzw;
    r1 = float4(_426.x, _426.y, _426.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _447 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_447.x, _447.y, _447.z, r3.w);
    float3 _458 = (r1.xyz * r3.xyz) + r0.yzw;
    r0 = float4(_458.x, _458.y, _458.z, r0.w);
    float4 _467 = r0;
    _467.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _467;
    float3 _473 = r0.xyz * r0.www;
    r0 = float4(_473.x, _473.y, _473.z, r0.w);
    float3 _490 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r2 = float4(_490.x, _490.y, _490.z, r2.w);
    r0 = r2 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _509 = o0;
    _509.w = min(r0.w, asfloat(1065353216u));
    o0 = _509;
    o0 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o0.w);
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
