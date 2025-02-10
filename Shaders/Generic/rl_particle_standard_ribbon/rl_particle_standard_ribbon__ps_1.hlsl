cbuffer cb3_t : register(b3)
{
    float4 cb3_m[8] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

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
    float3 _62 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _73 = r1;
    _73.x = mad(r0.xyz.z, _62.z, mad(r0.xyz.y, _62.y, r0.xyz.x * _62.x));
    r1 = _73;
    float3 _80 = r0.xyz + (-r1.xxx);
    r1 = float4(r1.x, _80.x, _80.y, _80.z);
    float3 _91 = (shader_in[3].zzz * r1.yzw) + r1.xxx;
    r1 = float4(_91.x, _91.y, _91.z, r1.w);
    float3 _109 = float3(cb3_m[5].x, cb3_m[5].y, cb3_m[5].z);
    float4 _120 = r2;
    _120.x = mad(r1.xyz.z, _109.z, mad(r1.xyz.y, _109.y, r1.xyz.x * _109.x));
    r2 = _120;
    float3 _132 = float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    float4 _142 = r2;
    _142.y = mad(r1.xyz.z, _132.z, mad(r1.xyz.y, _132.y, r1.xyz.x * _132.x));
    r2 = _142;
    float3 _154 = float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z);
    float4 _164 = r2;
    _164.z = mad(r1.xyz.z, _154.z, mad(r1.xyz.y, _154.y, r1.xyz.x * _154.x));
    r2 = _164;
    float3 _170 = max(r2.xyz, asfloat(uint3(0u, 0u, 0u)));
    r0 = float4(_170.x, _170.y, _170.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    r1 = ((-shader_in[1]) * r0) + r1;
    r0 *= shader_in[1];
    r0 = (shader_in[2].xxxx * r1) + r0;
    r0 *= float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float3 _224 = clamp(r0.www * r0.xyz, 0.0f.xxx, 1.0f.xxx);
    o0 = float4(_224.x, _224.y, _224.z, o0.w);
    float4 _238 = o0;
    _238.w = clamp((shader_in[3].w * (-r0.w)) + r0.w, 0.0f, 1.0f);
    o0 = _238;
}

void frag_main()
{
    shader_in[1] = v1;
    float4 _245 = shader_in[2];
    _245.x = v2;
    shader_in[2] = _245;
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
