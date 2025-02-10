cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;
static float4 r7;
static float4 r8;
static float4 r9;

void ps_main()
{
    float4 _40 = r0;
    _40.z = asfloat(0u);
    r0 = _40;
    float3 _56 = -float3(cb0_m[6].z, cb0_m[6].w, cb0_m[6].w);
    r0 = float4(_56.x, _56.y, r0.z, _56.z);
    r0 += shader_in[1].xyxy;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    r1 = min(r1, asfloat(uint4(1065353216u, 1065353216u, 1065353216u, 1065353216u)));
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
    r0 = min(r0.xzwy, asfloat(uint4(1065353216u, 1065353216u, 1065353216u, 1065353216u)));
    float4 _94 = r2;
    _94.w = r0.x;
    r2 = _94;
    float4 _98 = r2;
    _98.x = r1.x;
    r2 = _98;
    r3 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(1065353216u, 3212836864u, 3212836864u, 1065353216u))) + shader_in[1].xyxy;
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, r3.xyxx.xy);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, r3.zwzz.xy);
    r3 = min(r3, asfloat(uint4(1065353216u, 1065353216u, 1065353216u, 1065353216u)));
    r4 = min(r4, asfloat(uint4(1065353216u, 1065353216u, 1065353216u, 1065353216u)));
    float4 _138 = r2;
    _138.y = r4.x;
    r2 = _138;
    float3 _145 = asfloat(uint3(1065353216u, 1065353216u, 1073741824u));
    float4 _155 = r1;
    _155.x = mad(r2.xyw.z, _145.z, mad(r2.xyw.y, _145.y, r2.xyw.x * _145.x));
    r1 = _155;
    float4 _159 = r5;
    _159.x = asfloat(0u);
    r5 = _159;
    float4 _164 = r5;
    _164.y = cb0_m[6].w;
    r5 = _164;
    float2 _171 = r5.xy + shader_in[1].xy;
    r5 = float4(_171.x, _171.y, r5.z, r5.w);
    r5 = tex2D(SPIRV_Cross_Combinedt0s0, r5.xyxx.xy);
    r5 = min(r5, asfloat(uint4(1065353216u, 1065353216u, 1065353216u, 1065353216u)));
    float4 _187 = r6;
    _187.w = r5.x;
    r6 = _187;
    float4 _191 = r6;
    _191.y = r3.x;
    r6 = _191;
    float2 _202 = shader_in[1].xy + float2(cb0_m[6].z, cb0_m[6].w);
    r7 = float4(_202.x, _202.y, r7.z, r7.w);
    r7 = tex2D(SPIRV_Cross_Combinedt0s0, r7.xyxx.xy);
    r7 = min(r7, asfloat(uint4(1065353216u, 1065353216u, 1065353216u, 1065353216u)));
    float4 _218 = r6;
    _218.z = r7.x;
    r6 = _218;
    float3 _224 = asfloat(uint3(3212836864u, 3212836864u, 3221225472u));
    float4 _234 = r2;
    _234.w = mad(r6.yzw.z, _224.z, mad(r6.yzw.y, _224.y, r6.yzw.x * _224.x));
    r2 = _234;
    float4 _242 = r8;
    _242.x = r1.x + r2.w;
    r8 = _242;
    float2 _248 = r0.yz + r1.zw;
    r1 = float4(_248.x, r1.y, _248.y, r1.w);
    float4 _253 = r0;
    _253.x = r1.y;
    r0 = _253;
    float2 _259 = r4.zw + r1.xz;
    r1 = float4(_259.x, _259.y, r1.z, r1.w);
    float4 _264 = r0;
    _264.y = r4.y;
    r0 = _264;
    float3 _268 = asfloat(uint3(1065353216u, 1065353216u, 1073741824u));
    float4 _278 = r0;
    _278.w = mad(r0.xyw.z, _268.z, mad(r0.xyw.y, _268.y, r0.xyw.x * _268.x));
    r0 = _278;
    float4 _282 = r4;
    _282.w = r5.y;
    r4 = _282;
    float4 _286 = r4;
    _286.y = r3.y;
    r4 = _286;
    float4 _290 = r4;
    _290.z = r7.y;
    r4 = _290;
    float3 _294 = asfloat(uint3(3212836864u, 3212836864u, 3221225472u));
    float4 _304 = r1;
    _304.z = mad(r4.yzw.z, _294.z, mad(r4.yzw.y, _294.y, r4.yzw.x * _294.x));
    r1 = _304;
    float4 _311 = r8;
    _311.y = r0.w + r1.z;
    r8 = _311;
    float2 _317 = r8.xy * r8.xy;
    r1 = float4(r1.x, r1.y, _317.x, _317.y);
    float4 _324 = r8;
    _324.x = -cb0_m[6].z;
    r8 = _324;
    float2 _328 = asfloat(uint2(0u, 0u));
    r8 = float4(r8.x, _328.x, r8.z, _328.y);
    float2 _336 = r8.xy + shader_in[1].xy;
    r3 = float4(_336.x, _336.y, r3.z, r3.w);
    r9 = tex2D(SPIRV_Cross_Combinedt0s0, r3.xyxx.xy);
    r9 = min(r9, asfloat(uint4(1065353216u, 1065353216u, 1065353216u, 1065353216u)));
    float4 _352 = r2;
    _352.z = r9.x;
    r2 = _352;
    float3 _357 = asfloat(uint3(1065353216u, 3212836864u, 1073741824u));
    float4 _367 = r0;
    _367.w = mad(r2.xyz.z, _357.z, mad(r2.xyz.y, _357.y, r2.xyz.x * _357.x));
    r0 = _367;
    float4 _372 = r8;
    _372.z = cb0_m[6].z;
    r8 = _372;
    float2 _379 = r8.zw + shader_in[1].xy;
    r2 = float4(_379.x, _379.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r2.xyxx.xy);
    r2 = min(r2, asfloat(uint4(1065353216u, 1065353216u, 1065353216u, 1065353216u)));
    float4 _394 = r6;
    _394.x = r2.x;
    r6 = _394;
    float3 _399 = asfloat(uint3(3212836864u, 1065353216u, 3221225472u));
    float4 _409 = r2;
    _409.x = mad(r6.zyx.z, _399.z, mad(r6.zyx.y, _399.y, r6.zyx.x * _399.x));
    r2 = _409;
    float4 _416 = r3;
    _416.x = r0.w + r2.x;
    r3 = _416;
    float4 _420 = r0;
    _420.z = r9.y;
    r0 = _420;
    float2 _426 = r1.xy + r9.zw;
    r1 = float4(_426.x, _426.y, r1.z, r1.w);
    float2 _433 = r2.zw + r1.xy;
    r1 = float4(_433.x, _433.y, r1.z, r1.w);
    float4 _438 = r4;
    _438.x = r2.y;
    r4 = _438;
    float3 _442 = asfloat(uint3(3212836864u, 1065353216u, 3221225472u));
    float4 _452 = r0;
    _452.w = mad(r4.zyx.z, _442.z, mad(r4.zyx.y, _442.y, r4.zyx.x * _442.x));
    r0 = _452;
    float2 _458 = r3.zw + r1.xy;
    r1 = float4(_458.x, _458.y, r1.z, r1.w);
    float2 _465 = r5.zw + r1.xy;
    r1 = float4(_465.x, _465.y, r1.z, r1.w);
    float2 _472 = r7.zw + r1.xy;
    r1 = float4(_472.x, _472.y, r1.z, r1.w);
    float2 _479 = min(r1.xy, asfloat(uint2(1065353216u, 1065353216u)));
    o0 = float4(o0.x, o0.y, _479.x, _479.y);
    float3 _484 = asfloat(uint3(1065353216u, 3212836864u, 1073741824u));
    float4 _494 = r0;
    _494.x = mad(r0.xyz.z, _484.z, mad(r0.xyz.y, _484.y, r0.xyz.x * _484.x));
    r0 = _494;
    float4 _501 = r3;
    _501.y = r0.w + r0.x;
    r3 = _501;
    float2 _510 = (r3.xy * r3.xy) + r1.zw;
    r0 = float4(_510.x, _510.y, r0.z, r0.w);
    float2 _518 = cb6_m[0].x.xx;
    bool2 _521 = bool2(r0.xy.x >= _518.x, r0.xy.y >= _518.y);
    float2 _525 = asfloat(uint2(_521.x ? uint2(4294967295u, 4294967295u).x : uint2(0u, 0u).x, _521.y ? uint2(4294967295u, 4294967295u).y : uint2(0u, 0u).y));
    r0 = float4(_525.x, _525.y, r0.z, r0.w);
    float2 _532 = asfloat(asuint(r0.xy) & uint2(1065353216u, 1065353216u));
    o0 = float4(_532.x, _532.y, o0.z, o0.w);
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
