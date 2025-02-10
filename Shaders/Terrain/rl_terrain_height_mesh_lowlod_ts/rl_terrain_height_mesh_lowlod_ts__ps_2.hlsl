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
static float4 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float4 _59 = r0;
    _59.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _59;
    float4 _71 = r0;
    _71.y = asfloat((shader_in[3].w < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _71;
    float4 _81 = r0;
    _81.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _81;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    float4 _104 = r0;
    _104.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _104;
    float4 _109 = r0;
    _109.x = rsqrt(r0.x);
    r0 = _109;
    float3 _116 = r0.xxx * shader_in[3].xyz;
    r0 = float4(_116.x, _116.y, _116.z, r0.w);
    float4 _135 = r0;
    _135.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _135;
    float4 _140 = r0;
    _140.w = rsqrt(r0.w);
    r0 = _140;
    float3 _147 = r0.www * shader_in[2].xyz;
    r1 = float4(_147.x, _147.y, _147.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _165 = r2.xyz * r2.xyz;
    r3 = float4(_165.x, _165.y, _165.z, r3.w);
    float3 _173 = r2.xyz * r3.xyz;
    r2 = float4(_173.x, _173.y, _173.z, r2.w);
    float4 _189 = r0;
    _189.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _189;
    float4 _195 = r0;
    _195.x = max(r0.x, asfloat(0u));
    r0 = _195;
    float3 _207 = r0.xxx * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_207.x, _207.y, _207.z, r0.w);
    float3 _214 = r2.xyz * r0.xyz;
    o0 = float4(_214.x, _214.y, _214.z, o0.w);
    float4 _220 = o0;
    _220.w = shader_in[3].w;
    o0 = _220;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
