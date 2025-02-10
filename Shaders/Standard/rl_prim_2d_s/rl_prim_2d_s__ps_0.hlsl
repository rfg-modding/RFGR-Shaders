cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};


static float4 v1;

struct SPIRV_Cross_Input
{
    float4 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    float3 _33 = asfloat(uint3(1025879782u, 1025879782u, 1025879782u));
    bool3 _36 = bool3(shader_in[1].xyz.x < _33.x, shader_in[1].xyz.y < _33.y, shader_in[1].xyz.z < _33.z);
    float3 _43 = asfloat(uint3(_36.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _36.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _36.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r0 = float4(_43.x, _43.y, _43.z, r0.w);
    float4 _54 = r0;
    _54.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _54;
    float4 _64 = r0;
    _64.x = asfloat(asuint(r0.z) & asuint(r0.x));
    r0 = _64;
    float3 _72 = shader_in[1].xyz * asfloat(uint3(1033798545u, 1033798545u, 1033798545u));
    r0 = float4(r0.x, _72.x, _72.y, _72.z);
    float3 _81 = shader_in[1].xyz + asfloat(uint3(1029785518u, 1029785518u, 1029785518u));
    r1 = float4(_81.x, _81.y, _81.z, r1.w);
    float3 _90 = r1.xyz * asfloat(uint3(1064478574u, 1064478574u, 1064478574u));
    r1 = float4(_90.x, _90.y, _90.z, r1.w);
    float3 _95 = log2(r1.xyz);
    r1 = float4(_95.x, _95.y, _95.z, r1.w);
    float3 _103 = r1.xyz * asfloat(uint3(1075419546u, 1075419546u, 1075419546u));
    r1 = float4(_103.x, _103.y, _103.z, r1.w);
    float3 _108 = exp2(r1.xyz);
    r1 = float4(_108.x, _108.y, _108.z, r1.w);
    uint3 _113 = asuint(r0.xxx);
    bool3 _118 = bool3(_113.x != uint3(0u, 0u, 0u).x, _113.y != uint3(0u, 0u, 0u).y, _113.z != uint3(0u, 0u, 0u).z);
    float3 _119 = float3(_118.x ? r0.yzw.x : r1.xyz.x, _118.y ? r0.yzw.y : r1.xyz.y, _118.z ? r0.yzw.z : r1.xyz.z);
    r0 = float4(_119.x, _119.y, _119.z, r0.w);
    float4 _125 = r0;
    _125.w = shader_in[1].w;
    r0 = _125;
    r0 *= float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _152 = r1;
    _152.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _152;
    float4 _162 = r1;
    _162.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _162;
    float4 _172 = r1;
    _172.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _172;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    o0 = r0;
}

void frag_main()
{
    shader_in[1] = v1;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
