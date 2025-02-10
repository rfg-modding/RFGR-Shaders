cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[14] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float3 v1;
static float3 v2;
static float4 v3;
static float3 v4;
static float3 v5;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    float4 _60 = r0;
    _60.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _60;
    float4 _65 = r0;
    _65.x = rsqrt(r0.x);
    r0 = _65;
    float3 _72 = r0.xxx * shader_in[2].xyz;
    r0 = float4(r0.x, _72.x, _72.y, _72.z);
    float3 _81 = r0.xxx * shader_in[1].xyz;
    r1 = float4(_81.x, _81.y, _81.z, r1.w);
    float3 _88 = asfloat(uint3(0u, 0u, 0u));
    bool3 _93 = bool3(_88.x < r0.yzw.x, _88.y < r0.yzw.y, _88.z < r0.yzw.z);
    float3 _98 = asfloat(uint3(_93.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _93.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _93.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r2 = float4(_98.x, _98.y, _98.z, r2.w);
    float3 _106 = asfloat(uint3(1065353216u, 1065353216u, 1065353216u)) / r0.yzw;
    r0 = float4(_106.x, _106.y, _106.z, r0.w);
    float3 _115 = r0.xyz * shader_in[4].xyz;
    r3 = float4(_115.x, _115.y, _115.z, r3.w);
    float3 _125 = r0.xyz * shader_in[5].xyz;
    r0 = float4(_125.x, _125.y, _125.z, r0.w);
    uint3 _130 = asuint(r2.xyz);
    bool3 _135 = bool3(_130.x != uint3(0u, 0u, 0u).x, _130.y != uint3(0u, 0u, 0u).y, _130.z != uint3(0u, 0u, 0u).z);
    float3 _136 = float3(_135.x ? r0.xyz.x : r3.xyz.x, _135.y ? r0.xyz.y : r3.xyz.y, _135.z ? r0.xyz.z : r3.xyz.z);
    r4 = float4(_136.x, _136.y, _136.z, r4.w);
    uint3 _142 = asuint(r2.xyz);
    bool3 _147 = bool3(_142.x != uint3(0u, 0u, 0u).x, _142.y != uint3(0u, 0u, 0u).y, _142.z != uint3(0u, 0u, 0u).z);
    float3 _148 = float3(_147.x ? r3.xyz.x : r0.xyz.x, _147.y ? r3.xyz.y : r0.xyz.y, _147.z ? r3.xyz.z : r0.xyz.z);
    r0 = float4(_148.x, _148.y, _148.z, r0.w);
    float3 _156 = min(r0.xyz, asfloat(uint3(1259902592u, 1259902592u, 1259902592u)));
    r0 = float4(_156.x, _156.y, _156.z, r0.w);
    float3 _164 = max(r0.xyz, asfloat(uint3(3407386240u, 3407386240u, 3407386240u)));
    r0 = float4(_164.x, _164.y, _164.z, r0.w);
    float3 _170 = min(r4.xyz, asfloat(uint3(1259902592u, 1259902592u, 1259902592u)));
    r2 = float4(_170.x, _170.y, _170.z, r2.w);
    float3 _176 = max(r2.xyz, asfloat(uint3(3407386240u, 3407386240u, 3407386240u)));
    r2 = float4(_176.x, _176.y, _176.z, r2.w);
    float4 _184 = r0;
    _184.w = max(r2.z, r2.y);
    r0 = _184;
    float4 _191 = r2;
    _191.x = max(r0.w, r2.x);
    r2 = _191;
    float4 _198 = r0;
    _198.y = min(r0.z, r0.y);
    r0 = _198;
    float4 _205 = r2;
    _205.y = min(r0.y, r0.x);
    r2 = _205;
    float2 _213 = max(r2.xy, asfloat(uint2(0u, 0u)));
    r0 = float4(_213.x, _213.y, r0.z, r0.w);
    float2 _223 = shader_in[3].xy / shader_in[3].ww;
    r0 = float4(r0.x, r0.y, _223.x, _223.y);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
    float2 _251 = float2(cb2_m[0].z, cb2_m[0].w) + float2(cb2_m[1].z, cb2_m[1].w);
    r0 = float4(r0.x, r0.y, _251.x, _251.y);
    float2 _265 = (r2.xx * float2(cb2_m[2].z, cb2_m[2].w)) + r0.zw;
    r0 = float4(r0.x, r0.y, _265.x, _265.y);
    float2 _276 = r0.zw + float2(cb2_m[3].z, cb2_m[3].w);
    r0 = float4(r0.x, r0.y, _276.x, _276.y);
    float4 _284 = r0;
    _284.z = r0.z / r0.w;
    r0 = _284;
    float3 _297 = float3(cb2_m[7].y, cb2_m[7].z, cb2_m[7].w);
    float4 _307 = r0;
    _307.w = mad(r1.xyz.z, _297.z, mad(r1.xyz.y, _297.y, r1.xyz.x * _297.x));
    r0 = _307;
    float4 _314 = r0;
    _314.z = r0.z / r0.w;
    r0 = _314;
    float4 _321 = r0;
    _321.y = min(r0.y, r0.z);
    r0 = _321;
    float4 _328 = r0;
    _328.y = max(r0.y, r0.x);
    r0 = _328;
    float4 _336 = r0;
    _336.y = (-r0.x) + r0.y;
    r0 = _336;
    float3 _352 = (r0.xxx * r1.xyz) + float3(cb2_m[9].y, cb2_m[9].z, cb2_m[9].w);
    r0 = float4(_352.x, r0.y, _352.y, _352.z);
    float3 _359 = r1.xyz * r0.yyy;
    r1 = float4(_359.x, _359.y, _359.z, r1.w);
    float3 _374 = r0.xzw + (-float3(cb2_m[10].y, cb2_m[10].z, cb2_m[10].w));
    r0 = float4(_374.x, _374.y, _374.z, r0.w);
    float3 _387 = float3(cb2_m[11].y, cb2_m[11].z, cb2_m[11].w);
    float4 _397 = r0;
    _397.x = mad(r0.xyz.z, _387.z, mad(r0.xyz.y, _387.y, r0.xyz.x * _387.x));
    r0 = _397;
    float4 _404 = r0;
    _404.x = r0.x * asfloat(3216550459u);
    r0 = _404;
    float4 _409 = r0;
    _409.x = exp2(r0.x);
    r0 = _409;
    float4 _424 = r0;
    _424.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _424;
    float3 _435 = float3(cb2_m[11].y, cb2_m[11].z, cb2_m[11].w);
    float4 _445 = r0;
    _445.z = mad(r1.xyz.z, _435.z, mad(r1.xyz.y, _435.y, r1.xyz.x * _435.x));
    r0 = _445;
    float4 _450 = r0;
    _450.y = sqrt(r0.y);
    r0 = _450;
    float4 _457 = r0;
    _457.x = r0.x * r0.y;
    r0 = _457;
    float4 _463 = r0;
    _463.y = r0.z * asfloat(3216550459u);
    r0 = _463;
    float4 _468 = r0;
    _468.y = exp2(r0.y);
    r0 = _468;
    float4 _475 = r0;
    _475.y = (-r0.y) + asfloat(1065353216u);
    r0 = _475;
    float4 _482 = r0;
    _482.y = r0.y / r0.z;
    r0 = _482;
    float4 _492 = r0;
    _492.z = asfloat((asfloat(981668463u) < abs(r0.z)) ? 4294967295u : 0u);
    r0 = _492;
    float4 _499 = r0;
    _499.y = r0.y * r0.x;
    r0 = _499;
    float4 _510 = r0;
    _510.x = (asuint(r0.z) != 0u) ? r0.y : r0.x;
    r0 = _510;
    float4 _520 = r0;
    _520.x = r0.x * (-cb2_m[13].w);
    r0 = _520;
    float4 _525 = r0;
    _525.x = exp2(r0.x);
    r0 = _525;
    float4 _532 = o0;
    _532.w = (-r0.x) + asfloat(1065353216u);
    o0 = _532;
    float3 _541 = float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z);
    o0 = float4(_541.x, _541.y, _541.z, o0.w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
