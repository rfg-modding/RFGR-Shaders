cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[3] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[6] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

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
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _81 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _81.x, _81.y, _81.z);
    float4 _90 = r0;
    _90.y = r0.y + r0.y;
    r0 = _90;
    float4 _97 = r1;
    _97.x = r1.w * r1.y;
    r1 = _97;
    float4 _109 = r0;
    _109.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _109;
    float4 _113 = r0;
    _113.x = r1.x;
    r0 = _113;
    float4 _121 = r0;
    _121.w = (-r0.w) + asfloat(1065353216u);
    r0 = _121;
    float4 _128 = r0;
    _128.w = max(r0.w, asfloat(0u));
    r0 = _128;
    float4 _133 = r0;
    _133.z = sqrt(r0.w);
    r0 = _133;
    float3 _140 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_140.x, _140.y, _140.z, r0.w);
    float3 _156 = (cb2_m[4].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_156.x, _156.y, _156.z, r0.w);
    float4 _172 = r0;
    _172.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _172;
    float4 _177 = r0;
    _177.w = rsqrt(r0.w);
    r0 = _177;
    float3 _183 = r0.www * r0.xyz;
    r0 = float4(_183.x, _183.y, _183.z, r0.w);
    float4 _202 = r0;
    _202.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _202;
    float4 _207 = r0;
    _207.w = rsqrt(r0.w);
    r0 = _207;
    float4 _225 = r1;
    _225.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _225;
    float4 _230 = r1;
    _230.y = rsqrt(r1.x);
    r1 = _230;
    float4 _235 = r1;
    _235.x = sqrt(r1.x);
    r1 = _235;
    float4 _251 = r1;
    _251.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _251;
    float3 _258 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _258.x, _258.y, _258.z);
    float3 _269 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r2 = float4(_269.x, _269.y, _269.z, r2.w);
    float4 _286 = r0;
    _286.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _286;
    float4 _291 = r0;
    _291.w = rsqrt(r0.w);
    r0 = _291;
    float3 _297 = r0.www * r2.xyz;
    r2 = float4(_297.x, _297.y, _297.z, r2.w);
    float4 _313 = r0;
    _313.w = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _313;
    float4 _328 = r0;
    _328.x = mad(r0.xyz.z, r1.yzw.z, mad(r0.xyz.y, r1.yzw.y, r0.xyz.x * r1.yzw.x));
    r0 = _328;
    float3 _332 = -r1.yzw;
    float4 _345 = r0;
    _345.y = mad(_332.z, shader_in[4].xyz.z, mad(_332.y, shader_in[4].xyz.y, _332.x * shader_in[4].xyz.x));
    r0 = _345;
    float4 _353 = r0;
    _353.y = min(r0.y, cb1_m[2].x);
    r0 = _353;
    float4 _362 = r0;
    _362.y = r0.y + (-cb1_m[2].y);
    r0 = _362;
    float2 _369 = max(r0.xy, asfloat(uint2(0u, 0u)));
    r0 = float4(_369.x, _369.y, r0.z, r0.w);
    float4 _379 = r0;
    _379.y = r0.y * cb1_m[2].z;
    r0 = _379;
    float4 _385 = r0;
    _385.z = max(r0.w, asfloat(0u));
    r0 = _385;
    float4 _390 = r0;
    _390.z = log2(r0.z);
    r0 = _390;
    float4 _399 = r0;
    _399.z = r0.z * cb2_m[5].x;
    r0 = _399;
    float4 _404 = r0;
    _404.z = exp2(r0.z);
    r0 = _404;
    float4 _412 = r0;
    _412.z = r0.z * cb2_m[4].w;
    r0 = _412;
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _432 = r2.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r1 = float4(r1.x, _432.x, _432.y, _432.z);
    float3 _445 = r1.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(r1.x, _445.x, _445.y, _445.z);
    float3 _452 = r0.zzz * r1.yzw;
    r1 = float4(r1.x, _452.x, _452.y, _452.z);
    float4 _464 = r0;
    _464.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _464;
    float4 _474 = r0;
    _474.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _474;
    float4 _481 = r0;
    _481.y = r0.y * r1.x;
    r0 = _481;
    float4 _488 = r0;
    _488.z = r0.y * r0.x;
    r0 = _488;
    float3 _494 = r0.zzz * r1.yzw;
    r1 = float4(_494.x, _494.y, _494.z, r1.w);
    float3 _501 = r0.yyy * r1.xyz;
    r1 = float4(_501.x, _501.y, _501.z, r1.w);
    float3 _516 = float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z) * cb2_m[4].y.xxx;
    r2 = float4(_516.x, _516.y, _516.z, r2.w);
    float3 _541 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * cb2_m[4].y.xxx) + float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r3 = float4(_541.x, _541.y, _541.z, r3.w);
    float3 _552 = (r0.zzz * r3.xyz) + r2.xyz;
    r2 = float4(_552.x, _552.y, _552.z, r2.w);
    float3 _566 = r2.xyz + (-float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z));
    r2 = float4(_566.x, _566.y, _566.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _584 = r0;
    _584.z = r3.w * (-cb2_m[4].z);
    r0 = _584;
    float4 _595 = r0;
    _595.x = (r0.x * r0.y) + (-r0.z);
    r0 = _595;
    float4 _605 = r0;
    _605.y = (cb2_m[4].z * r3.w) + asfloat(1065353216u);
    r0 = _605;
    float4 _611 = r0;
    _611.y = asfloat(1065353216u) / r0.y;
    r0 = _611;
    float4 _619 = r0;
    _619.x = clamp(r0.y * r0.x, 0.0f, 1.0f);
    r0 = _619;
    float4 _629 = r0;
    _629.y = (r0.x * asfloat(3221225472u)) + asfloat(1077936128u);
    r0 = _629;
    float4 _636 = r0;
    _636.x = r0.x * r0.x;
    r0 = _636;
    float4 _643 = r0;
    _643.x = r0.x * r0.y;
    r0 = _643;
    float3 _658 = (r0.xxx * r2.xyz) + float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _658.x, _658.y, _658.z);
    float3 _665 = r0.xxx * r0.yzw;
    r0 = float4(_665.x, _665.y, _665.z, r0.w);
    float3 _672 = r0.xyz + r0.xyz;
    r2 = float4(_672.x, _672.y, _672.z, r2.w);
    float3 _682 = ((-r0.xyz) * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_682.x, _682.y, _682.z, r4.w);
    float3 _690 = r0.xyz * r3.xyz;
    r0 = float4(_690.x, _690.y, _690.z, r0.w);
    float3 _700 = (r3.xyz * r4.xyz) + r2.xyz;
    r2 = float4(_700.x, _700.y, _700.z, r2.w);
    float3 _707 = r0.xyz * r2.xyz;
    r0 = float4(_707.x, _707.y, _707.z, r0.w);
    float3 _723 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r0 = float4(_723.x, _723.y, _723.z, r0.w);
    float2 _736 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_736.x, _736.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float3 _750 = r0.xyz * r1.yyy;
    r0 = float4(_750.x, _750.y, _750.z, r0.w);
    float4 _759 = r0;
    _759.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _759;
    float3 _765 = r0.xyz * r0.www;
    r3 = float4(_765.x, _765.y, _765.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _796 = gl_FragCoord;
    _796.w = 1.0f / _796.w;
    shader_in[0] = float4(_796.xy.x, _796.xy.y, shader_in[0].z, shader_in[0].w);
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
