cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;

void ps_main()
{
    float2 _48 = float2(cb2_m[1].x, cb2_m[1].y);
    float2 _51 = asfloat(uint2(0u, 0u));
    bool2 _54 = bool2(_48.x == _51.x, _48.y == _51.y);
    float2 _59 = asfloat(uint2(_54.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _54.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r0 = float4(_59.x, _59.y, r0.z, r0.w);
    uint2 _64 = asuint(r0.xy);
    float2 _67 = asfloat(uint2(1065353216u, 1065353216u));
    float2 _73 = float2(cb2_m[1].x, cb2_m[1].y);
    bool2 _74 = bool2(_64.x != uint2(0u, 0u).x, _64.y != uint2(0u, 0u).y);
    float2 _75 = float2(_74.x ? _67.x : _73.x, _74.y ? _67.y : _73.y);
    r0 = float4(_75.x, _75.y, r0.z, r0.w);
    float2 _83 = r0.xy * shader_in[1].xy;
    r0 = float4(_83.x, _83.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float4 _102 = r0;
    _102.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _102;
    float4 _112 = r0;
    _112.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _112;
    float4 _122 = r0;
    _122.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _122;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float3 _133 = asfloat(uint3(0u, 0u, 0u));
    o0 = float4(_133.x, _133.y, _133.z, o0.w);
    float4 _138 = o0;
    _138.w = r0.w;
    o0 = _138;
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
