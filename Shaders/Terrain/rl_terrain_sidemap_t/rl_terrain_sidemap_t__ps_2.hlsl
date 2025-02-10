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
    float4 cb2_m[18] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void ps_main()
{
    float4 _75 = r0;
    _75.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _75;
    float4 _87 = r0;
    _87.y = asfloat((shader_in[4].w < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _87;
    float4 _97 = r0;
    _97.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _97;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[6].xyxx.xy);
    float4 _124 = r0;
    _124.x = abs(shader_in[4].z) + abs(shader_in[4].x);
    r0 = _124;
    float4 _133 = r0;
    _133.x = abs(shader_in[4].x) / r0.x;
    r0 = _133;
    float4 _140 = r0;
    _140.x = r0.x + asfloat(3202770534u);
    r0 = _140;
    float4 _150 = r0;
    _150.x = clamp(r0.x * asfloat(1092616192u), 0.0f, 1.0f);
    r0 = _150;
    r1 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[5].xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[6].zwzz.xy);
    r2 = (-r1) + r2;
    r1 = (r0.xxxx * r2) + r1;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float3 _199 = (r2.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _199.x, _199.y, _199.z);
    float4 _207 = r2;
    _207.x = r2.w * r2.z;
    r2 = _207;
    float4 _219 = r0;
    _219.y = mad(r2.xy.y, r2.xy.y, r2.xy.x * r2.xy.x);
    r0 = _219;
    float4 _227 = r0;
    _227.y = (-r0.y) + asfloat(1065353216u);
    r0 = _227;
    float4 _233 = r0;
    _233.y = max(r0.y, asfloat(0u));
    r0 = _233;
    float4 _238 = r2;
    _238.z = sqrt(r0.y);
    r2 = _238;
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[6].zwzz.xy);
    float3 _254 = (r3.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(r3.x, _254.x, _254.y, _254.z);
    float4 _262 = r3;
    _262.x = r3.w * r3.z;
    r3 = _262;
    float4 _274 = r0;
    _274.y = mad(r3.xy.y, r3.xy.y, r3.xy.x * r3.xy.x);
    r0 = _274;
    float4 _281 = r0;
    _281.y = (-r0.y) + asfloat(1065353216u);
    r0 = _281;
    float4 _287 = r0;
    _287.y = max(r0.y, asfloat(0u));
    r0 = _287;
    float4 _292 = r3;
    _292.z = sqrt(r0.y);
    r3 = _292;
    float3 _299 = (-r2.xyz) + r3.xyz;
    r3 = float4(_299.x, _299.y, _299.z, r3.w);
    float3 _309 = (r0.xxx * r3.xyz) + r2.xyz;
    r2 = float4(_309.x, _309.y, _309.z, r2.w);
    float3 _323 = r1.xyz * float3(cb2_m[16].x, cb2_m[16].y, cb2_m[16].z);
    r1 = float4(_323.x, _323.y, _323.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[1].xyxx.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[5].zwzz.xy);
    r4 = (-r3) + r4;
    r3 = (r0.xxxx * r4) + r3;
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _366 = (r4.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(r4.x, _366.x, _366.y, _366.z);
    float4 _374 = r4;
    _374.x = r4.w * r4.z;
    r4 = _374;
    float4 _386 = r0;
    _386.y = mad(r4.xy.y, r4.xy.y, r4.xy.x * r4.xy.x);
    r0 = _386;
    float4 _393 = r0;
    _393.y = (-r0.y) + asfloat(1065353216u);
    r0 = _393;
    float4 _399 = r0;
    _399.y = max(r0.y, asfloat(0u));
    r0 = _399;
    float4 _404 = r4;
    _404.z = sqrt(r0.y);
    r4 = _404;
    r5 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[5].zwzz.xy);
    float3 _420 = (r5.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r5 = float4(r5.x, _420.x, _420.y, _420.z);
    float4 _428 = r5;
    _428.x = r5.w * r5.z;
    r5 = _428;
    float4 _440 = r0;
    _440.y = mad(r5.xy.y, r5.xy.y, r5.xy.x * r5.xy.x);
    r0 = _440;
    float4 _447 = r0;
    _447.y = (-r0.y) + asfloat(1065353216u);
    r0 = _447;
    float4 _453 = r0;
    _453.y = max(r0.y, asfloat(0u));
    r0 = _453;
    float4 _458 = r5;
    _458.z = sqrt(r0.y);
    r5 = _458;
    float3 _465 = (-r4.xyz) + r5.xyz;
    r5 = float4(_465.x, _465.y, _465.z, r5.w);
    float3 _475 = (r0.xxx * r5.xyz) + r4.xyz;
    r0 = float4(_475.x, _475.y, _475.z, r0.w);
    float4 _485 = r0;
    _485.w = (r0.w * asfloat(1132396544u)) + asfloat(3212836864u);
    r0 = _485;
    float4 _492 = r0;
    _492.w = r0.w * asfloat(998343822u);
    r0 = _492;
    float3 _509 = (r3.xyz * float3(cb2_m[17].x, cb2_m[17].y, cb2_m[17].z)) + (-r1.xyz);
    r3 = float4(_509.x, _509.y, _509.z, r3.w);
    float3 _519 = (r0.www * r3.xyz) + r1.xyz;
    r1 = float4(_519.x, _519.y, _519.z, r1.w);
    float3 _527 = (-r2.xyz) + r0.xyz;
    r0 = float4(_527.x, _527.y, _527.z, r0.w);
    float3 _537 = (r0.www * r0.xyz) + r2.xyz;
    r0 = float4(_537.x, _537.y, _537.z, r0.w);
    float4 _546 = r2;
    _546.x = (-r1.w) + r3.w;
    r2 = _546;
    float4 _556 = r0;
    _556.w = (r0.w * r2.x) + r1.w;
    r0 = _556;
    float4 _574 = r1;
    _574.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _574;
    float4 _579 = r1;
    _579.w = rsqrt(r1.w);
    r1 = _579;
    float3 _586 = r1.www * shader_in[2].xyz;
    r2 = float4(_586.x, _586.y, _586.z, r2.w);
    float4 _603 = r2;
    _603.x = clamp(mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x)), 0.0f, 1.0f);
    r2 = _603;
    float4 _621 = r2;
    _621.y = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r2 = _621;
    float4 _626 = r2;
    _626.y = rsqrt(r2.y);
    r2 = _626;
    float3 _633 = r2.yyy * shader_in[3].xyz;
    r2 = float4(r2.x, _633.x, _633.y, _633.z);
    float3 _644 = (shader_in[2].xyz * r1.www) + r2.yzw;
    r3 = float4(_644.x, _644.y, _644.z, r3.w);
    float4 _660 = r1;
    _660.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r1 = _660;
    float4 _665 = r1;
    _665.w = rsqrt(r1.w);
    r1 = _665;
    float3 _671 = r1.www * r3.xyz;
    r3 = float4(_671.x, _671.y, _671.z, r3.w);
    float3 _676 = -r2.yzw;
    float4 _688 = r1;
    _688.w = mad(_676.z, r0.xyz.z, mad(_676.y, r0.xyz.y, _676.x * r0.xyz.x));
    r1 = _688;
    float4 _694 = r1;
    _694.w = r1.w + asfloat(1065353216u);
    r1 = _694;
    float4 _699 = r1;
    _699.w = log2(r1.w);
    r1 = _699;
    float4 _706 = r1;
    _706.w = r1.w * asfloat(1083179008u);
    r1 = _706;
    float4 _711 = r1;
    _711.w = exp2(r1.w);
    r1 = _711;
    float4 _717 = r1;
    _717.w = min(r1.w, asfloat(1065353216u));
    r1 = _717;
    float4 _733 = r0;
    _733.x = clamp(mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x)), 0.0f, 1.0f);
    r0 = _733;
    float4 _740 = r0;
    _740.x = r0.x + asfloat(925353388u);
    r0 = _740;
    float4 _747 = r0;
    _747.y = (-r0.w) + asfloat(1065353216u);
    r0 = _747;
    float4 _754 = r0;
    _754.x = r0.y * r0.x;
    r0 = _754;
    float4 _761 = r0;
    _761.x = r1.w * r0.x;
    r0 = _761;
    float4 _768 = r0;
    _768.x = r0.x * asfloat(1148846080u);
    r0 = _768;
    float3 _777 = (r1.xyz * r2.xxx) + r0.xxx;
    r0 = float4(_777.x, _777.y, _777.z, r0.w);
    float3 _790 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_790.x, _790.y, _790.z, o0.w);
    float4 _796 = o0;
    _796.w = shader_in[4].w;
    o0 = _796;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    frag_main();
}
