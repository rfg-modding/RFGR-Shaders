cbuffer cb3_t : register(b3)
{
    float4 cb3_m[8] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 v1;
static float v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[3].xyxx.xy);
    float3 _60 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _71 = r1;
    _71.x = mad(r0.xyz.z, _60.z, mad(r0.xyz.y, _60.y, r0.xyz.x * _60.x));
    r1 = _71;
    float3 _78 = r0.xyz + (-r1.xxx);
    r1 = float4(r1.x, _78.x, _78.y, _78.z);
    float3 _89 = (shader_in[3].zzz * r1.yzw) + r1.xxx;
    r1 = float4(_89.x, _89.y, _89.z, r1.w);
    float3 _107 = float3(cb3_m[5].x, cb3_m[5].y, cb3_m[5].z);
    float4 _118 = r2;
    _118.x = mad(r1.xyz.z, _107.z, mad(r1.xyz.y, _107.y, r1.xyz.x * _107.x));
    r2 = _118;
    float3 _130 = float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    float4 _140 = r2;
    _140.y = mad(r1.xyz.z, _130.z, mad(r1.xyz.y, _130.y, r1.xyz.x * _130.x));
    r2 = _140;
    float3 _152 = float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z);
    float4 _162 = r2;
    _162.z = mad(r1.xyz.z, _152.z, mad(r1.xyz.y, _152.y, r1.xyz.x * _152.x));
    r2 = _162;
    float3 _168 = max(r2.xyz, asfloat(uint3(0u, 0u, 0u)));
    r0 = float4(_168.x, _168.y, _168.z, r0.w);
    r0 *= shader_in[1];
    float4 _184 = r1;
    _184.x = (-shader_in[2].x) + asfloat(1065353216u);
    r1 = _184;
    float3 _190 = r0.xyz * r1.xxx;
    r0 = float4(_190.x, _190.y, _190.z, r0.w);
    r0 *= float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float3 _215 = clamp(r0.www * r0.xyz, 0.0f.xxx, 1.0f.xxx);
    o0 = float4(_215.x, _215.y, _215.z, o0.w);
    float4 _229 = o0;
    _229.w = clamp((shader_in[3].w * (-r0.w)) + r0.w, 0.0f, 1.0f);
    o0 = _229;
}

void frag_main()
{
    shader_in[1] = v1;
    float4 _236 = shader_in[2];
    _236.x = v2;
    shader_in[2] = _236;
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
