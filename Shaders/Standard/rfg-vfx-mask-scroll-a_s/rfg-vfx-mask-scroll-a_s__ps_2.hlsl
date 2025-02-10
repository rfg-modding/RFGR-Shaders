cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float2 _63 = (float2(cb2_m[1].x, cb2_m[1].y) * cb6_m[0].w.xx) + shader_in[2].xy;
    r0 = float4(_63.x, _63.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float3 _86 = (r0.zyx * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_86.x, _86.y, _86.z, r0.w);
    float2 _95 = (-r0.xy) + shader_in[1].xy;
    r1 = float4(_95.x, _95.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, r1.xyxx.xy);
    r2 = r1 * float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float2 _129 = (r0.zy * asfloat(uint2(1036831949u, 1036831949u))) + shader_in[2].zw;
    r0 = float4(_129.x, _129.y, r0.z, r0.w);
    float4 _138 = r0;
    _138.z = cb6_m[0].w * asfloat(1132068864u);
    r0 = _138;
    float2 _149 = (cb6_m[0].w.xx * asfloat(uint2(1073741824u, 0u))) + r0.xy;
    r0 = float4(_149.x, _149.y, r0.z, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, r0.xyxx.xy);
    r3 *= float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _176 = r0;
    _176.x = sin(r0.zzzz.x);
    r0 = _176;
    float4 _183 = r0;
    _183.x = r0.x + asfloat(1065353216u);
    r0 = _183;
    float4 _193 = r0;
    _193.x = (r0.x * asfloat(1041865114u)) + asfloat(1060320051u);
    r0 = _193;
    float4 _200 = r0;
    _200.y = r0.x * r2.w;
    r0 = _200;
    float4 _207 = r0;
    _207.z = r0.x * r3.w;
    r0 = _207;
    float4 _217 = r0;
    _217.x = (r2.w * r0.x) + r0.z;
    r0 = _217;
    float4 _227 = r0;
    _227.x = (r0.y * r0.z) + r0.x;
    r0 = _227;
    float4 _234 = r0;
    _234.x = r0.w * r0.x;
    r0 = _234;
    float4 _246 = r0;
    _246.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _246;
    float4 _256 = r0;
    _256.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _256;
    float4 _266 = r0;
    _266.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _266;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _287 = (r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r3.xyz;
    r0 = float4(r0.x, _287.x, _287.y, _287.z);
    float3 _294 = r2.xyz * r3.xyz;
    r1 = float4(_294.x, _294.y, _294.z, r1.w);
    float3 _305 = (r1.xyz * asfloat(uint3(1084227584u, 1084227584u, 1084227584u))) + r0.yzw;
    r0 = float4(r0.x, _305.x, _305.y, _305.z);
    float3 _314 = r0.yzw * cb2_m[1].z.xxx;
    r0 = float4(r0.x, _314.x, _314.y, _314.z);
    float3 _322 = r0.yzw * asfloat(uint3(1120403456u, 1120403456u, 1120403456u));
    o0 = float4(_322.x, _322.y, _322.z, o0.w);
    float4 _327 = o0;
    _327.w = r0.x;
    o0 = _327;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
