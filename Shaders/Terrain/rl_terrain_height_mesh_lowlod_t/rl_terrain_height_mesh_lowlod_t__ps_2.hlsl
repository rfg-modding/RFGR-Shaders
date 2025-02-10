cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

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

void ps_main()
{
    float4 _58 = r0;
    _58.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _58;
    float4 _68 = r0;
    _68.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _68;
    float4 _78 = r0;
    _78.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _78;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float4 _102 = r0;
    _102.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _102;
    float4 _107 = r0;
    _107.x = rsqrt(r0.x);
    r0 = _107;
    float3 _114 = r0.xxx * shader_in[3].xyz;
    r0 = float4(_114.x, _114.y, _114.z, r0.w);
    float4 _133 = r0;
    _133.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _133;
    float4 _138 = r0;
    _138.w = rsqrt(r0.w);
    r0 = _138;
    float3 _145 = r0.www * shader_in[2].xyz;
    r1 = float4(_145.x, _145.y, _145.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _163 = r2.xyz * r2.xyz;
    r3 = float4(_163.x, _163.y, _163.z, r3.w);
    float3 _171 = r2.xyz * r3.xyz;
    r2 = float4(_171.x, _171.y, _171.z, r2.w);
    float4 _187 = r0;
    _187.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _187;
    float4 _193 = r0;
    _193.x = max(r0.x, asfloat(0u));
    r0 = _193;
    float3 _205 = r0.xxx * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_205.x, _205.y, _205.z, r0.w);
    float3 _212 = r2.xyz * r0.xyz;
    o0 = float4(_212.x, _212.y, _212.z, o0.w);
    float4 _216 = o0;
    _216.w = asfloat(1065353216u);
    o0 = _216;
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
