cbuffer cb3_t : register(b3)
{
    float4 cb3_m[10] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float4 v1;
static float4 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[3].xyxx.xy);
    float3 _61 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _72 = r1;
    _72.x = mad(r0.xyz.z, _61.z, mad(r0.xyz.y, _61.y, r0.xyz.x * _61.x));
    r1 = _72;
    float3 _79 = r0.xyz + (-r1.xxx);
    r1 = float4(r1.x, _79.x, _79.y, _79.z);
    float3 _90 = (shader_in[3].zzz * r1.yzw) + r1.xxx;
    r1 = float4(_90.x, _90.y, _90.z, r1.w);
    float3 _108 = float3(cb3_m[5].x, cb3_m[5].y, cb3_m[5].z);
    float4 _119 = r2;
    _119.x = mad(r1.xyz.z, _108.z, mad(r1.xyz.y, _108.y, r1.xyz.x * _108.x));
    r2 = _119;
    float3 _131 = float3(cb3_m[6].x, cb3_m[6].y, cb3_m[6].z);
    float4 _141 = r2;
    _141.y = mad(r1.xyz.z, _131.z, mad(r1.xyz.y, _131.y, r1.xyz.x * _131.x));
    r2 = _141;
    float3 _153 = float3(cb3_m[7].x, cb3_m[7].y, cb3_m[7].z);
    float4 _163 = r2;
    _163.z = mad(r1.xyz.z, _153.z, mad(r1.xyz.y, _153.y, r1.xyz.x * _153.x));
    r2 = _163;
    float3 _169 = max(r2.xyz, asfloat(uint3(0u, 0u, 0u)));
    r0 = float4(_169.x, _169.y, _169.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, asfloat(uint4(1056964608u, 1056964608u, 0u, 0u)).xy);
    float3 _193 = float3(cb3_m[9].x, cb3_m[9].y, cb3_m[9].z);
    float4 _206 = r2;
    _206.x = clamp(mad(shader_in[2].xyz.z, _193.z, mad(shader_in[2].xyz.y, _193.y, shader_in[2].xyz.x * _193.x)), 0.0f, 1.0f);
    r2 = _206;
    float3 _224 = (r2.xxx * float3(cb3_m[8].x, cb3_m[8].y, cb3_m[8].z)) + shader_in[1].xyz;
    r2 = float4(_224.x, _224.y, _224.z, r2.w);
    float4 _230 = r2;
    _230.w = shader_in[1].w;
    r2 = _230;
    r1 = ((-r2) * r0) + r1;
    r0 *= r2;
    r0 = (shader_in[3].wwww * r1) + r0;
    r0 *= float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float3 _268 = clamp(r0.www * r0.xyz, 0.0f.xxx, 1.0f.xxx);
    o0 = float4(_268.x, _268.y, _268.z, o0.w);
    float4 _282 = o0;
    _282.w = clamp((shader_in[2].w * (-r0.w)) + r0.w, 0.0f, 1.0f);
    o0 = _282;
}

void frag_main()
{
    shader_in[1] = v1;
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
