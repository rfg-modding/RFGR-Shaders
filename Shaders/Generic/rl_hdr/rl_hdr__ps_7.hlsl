cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt6s6;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt6s6, shader_in[1].xyxx.xy);
    float3 _68 = (r0.xyz * r1.www) + r1.xyz;
    r0 = float4(_68.x, _68.y, _68.z, r0.w);
    float3 _76 = asfloat(uint3(1050253722u, 1058474557u, 1038174126u));
    float4 _88 = r0;
    _88.w = mad(_76.z, r0.xyz.z, mad(_76.y, r0.xyz.y, _76.x * r0.xyz.x));
    r0 = _88;
    float3 _95 = (-r0.www) + r0.xyz;
    r0 = float4(_95.x, _95.y, _95.z, r0.w);
    float3 _111 = (cb0_m[0].x.xxx * r0.xyz) + r0.www;
    r0 = float4(_111.x, _111.y, _111.z, r0.w);
    float3 _125 = r0.xyz * float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    r0 = float4(_125.x, _125.y, _125.z, r0.w);
    float4 _129 = r0;
    _129.w = asfloat(0u);
    r0 = _129;
    r1 = r0 + (-float4(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z, cb0_m[4].w));
    o0 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o0.w);
    float4 _164 = r0;
    _164.x = mad(r1.w, r1.w, mad(r1.z, r1.z, mad(r1.y, r1.y, r1.x * r1.x)));
    r0 = _164;
    float4 _174 = r0;
    _174.x = asfloat((r0.x == asfloat(0u)) ? 0u : 4294967295u);
    r0 = _174;
    float4 _182 = o0;
    _182.w = asfloat(asuint(r0.x) & 1065353216u);
    o0 = _182;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
