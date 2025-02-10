cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[7] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _72 = r0.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_72.x, _72.y, _72.z, r1.w);
    float3 _84 = float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    float3 _92 = float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    float4 _102 = r1;
    _102.w = mad(_84.z, _92.z, mad(_84.y, _92.y, _84.x * _92.x));
    r1 = _102;
    float4 _107 = r1;
    _107.w = rsqrt(r1.w);
    r1 = _107;
    float3 _119 = r1.www * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r2 = float4(_119.x, _119.y, _119.z, r2.w);
    float4 _139 = r1;
    _139.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _139;
    float4 _144 = r1;
    _144.w = rsqrt(r1.w);
    r1 = _144;
    float3 _151 = r1.www * shader_in[2].xyz;
    r3 = float4(_151.x, _151.y, _151.z, r3.w);
    float4 _168 = r1;
    _168.w = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    r1 = _168;
    float4 _177 = r1;
    _177.w = (r1.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _177;
    r2 = (-float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w)) + float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    r2 = (r1.wwww * r2) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    float3 _238 = ((-r0.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r0 = float4(_238.x, _238.y, _238.z, r0.w);
    float3 _251 = (cb2_m[6].x.xxx * r0.xyz) + r1.xyz;
    r0 = float4(_251.x, _251.y, _251.z, r0.w);
    float3 _258 = r2.xyz * r0.xyz;
    r0 = float4(_258.x, _258.y, _258.z, r0.w);
    float4 _266 = r1;
    _266.w = r0.w * r2.w;
    r1 = _266;
    float4 _275 = r0;
    _275.w = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _275;
    float3 _281 = r0.xyz * r0.www;
    r0 = float4(_281.x, _281.y, _281.z, r0.w);
    float3 _299 = (shader_in[2].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r1 = float4(_299.x, _299.y, _299.z, r1.w);
    r0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float3 _318 = r0.www * r0.xyz;
    r0 = float4(_318.x, _318.y, _318.z, r0.w);
    r0 = min(r0, asfloat(uint4(1107296256u, 1107296256u, 1107296256u, 1107296256u)));
    float4 _337 = r1;
    _337.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _337;
    float4 _347 = r1;
    _347.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _347;
    float4 _357 = r1;
    _357.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _357;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    o0 = r0;
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
