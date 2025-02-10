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
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt8s8;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt5s5;
uniform sampler2D SPIRV_Cross_Combinedt6s6;
uniform sampler2D SPIRV_Cross_Combinedt7s7;

static float2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void ps_main()
{
    float4 _82 = r0;
    _82.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _82;
    float4 _94 = r0;
    _94.y = asfloat((shader_in[3].w < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _94;
    float4 _104 = r0;
    _104.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _104;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt8s8, shader_in[5].xyxx.xy);
    float3 _129 = (-r0.zyx) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_129.x, _129.y, _129.z, r1.w);
    float4 _138 = r0;
    _138.w = r1.y * r1.z;
    r0 = _138;
    float4 _146 = r2;
    _146.x = r1.x * r0.w;
    r2 = _146;
    float4 _153 = r2;
    _153.y = r0.z * r0.w;
    r2 = _153;
    float4 _160 = r2;
    _160.z = r0.y * r1.z;
    r2 = _160;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _180 = (r1.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _180.x, _180.y, _180.z);
    float4 _188 = r1;
    _188.x = r1.w * r1.z;
    r1 = _188;
    float4 _200 = r0;
    _200.y = mad(r1.xy.y, r1.xy.y, r1.xy.x * r1.xy.x);
    r0 = _200;
    float4 _207 = r0;
    _207.y = (-r0.y) + asfloat(1065353216u);
    r0 = _207;
    float4 _213 = r0;
    _213.y = max(r0.y, asfloat(0u));
    r0 = _213;
    float4 _218 = r1;
    _218.z = sqrt(r0.y);
    r1 = _218;
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].zwzz.xy);
    float3 _234 = (r3.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(r3.x, _234.x, _234.y, _234.z);
    float4 _242 = r3;
    _242.x = r3.w * r3.z;
    r3 = _242;
    float4 _254 = r0;
    _254.y = mad(r3.xy.y, r3.xy.y, r3.xy.x * r3.xy.x);
    r0 = _254;
    float4 _261 = r0;
    _261.y = (-r0.y) + asfloat(1065353216u);
    r0 = _261;
    float4 _267 = r0;
    _267.y = max(r0.y, asfloat(0u));
    r0 = _267;
    float4 _272 = r3;
    _272.z = sqrt(r0.y);
    r3 = _272;
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _288 = (r4.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(r4.x, _288.x, _288.y, _288.z);
    float4 _296 = r4;
    _296.x = r4.w * r4.z;
    r4 = _296;
    float4 _308 = r0;
    _308.y = mad(r4.xy.y, r4.xy.y, r4.xy.x * r4.xy.x);
    r0 = _308;
    float4 _315 = r0;
    _315.y = (-r0.y) + asfloat(1065353216u);
    r0 = _315;
    float4 _321 = r0;
    _321.y = max(r0.y, asfloat(0u));
    r0 = _321;
    float4 _326 = r4;
    _326.z = sqrt(r0.y);
    r4 = _326;
    r5 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float3 _342 = (r5.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r5 = float4(r5.x, _342.x, _342.y, _342.z);
    float4 _350 = r5;
    _350.x = r5.w * r5.z;
    r5 = _350;
    float4 _362 = r0;
    _362.y = mad(r5.xy.y, r5.xy.y, r5.xy.x * r5.xy.x);
    r0 = _362;
    float4 _369 = r0;
    _369.y = (-r0.y) + asfloat(1065353216u);
    r0 = _369;
    float4 _375 = r0;
    _375.y = max(r0.y, asfloat(0u));
    r0 = _375;
    float4 _380 = r5;
    _380.z = sqrt(r0.y);
    r5 = _380;
    float3 _386 = r2.yyy * r3.xyz;
    r0 = float4(r0.x, _386.x, _386.y, _386.z);
    float3 _396 = (r1.xyz * r2.xxx) + r0.yzw;
    r0 = float4(r0.x, _396.x, _396.y, _396.z);
    float3 _406 = (r4.xyz * r2.zzz) + r0.yzw;
    r0 = float4(r0.x, _406.x, _406.y, _406.z);
    float3 _416 = (r5.xyz * r0.xxx) + r0.yzw;
    r0 = float4(r0.x, _416.x, _416.y, _416.z);
    float4 _432 = r1;
    _432.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _432;
    float4 _437 = r1;
    _437.x = rsqrt(r1.x);
    r1 = _437;
    float3 _443 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _443.x, _443.y, _443.z);
    float4 _462 = r1;
    _462.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _462;
    float4 _467 = r1;
    _467.x = rsqrt(r1.x);
    r1 = _467;
    float3 _474 = r1.xxx * shader_in[2].xyz;
    r1 = float4(r1.x, _474.x, _474.y, _474.z);
    r3 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[4].xyxx.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt5s5, shader_in[5].zwzz.xy);
    r5 = tex2D(SPIRV_Cross_Combinedt6s6, shader_in[1].xyxx.xy);
    r6 = tex2D(SPIRV_Cross_Combinedt7s7, shader_in[4].zwzz.xy);
    float3 _520 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_520.x, _520.y, _520.z, r3.w);
    float3 _533 = r4.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_533.x, _533.y, _533.z, r4.w);
    float3 _540 = r2.yyy * r4.xyz;
    r4 = float4(_540.x, _540.y, _540.z, r4.w);
    float3 _550 = (r3.xyz * r2.xxx) + r4.xyz;
    r3 = float4(_550.x, _550.y, _550.z, r3.w);
    float3 _563 = r5.xyz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r4 = float4(_563.x, _563.y, _563.z, r4.w);
    float3 _573 = (r4.xyz * r2.zzz) + r3.xyz;
    r3 = float4(_573.x, _573.y, _573.z, r3.w);
    float3 _586 = r6.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r4 = float4(_586.x, _586.y, _586.z, r4.w);
    float3 _596 = (r4.xyz * r0.xxx) + r3.xyz;
    r3 = float4(_596.x, _596.y, _596.z, r3.w);
    float4 _601 = r6;
    _601.x = r3.w;
    r6 = _601;
    float4 _605 = r6;
    _605.y = r4.w;
    r6 = _605;
    float4 _609 = r6;
    _609.z = r5.w;
    r6 = _609;
    float4 _613 = r2;
    _613.w = r0.x;
    r2 = _613;
    float4 _629 = r0;
    _629.x = mad(r6.w, r2.w, mad(r6.z, r2.z, mad(r6.y, r2.y, r6.x * r2.x)));
    r0 = _629;
    float4 _647 = r1;
    _647.y = clamp(mad(r0.yzw.z, r1.yzw.z, mad(r0.yzw.y, r1.yzw.y, r0.yzw.x * r1.yzw.x)), 0.0f, 1.0f);
    r1 = _647;
    float4 _664 = r1;
    _664.z = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _664;
    float4 _669 = r1;
    _669.z = rsqrt(r1.z);
    r1 = _669;
    float3 _676 = r1.zzz * shader_in[3].xyz;
    r2 = float4(_676.x, _676.y, _676.z, r2.w);
    float3 _687 = (shader_in[2].xyz * r1.xxx) + r2.xyz;
    r1 = float4(_687.x, r1.y, _687.y, _687.z);
    float4 _703 = r2;
    _703.w = mad(r1.xzw.z, r1.xzw.z, mad(r1.xzw.y, r1.xzw.y, r1.xzw.x * r1.xzw.x));
    r2 = _703;
    float4 _708 = r2;
    _708.w = rsqrt(r2.w);
    r2 = _708;
    float3 _714 = r1.xzw * r2.www;
    r1 = float4(_714.x, r1.y, _714.y, _714.z);
    float3 _719 = -r2.xyz;
    float4 _731 = r2;
    _731.x = mad(_719.z, r0.yzw.z, mad(_719.y, r0.yzw.y, _719.x * r0.yzw.x));
    r2 = _731;
    float4 _737 = r2;
    _737.x = r2.x + asfloat(1065353216u);
    r2 = _737;
    float4 _742 = r2;
    _742.x = log2(r2.x);
    r2 = _742;
    float4 _749 = r2;
    _749.x = r2.x * asfloat(1083179008u);
    r2 = _749;
    float4 _754 = r2;
    _754.x = exp2(r2.x);
    r2 = _754;
    float4 _760 = r2;
    _760.x = min(r2.x, asfloat(1065353216u));
    r2 = _760;
    float4 _776 = r0;
    _776.y = clamp(mad(r0.yzw.z, r1.xzw.z, mad(r0.yzw.y, r1.xzw.y, r0.yzw.x * r1.xzw.x)), 0.0f, 1.0f);
    r0 = _776;
    float4 _783 = r0;
    _783.y = r0.y + asfloat(925353388u);
    r0 = _783;
    float4 _790 = r0;
    _790.x = (-r0.x) + asfloat(1065353216u);
    r0 = _790;
    float4 _797 = r0;
    _797.x = r0.x * r0.y;
    r0 = _797;
    float4 _804 = r0;
    _804.x = r2.x * r0.x;
    r0 = _804;
    float4 _811 = r0;
    _811.x = r0.x * asfloat(1148846080u);
    r0 = _811;
    float3 _820 = (r3.xyz * r1.yyy) + r0.xxx;
    r0 = float4(_820.x, _820.y, _820.z, r0.w);
    float3 _833 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_833.x, _833.y, _833.z, o0.w);
    float4 _839 = o0;
    _839.w = shader_in[3].w;
    o0 = _839;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
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
