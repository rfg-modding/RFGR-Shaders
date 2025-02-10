cbuffer cb0_t : register(b0)
{
    float4 cb0_m[8] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[8] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _79 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _79.x, _79.y, _79.z);
    float4 _88 = r0;
    _88.y = r0.y + r0.y;
    r0 = _88;
    float4 _95 = r1;
    _95.x = r1.w * r1.y;
    r1 = _95;
    float4 _107 = r0;
    _107.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _107;
    float4 _111 = r0;
    _111.x = r1.x;
    r0 = _111;
    float4 _119 = r0;
    _119.w = (-r0.w) + asfloat(1065353216u);
    r0 = _119;
    float4 _126 = r0;
    _126.w = max(r0.w, asfloat(0u));
    r0 = _126;
    float4 _131 = r0;
    _131.z = sqrt(r0.w);
    r0 = _131;
    float3 _138 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_138.x, _138.y, _138.z, r0.w);
    float3 _155 = (cb2_m[7].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_155.x, _155.y, _155.z, r0.w);
    float4 _171 = r0;
    _171.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _171;
    float4 _176 = r0;
    _176.w = rsqrt(r0.w);
    r0 = _176;
    float3 _182 = r0.www * r0.xyz;
    r0 = float4(_182.x, _182.y, _182.z, r0.w);
    float4 _201 = r0;
    _201.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _201;
    float4 _206 = r0;
    _206.w = rsqrt(r0.w);
    r0 = _206;
    float4 _224 = r1;
    _224.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _224;
    float4 _229 = r1;
    _229.x = rsqrt(r1.x);
    r1 = _229;
    float3 _236 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_236.x, _236.y, _236.z, r1.w);
    float3 _247 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r2 = float4(_247.x, _247.y, _247.z, r2.w);
    float4 _264 = r0;
    _264.w = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r0 = _264;
    float4 _279 = r1;
    _279.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _279;
    float4 _284 = r1;
    _284.x = rsqrt(r1.x);
    r1 = _284;
    float3 _290 = r1.xxx * r2.xyz;
    r1 = float4(_290.x, _290.y, _290.z, r1.w);
    float4 _306 = r1;
    _306.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _306;
    float4 _323 = r0;
    _323.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _323;
    float4 _335 = r0;
    _335.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _335;
    float4 _341 = r0;
    _341.y = max(r1.x, asfloat(0u));
    r0 = _341;
    float4 _349 = r0;
    _349.y = (-r0.y) + asfloat(1064011039u);
    r0 = _349;
    float4 _357 = r0;
    _357.y = clamp(r0.y * asfloat(3244593737u), 0.0f, 1.0f);
    r0 = _357;
    float4 _363 = r0;
    _363.z = max(r0.w, asfloat(0u));
    r0 = _363;
    float2 _375 = (r0.ww * asfloat(uint2(1056964608u, 1056964608u))) + asfloat(uint2(3196059648u, 1048576000u));
    r1 = float4(_375.x, _375.y, r1.z, r1.w);
    float2 _387 = clamp(r1.xy * asfloat(uint2(1082130432u, 1068149419u)), 0.0f.xx, 1.0f.xx);
    r1 = float4(_387.x, _387.y, r1.z, r1.w);
    float2 _392 = log2(r1.xy);
    r1 = float4(_392.x, _392.y, r1.z, r1.w);
    float2 _400 = r1.xy * asfloat(uint2(1074580685u, 1074580685u));
    r1 = float4(_400.x, _400.y, r1.z, r1.w);
    float2 _405 = exp2(r1.xy);
    r1 = float4(_405.x, _405.y, r1.z, r1.w);
    float4 _417 = r0;
    _417.z = asfloat((asfloat(964689920u) < r0.z) ? 4294967295u : 0u);
    r0 = _417;
    float4 _424 = r0;
    _424.z = asfloat(asuint(r0.z) & 1065353216u);
    r0 = _424;
    float4 _431 = r0;
    _431.y = r0.z * r0.y;
    r0 = _431;
    float4 _436 = r0;
    _436.y = log2(r0.y);
    r0 = _436;
    float4 _442 = r0;
    _442.y = r0.y * asfloat(1074580685u);
    r0 = _442;
    float4 _447 = r0;
    _447.y = exp2(r0.y);
    r0 = _447;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _461 = r0.yyy * r2.xyz;
    r0 = float4(r0.x, _461.x, _461.y, _461.z);
    float3 _474 = r0.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_474.x, _474.y, _474.z, r2.w);
    float3 _487 = r0.zzz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_487.x, _487.y, _487.z, r3.w);
    float3 _505 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_505.x, _505.y, _505.z, r4.w);
    float3 _516 = (r2.xyz * r4.xyz) + r3.xyz;
    r2 = float4(_516.x, _516.y, _516.z, r2.w);
    float3 _530 = r0.www * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r3 = float4(_530.x, _530.y, _530.z, r3.w);
    float3 _546 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r0.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(r0.x, _546.x, _546.y, _546.z);
    float3 _556 = (r2.xyz * r0.yzw) + r3.xyz;
    r0 = float4(r0.x, _556.x, _556.y, _556.z);
    float3 _566 = r0.yzw * cb2_m[7].w.xxx;
    r0 = float4(r0.x, _566.x, _566.y, _566.z);
    float2 _579 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(r1.x, r1.y, _579.x, _579.y);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r1.zwzz.xy);
    float4 _594 = r1;
    _594.z = max(r2.y, asfloat(1028443341u));
    r1 = _594;
    float3 _600 = r0.yzw * r1.zzz;
    r0 = float4(r0.x, _600.x, _600.y, _600.z);
    float3 _613 = r1.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(_613.x, r1.y, _613.y, _613.z);
    float3 _626 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_626.x, _626.y, _626.z, r3.w);
    float3 _642 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_642.x, _642.y, _642.z, r4.w);
    float3 _652 = (r1.xzw * r4.xyz) + r3.xyz;
    r1 = float4(_652.x, _652.y, _652.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _673 = r3.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r4 = float4(_673.x, _673.y, _673.z, r4.w);
    float3 _680 = r1.xyz * r4.xyz;
    r1 = float4(_680.x, _680.y, _680.z, r1.w);
    float3 _690 = (r1.xyz * r2.yyy) + r0.yzw;
    r0 = float4(r0.x, _690.x, _690.y, _690.z);
    float3 _703 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _703.x, _703.y, _703.z);
    float4 _712 = r1;
    _712.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _712;
    float4 _721 = r1;
    _721.x = abs(r1.x) + abs(r1.x);
    r1 = _721;
    float4 _731 = r1;
    _731.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _731;
    float4 _737 = r1;
    _737.x = max(r1.x, asfloat(0u));
    r1 = _737;
    float4 _745 = r1;
    _745.x = r1.x * cb0_m[7].y;
    r1 = _745;
    float3 _769 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _769.x, _769.y, _769.z);
    float3 _785 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _785.x, _785.y, _785.z);
    float3 _799 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(r2.x, _799.x, _799.y, _799.z);
    float3 _809 = (r1.xxx * r2.yzw) + r1.yzw;
    r1 = float4(_809.x, _809.y, _809.z, r1.w);
    float3 _816 = r2.xxx * r1.xyz;
    r1 = float4(_816.x, _816.y, _816.z, r1.w);
    float3 _826 = (r1.xyz * r4.xyz) + r0.yzw;
    r0 = float4(_826.x, _826.y, _826.z, r0.w);
    float4 _835 = r0;
    _835.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _835;
    float3 _841 = r0.xyz * r0.www;
    r0 = float4(_841.x, _841.y, _841.z, r0.w);
    float3 _858 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r3 = float4(_858.x, _858.y, _858.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _889 = gl_FragCoord;
    _889.w = 1.0f / _889.w;
    shader_in[0] = float4(_889.xy.x, _889.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
