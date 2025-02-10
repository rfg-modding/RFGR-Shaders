cbuffer cb0_t : register(b0)
{
    float4 cb0_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    float2 _66 = (float2(cb2_m[2].x, cb2_m[2].y) * cb0_m[1].y.xx) + shader_in[1].xy;
    r0 = float4(_66.x, _66.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float3 _88 = (r0.zyx * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_88.x, _88.y, _88.z, r0.w);
    float2 _97 = (-r0.xy) + shader_in[1].xy;
    r1 = float4(_97.x, _97.y, r1.z, r1.w);
    float3 _110 = (r0.zzy * asfloat(uint3(1050253722u, 1050253722u, 1050253722u))) + shader_in[1].zxy;
    r0 = float4(_110.x, _110.y, _110.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, r1.xyxx.xy);
    r2 = (-float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w)) + float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z, cb2_m[1].w);
    r2 = (r0.xxxx * r2) + float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    r3 = r1 * r2;
    float2 _176 = ((-float2(cb2_m[2].x, cb2_m[2].y)) * cb0_m[1].y.xx) + r0.yz;
    r0 = float4(r0.x, _176.x, _176.y, r0.w);
    r4 = tex2D(SPIRV_Cross_Combinedt1s1, r0.yzyy.xy);
    r4 = r2 * r4;
    float4 _196 = r0;
    _196.y = cb0_m[1].y * asfloat(1153718641u);
    r0 = _196;
    float4 _202 = r0;
    _202.y = sin(r0.yyyy.y);
    r0 = _202;
    float4 _209 = r0;
    _209.y = r0.y + asfloat(1065353216u);
    r0 = _209;
    float4 _219 = r0;
    _219.y = (r0.y * asfloat(1041865114u)) + asfloat(1060320051u);
    r0 = _219;
    float4 _226 = r0;
    _226.z = r0.y * r3.w;
    r0 = _226;
    float4 _233 = r1;
    _233.w = r0.y * r4.w;
    r1 = _233;
    float4 _243 = r0;
    _243.y = (r3.w * r0.y) + r1.w;
    r0 = _243;
    float4 _253 = r0;
    _253.y = (r0.z * r1.w) + r0.y;
    r0 = _253;
    float4 _260 = r0;
    _260.x = clamp(r0.x, 0.0f, 1.0f);
    r0 = _260;
    float4 _267 = r0;
    _267.x = r0.x * r0.y;
    r0 = _267;
    float4 _274 = r0;
    _274.x = r0.w * r0.x;
    r0 = _274;
    float4 _286 = r0;
    _286.y = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _286;
    float4 _296 = r0;
    _296.z = asfloat((r0.x < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _296;
    float4 _306 = r0;
    _306.y = asfloat(asuint(r0.z) & asuint(r0.y));
    r0 = _306;
    if (asuint(r0.y) != 0u)
    {
        discard;
    }
    float3 _321 = (r1.xyz * r2.xyz) + r4.xyz;
    r0 = float4(r0.x, _321.x, _321.y, _321.z);
    float3 _328 = r3.xyz * r4.xyz;
    r1 = float4(_328.x, _328.y, _328.z, r1.w);
    float3 _339 = (r1.xyz * asfloat(uint3(1084227584u, 1084227584u, 1084227584u))) + r0.yzw;
    r0 = float4(r0.x, _339.x, _339.y, _339.z);
    float3 _348 = r0.yzw * cb2_m[2].z.xxx;
    r0 = float4(r0.x, _348.x, _348.y, _348.z);
    float3 _356 = r0.yzw * asfloat(uint3(1120403456u, 1120403456u, 1120403456u));
    o0 = float4(_356.x, _356.y, _356.z, o0.w);
    float4 _361 = o0;
    _361.w = r0.x;
    o0 = _361;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
