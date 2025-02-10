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
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 gl_FragCoord : VPOS;
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
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[5].xyxx.xy);
    float3 _84 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _84.x, _84.y, _84.z);
    float4 _93 = r0;
    _93.y = r0.y + r0.y;
    r0 = _93;
    float4 _100 = r1;
    _100.x = r1.w * r1.y;
    r1 = _100;
    float4 _112 = r0;
    _112.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _112;
    float4 _116 = r0;
    _116.x = r1.x;
    r0 = _116;
    float4 _124 = r0;
    _124.w = (-r0.w) + asfloat(1065353216u);
    r0 = _124;
    float4 _131 = r0;
    _131.w = max(r0.w, asfloat(0u));
    r0 = _131;
    float4 _136 = r0;
    _136.z = sqrt(r0.w);
    r0 = _136;
    float3 _143 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_143.x, _143.y, _143.z, r0.w);
    float3 _159 = (cb2_m[7].y.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_159.x, _159.y, _159.z, r0.w);
    float4 _175 = r0;
    _175.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _175;
    float4 _180 = r0;
    _180.w = rsqrt(r0.w);
    r0 = _180;
    float3 _186 = r0.www * r0.xyz;
    r0 = float4(_186.x, _186.y, _186.z, r0.w);
    float4 _205 = r0;
    _205.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _205;
    float4 _210 = r0;
    _210.w = rsqrt(r0.w);
    r0 = _210;
    float3 _217 = r0.www * shader_in[2].xyz;
    r1 = float4(_217.x, _217.y, _217.z, r1.w);
    float4 _233 = r0;
    _233.w = mad(r1.xyz.z, r0.xyz.z, mad(r1.xyz.y, r0.xyz.y, r1.xyz.x * r0.xyz.x));
    r0 = _233;
    float4 _242 = r1;
    _242.w = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _242;
    float4 _248 = r0;
    _248.w = max(r0.w, asfloat(0u));
    r0 = _248;
    float4 _255 = r1;
    _255.w = r1.w * r1.w;
    r1 = _255;
    float4 _262 = r1;
    _262.w = r1.w * r1.w;
    r1 = _262;
    float4 _270 = r2;
    _270.x = r1.w * r1.w;
    r2 = _270;
    float3 _284 = r1.www * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(r2.x, _284.x, _284.y, _284.z);
    float4 _292 = r1;
    _292.w = r2.x * r2.x;
    r1 = _292;
    float3 _307 = (r1.www * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r2.yzw;
    r2 = float4(_307.x, _307.y, _307.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[5].xyxx.xy);
    float3 _329 = r3.xyz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r4 = float4(_329.x, _329.y, _329.z, r4.w);
    r5 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[1].xyxx.xy);
    float3 _356 = ((-r3.xyz) * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) + r5.xyz;
    r3 = float4(_356.x, _356.y, _356.z, r3.w);
    float4 _365 = r1;
    _365.w = r5.w * cb2_m[7].x;
    r1 = _365;
    float3 _374 = (r1.www * r3.xyz) + r4.xyz;
    r3 = float4(_374.x, _374.y, _374.z, r3.w);
    r4 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[5].zwzz.xy);
    float3 _390 = (-r3.xyz) + r4.xyz;
    r6 = float4(_390.x, _390.y, _390.z, r6.w);
    float4 _401 = r2;
    _401.w = r4.w * cb2_m[6].x;
    r2 = _401;
    float3 _410 = (r2.www * r6.xyz) + r3.xyz;
    r3 = float4(_410.x, _410.y, _410.z, r3.w);
    float4 _419 = r3;
    _419.w = (-cb2_m[6].y) + asfloat(1065353216u);
    r3 = _419;
    float4 _426 = r3;
    _426.w = r1.w * r3.w;
    r3 = _426;
    float4 _435 = r1;
    _435.w = (r1.w * r2.w) + asfloat(1065353216u);
    r1 = _435;
    float4 _442 = r2;
    _442.w = r2.w * r3.w;
    r2 = _442;
    float4 _454 = r1;
    _454.w = ((-r5.w) * cb2_m[7].x) + r1.w;
    r1 = _454;
    float3 _461 = (-r4.xyz) + r5.xyz;
    r4 = float4(_461.x, _461.y, _461.z, r4.w);
    float4 _474 = r1;
    _474.w = ((-r4.w) * cb2_m[6].x) + r1.w;
    r1 = _474;
    float3 _483 = (r2.www * r4.xyz) + r3.xyz;
    r3 = float4(_483.x, _483.y, _483.z, r3.w);
    float3 _490 = r2.xyz * r3.xyz;
    r2 = float4(_490.x, _490.y, _490.z, r2.w);
    float4 _509 = r2;
    _509.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r2 = _509;
    float4 _514 = r2;
    _514.w = rsqrt(r2.w);
    r2 = _514;
    float3 _524 = (shader_in[3].xyz * r2.www) + r1.xyz;
    r1 = float4(_524.x, _524.y, _524.z, r1.w);
    float4 _540 = r2;
    _540.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r2 = _540;
    float4 _545 = r2;
    _545.w = rsqrt(r2.w);
    r2 = _545;
    float3 _551 = r1.xyz * r2.www;
    r1 = float4(_551.x, _551.y, _551.z, r1.w);
    float4 _567 = r1;
    _567.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _567;
    float4 _584 = r0;
    _584.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _584;
    float4 _595 = r0;
    _595.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _595;
    float4 _601 = r0;
    _601.y = max(r1.x, asfloat(0u));
    r0 = _601;
    float4 _606 = r0;
    _606.y = log2(r0.y);
    r0 = _606;
    float3 _615 = r0.yyy * asfloat(uint3(1115684864u, 1107296256u, 1098907648u));
    r1 = float4(_615.x, _615.y, _615.z, r1.w);
    float3 _620 = exp2(r1.xyz);
    r1 = float4(_620.x, _620.y, _620.z, r1.w);
    r4 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].xyxx.xy);
    float3 _635 = r1.xyz * r4.xyz;
    r1 = float4(_635.x, _635.y, _635.z, r1.w);
    float3 _645 = clamp(r1.xyz + r1.xyz, 0.0f.xxx, 1.0f.xxx);
    r1 = float4(_645.x, _645.y, _645.z, r1.w);
    float3 _658 = r1.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r4 = float4(_658.x, _658.y, _658.z, r4.w);
    float3 _674 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r1.xxx) + r4.xyz;
    r4 = float4(_674.x, _674.y, _674.z, r4.w);
    float3 _690 = (float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z) * r1.zzz) + r4.xyz;
    r1 = float4(_690.x, _690.y, _690.z, r1.w);
    float3 _699 = r1.xyz * cb2_m[7].z.xxx;
    r1 = float4(_699.x, _699.y, _699.z, r1.w);
    float3 _706 = r0.www * r1.xyz;
    r0 = float4(r0.x, _706.x, _706.y, _706.z);
    float3 _713 = r1.www * r0.yzw;
    r0 = float4(r0.x, _713.x, _713.y, _713.z);
    float2 _726 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_726.x, _726.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float4 _741 = r1;
    _741.z = max(r1.y, asfloat(1028443341u));
    r1 = _741;
    float3 _747 = r0.yzw * r1.zzz;
    r0 = float4(r0.x, _747.x, _747.y, _747.z);
    float3 _757 = (r2.xyz * r1.yyy) + r0.yzw;
    r0 = float4(r0.x, _757.x, _757.y, _757.z);
    float3 _770 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _770.x, _770.y, _770.z);
    float4 _779 = r1;
    _779.y = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _779;
    float4 _788 = r1;
    _788.y = abs(r1.y) + abs(r1.y);
    r1 = _788;
    float4 _798 = r1;
    _798.y = ((-r1.y) * r1.y) + asfloat(1065353216u);
    r1 = _798;
    float4 _804 = r1;
    _804.y = max(r1.y, asfloat(0u));
    r1 = _804;
    float4 _812 = r1;
    _812.y = r1.y * cb0_m[7].y;
    r1 = _812;
    float3 _836 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(_836.x, _836.y, _836.z, r2.w);
    float3 _852 = (r0.xxx * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(_852.x, _852.y, _852.z, r2.w);
    float3 _866 = (-r2.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r4 = float4(_866.x, _866.y, _866.z, r4.w);
    float3 _876 = (r1.yyy * r4.xyz) + r2.xyz;
    r1 = float4(r1.x, _876.x, _876.y, _876.z);
    float3 _883 = r1.xxx * r1.yzw;
    r1 = float4(_883.x, _883.y, _883.z, r1.w);
    float3 _893 = (r1.xyz * r3.xyz) + r0.yzw;
    r0 = float4(_893.x, _893.y, _893.z, r0.w);
    float4 _902 = r0;
    _902.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _902;
    float3 _908 = r0.xyz * r0.www;
    r0 = float4(_908.x, _908.y, _908.z, r0.w);
    float3 _925 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_925.x, _925.y, _925.z, r0.w);
    float4 _929 = r0;
    _929.w = asfloat(1065353216u);
    r0 = _929;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _961 = gl_FragCoord;
    _961.w = 1.0f / _961.w;
    shader_in[0] = float4(_961.xy.x, _961.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
