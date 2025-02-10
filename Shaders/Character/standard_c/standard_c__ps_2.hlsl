cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float3 v1;
static float2 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[2].xyxx.xy);
    float4 _69 = r1;
    _69.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _69;
    float4 _79 = r1;
    _79.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _79;
    float4 _89 = r1;
    _89.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _89;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    float4 _112 = r1;
    _112.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r1 = _112;
    float4 _117 = r1;
    _117.x = rsqrt(r1.x);
    r1 = _117;
    float3 _124 = r1.xxx * shader_in[1].xyz;
    r1 = float4(_124.x, _124.y, _124.z, r1.w);
    float4 _143 = r1;
    _143.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _143;
    float4 _148 = r1;
    _148.w = rsqrt(r1.w);
    r1 = _148;
    float3 _155 = r1.www * shader_in[3].xyz;
    r2 = float4(_155.x, _155.y, _155.z, r2.w);
    float4 _172 = r1;
    _172.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _172;
    float4 _178 = r1;
    _178.x = max(r1.x, asfloat(0u));
    r1 = _178;
    float3 _190 = r1.xxx * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_190.x, _190.y, _190.z, r1.w);
    float3 _197 = r0.xyz * r1.xyz;
    o0 = float4(_197.x, _197.y, _197.z, o0.w);
    float4 _202 = o0;
    _202.w = r0.w;
    o0 = _202;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, shader_in[2].z, shader_in[2].w);
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
