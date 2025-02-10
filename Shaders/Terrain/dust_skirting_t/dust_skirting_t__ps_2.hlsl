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
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float3 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float4 _78 = r1;
    _78.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _78;
    float4 _83 = r1;
    _83.x = rsqrt(r1.x);
    r1 = _83;
    float4 _91 = r1;
    _91.x = r1.x * shader_in[3].z;
    r1 = _91;
    float4 _107 = r1;
    _107.x = clamp((r1.x * shader_in[4].x) + shader_in[4].y, 0.0f, 1.0f);
    r1 = _107;
    float4 _122 = r1;
    _122.y = clamp((abs(shader_in[3].w) * shader_in[4].z) + shader_in[4].w, 0.0f, 1.0f);
    r1 = _122;
    float4 _130 = r1;
    _130.y = (-r1.y) + asfloat(1065353216u);
    r1 = _130;
    float4 _137 = r1;
    _137.x = r1.y * r1.x;
    r1 = _137;
    float4 _144 = r0;
    _144.w = r0.w * r1.x;
    r0 = _144;
    float4 _160 = r1;
    _160.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _160;
    float4 _170 = r1;
    _170.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _170;
    float4 _180 = r1;
    _180.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _180;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _202 = r2;
    _202.y = r1.y + r1.y;
    r2 = _202;
    float3 _214 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _214.x, _214.y, _214.z);
    float4 _222 = r1;
    _222.x = r1.w * r1.y;
    r1 = _222;
    float4 _234 = r1;
    _234.y = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r1 = _234;
    float4 _241 = r1;
    _241.y = (-r1.y) + asfloat(1065353216u);
    r1 = _241;
    float4 _247 = r1;
    _247.y = max(r1.y, asfloat(0u));
    r1 = _247;
    float4 _252 = r2;
    _252.z = sqrt(r1.y);
    r2 = _252;
    float4 _256 = r2;
    _256.x = r1.x;
    r2 = _256;
    float3 _263 = r2.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_263.x, _263.y, _263.z, r1.w);
    float3 _275 = (cb2_m[1].x.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_275.x, _275.y, _275.z, r1.w);
    float4 _291 = r1;
    _291.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _291;
    float4 _296 = r1;
    _296.w = rsqrt(r1.w);
    r1 = _296;
    float3 _302 = r1.www * r1.xyz;
    r1 = float4(_302.x, _302.y, _302.z, r1.w);
    float4 _321 = r1;
    _321.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _321;
    float4 _326 = r1;
    _326.w = rsqrt(r1.w);
    r1 = _326;
    float3 _333 = r1.www * shader_in[2].xyz;
    r2 = float4(_333.x, _333.y, _333.z, r2.w);
    float4 _349 = r1;
    _349.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _349;
    float4 _355 = r1;
    _355.x = max(r1.x, asfloat(0u));
    r1 = _355;
    float3 _367 = r0.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(_367.x, _367.y, _367.z, r0.w);
    float3 _380 = r1.xxx * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_380.x, _380.y, _380.z, r1.w);
    float3 _387 = r0.xyz * r1.xyz;
    o0 = float4(_387.x, _387.y, _387.z, o0.w);
    float4 _392 = o0;
    _392.w = r0.w;
    o0 = _392;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
