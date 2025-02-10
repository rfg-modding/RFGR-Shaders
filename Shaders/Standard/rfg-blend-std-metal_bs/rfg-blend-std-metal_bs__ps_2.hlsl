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
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;
static float3 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    float4 _67 = r0;
    _67.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _67;
    float4 _77 = r0;
    _77.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _77;
    float4 _87 = r0;
    _87.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _87;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _110 = r1;
    _110.y = r0.y + r0.y;
    r1 = _110;
    float3 _122 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _122.x, _122.y, _122.z);
    float4 _130 = r0;
    _130.x = r0.w * r0.y;
    r0 = _130;
    float4 _142 = r0;
    _142.y = mad(r0.xz.y, r0.xz.y, r0.xz.x * r0.xz.x);
    r0 = _142;
    float4 _149 = r0;
    _149.y = (-r0.y) + asfloat(1065353216u);
    r0 = _149;
    float4 _155 = r0;
    _155.y = max(r0.y, asfloat(0u));
    r0 = _155;
    float4 _160 = r1;
    _160.z = sqrt(r0.y);
    r1 = _160;
    float4 _164 = r1;
    _164.x = r0.x;
    r1 = _164;
    float3 _171 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_171.x, _171.y, _171.z, r0.w);
    float3 _184 = (cb2_m[4].y.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_184.x, _184.y, _184.z, r0.w);
    float4 _200 = r0;
    _200.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _200;
    float4 _205 = r0;
    _205.w = rsqrt(r0.w);
    r0 = _205;
    float3 _211 = r0.www * r0.xyz;
    r0 = float4(_211.x, _211.y, _211.z, r0.w);
    float4 _230 = r0;
    _230.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _230;
    float4 _235 = r0;
    _235.w = rsqrt(r0.w);
    r0 = _235;
    float3 _242 = r0.www * shader_in[2].xyz;
    r1 = float4(_242.x, _242.y, _242.z, r1.w);
    float4 _261 = r0;
    _261.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _261;
    float4 _266 = r0;
    _266.w = rsqrt(r0.w);
    r0 = _266;
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _294 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r4 = float4(_294.x, _294.y, _294.z, r4.w);
    float4 _311 = r0;
    _311.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _311;
    float4 _316 = r0;
    _316.w = rsqrt(r0.w);
    r0 = _316;
    float3 _322 = r0.www * r4.xyz;
    r4 = float4(_322.x, _322.y, _322.z, r4.w);
    float4 _341 = r0;
    _341.w = clamp(mad(r0.xyz.z, r4.xyz.z, mad(r0.xyz.y, r4.xyz.y, r0.xyz.x * r4.xyz.x)), 0.0f, 1.0f);
    r0 = _341;
    float4 _346 = r0;
    _346.w = log2(r0.w);
    r0 = _346;
    float2 _357 = r0.ww * float2(cb2_m[4].w, cb2_m[4].x);
    r4 = float4(_357.x, _357.y, r4.z, r4.w);
    float4 _366 = r4;
    _366.z = r0.w * cb2_m[3].z;
    r4 = _366;
    float3 _370 = exp2(r4.zxy);
    r4 = float4(_370.x, _370.y, _370.z, r4.w);
    float4 _379 = r0;
    _379.w = r4.y * cb2_m[4].z;
    r0 = _379;
    float4 _387 = r1;
    _387.w = r4.z * cb2_m[3].w;
    r1 = _387;
    float4 _403 = r0;
    _403.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _403;
    float3 _415 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_415.x, _415.y, _415.z, r1.w);
    float4 _427 = r0;
    _427.y = (r4.x * r0.x) + (-r0.x);
    r0 = _427;
    float4 _437 = r0;
    _437.x = (r3.w * r0.y) + r0.x;
    r0 = _437;
    float3 _449 = r0.www * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r0 = float4(r0.x, _449.x, _449.y, _449.z);
    float3 _466 = (r1.www * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + (-r0.yzw);
    r2 = float4(_466.x, _466.y, _466.z, r2.w);
    float3 _476 = (r3.www * r2.xyz) + r0.yzw;
    r0 = float4(r0.x, _476.x, _476.y, _476.z);
    float3 _483 = r3.xyz * r0.yzw;
    r0 = float4(r0.x, _483.x, _483.y, _483.z);
    float3 _493 = (r0.xxx * r1.xyz) + r0.yzw;
    r0 = float4(_493.x, _493.y, _493.z, r0.w);
    float3 _506 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_506.x, _506.y, _506.z, o0.w);
    float4 _510 = o0;
    _510.w = asfloat(1065353216u);
    o0 = _510;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
