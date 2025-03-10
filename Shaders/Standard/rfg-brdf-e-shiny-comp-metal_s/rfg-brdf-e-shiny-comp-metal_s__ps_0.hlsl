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
    float4 cb2_m[9] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float3 v1;
static float3 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
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
static float4 r5;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
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
    float3 _157 = (cb2_m[7].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_157.x, _157.y, _157.z, r0.w);
    float4 _173 = r0;
    _173.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _173;
    float4 _178 = r0;
    _178.w = rsqrt(r0.w);
    r0 = _178;
    float3 _184 = r0.www * r0.xyz;
    r0 = float4(_184.x, _184.y, _184.z, r0.w);
    float4 _203 = r0;
    _203.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _203;
    float4 _208 = r0;
    _208.w = rsqrt(r0.w);
    r0 = _208;
    float3 _215 = r0.www * shader_in[2].xyz;
    r1 = float4(_215.x, _215.y, _215.z, r1.w);
    float4 _231 = r1;
    _231.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _231;
    float4 _237 = r1;
    _237.x = max(r1.x, asfloat(0u));
    r1 = _237;
    float4 _244 = r1;
    _244.y = (-r1.x) + asfloat(1065353216u);
    r1 = _244;
    float4 _262 = r1;
    _262.z = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r1 = _262;
    float4 _267 = r1;
    _267.z = rsqrt(r1.z);
    r1 = _267;
    float3 _274 = r1.zzz * shader_in[1].xyz;
    r2 = float4(_274.x, _274.y, _274.z, r2.w);
    float4 _291 = r1;
    _291.z = mad(r2.xyz.z, r0.xyz.z, mad(r2.xyz.y, r0.xyz.y, r2.xyz.x * r0.xyz.x));
    r1 = _291;
    float3 _301 = (shader_in[2].xyz * r0.www) + r2.xyz;
    r2 = float4(_301.x, _301.y, _301.z, r2.w);
    float4 _311 = r0;
    _311.w = (r1.z * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _311;
    float4 _317 = r1;
    _317.z = max(r1.z, asfloat(0u));
    r1 = _317;
    float4 _323 = r0;
    _323.w = max(r0.w, asfloat(0u));
    r0 = _323;
    float4 _330 = r1;
    _330.y = r1.y * r0.w;
    r1 = _330;
    float2 _336 = r1.xy * r1.zy;
    r1 = float4(_336.x, r1.y, r1.z, _336.y);
    float4 _344 = r1;
    _344.y = r1.w * r1.y;
    r1 = _344;
    float4 _351 = r0;
    _351.w = r0.w * r1.y;
    r0 = _351;
    float4 _361 = r0;
    _361.w = clamp(r0.w * asfloat(1082130432u), 0.0f, 1.0f);
    r0 = _361;
    float4 _366 = r1;
    _366.x = log2(r1.x);
    r1 = _366;
    float4 _373 = r1;
    _373.x = r1.x * asfloat(1074580685u);
    r1 = _373;
    float4 _378 = r1;
    _378.x = exp2(r1.x);
    r1 = _378;
    float3 _391 = r1.xxx * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r1 = float4(_391.x, _391.y, r1.z, _391.z);
    float4 _399 = r2;
    _399.w = r1.z * r1.z;
    r2 = _399;
    float4 _406 = r2;
    _406.w = r2.w * r2.w;
    r2 = _406;
    float4 _413 = r2;
    _413.w = r1.z * r2.w;
    r2 = _413;
    float3 _428 = (float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z) * r2.www) + r1.xyw;
    r1 = float4(_428.x, _428.y, r1.z, _428.z);
    float3 _444 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r0.www) + r1.xyw;
    r1 = float4(_444.x, _444.y, r1.z, _444.z);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _467 = r3.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r4 = float4(_467.x, _467.y, _467.z, r4.w);
    r5 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float4 _486 = r0;
    _486.w = r5.w * cb2_m[7].z;
    r0 = _486;
    float3 _502 = ((-r3.xyz) * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z)) + r5.xyz;
    r3 = float4(_502.x, _502.y, _502.z, r3.w);
    float4 _514 = r2;
    _514.w = ((-r5.w) * cb2_m[7].z) + asfloat(1065353216u);
    r2 = _514;
    float3 _523 = (r0.www * r3.xyz) + r4.xyz;
    r3 = float4(_523.x, _523.y, _523.z, r3.w);
    float3 _530 = r1.xyw * r3.xyz;
    r1 = float4(_530.x, _530.y, r1.z, _530.z);
    float4 _546 = r0;
    _546.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _546;
    float4 _551 = r0;
    _551.w = rsqrt(r0.w);
    r0 = _551;
    float3 _557 = r0.www * r2.xyz;
    r2 = float4(_557.x, _557.y, _557.z, r2.w);
    float4 _573 = r0;
    _573.w = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _573;
    float4 _590 = r0;
    _590.x = mad(r0.xyz.z, shader_in[3].xyz.z, mad(r0.xyz.y, shader_in[3].xyz.y, r0.xyz.x * shader_in[3].xyz.x));
    r0 = _590;
    float4 _599 = r0;
    _599.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _599;
    float4 _605 = r0;
    _605.y = max(r0.w, asfloat(0u));
    r0 = _605;
    float4 _612 = r0;
    _612.y = r0.y + asfloat(953267991u);
    r0 = _612;
    float4 _617 = r0;
    _617.y = log2(r0.y);
    r0 = _617;
    float2 _626 = r0.yy * asfloat(uint2(1132593152u, 1109393408u));
    r0 = float4(r0.x, _626.x, _626.y, r0.w);
    float2 _631 = exp2(r0.yz);
    r0 = float4(r0.x, _631.x, _631.y, r0.w);
    float2 _638 = min(r0.yz, asfloat(uint2(1065353216u, 1065353216u)));
    r0 = float4(r0.x, _638.x, _638.y, r0.w);
    float2 _651 = (r0.yz * asfloat(uint2(1067030938u, 1069547520u))) + asfloat(uint2(0u, 3184315597u));
    r2 = float4(_651.x, _651.y, r2.z, r2.w);
    float4 _655 = r2;
    _655.z = asfloat(1065353216u);
    r2 = _655;
    float3 _661 = max(r2.xyz, asfloat(uint3(0u, 0u, 0u)));
    r0 = float4(r0.x, _661.x, _661.y, _661.z);
    float4 _673 = r2;
    _673.x = asfloat((r1.z >= asfloat(981668463u)) ? 4294967295u : 0u);
    r2 = _673;
    float4 _680 = r2;
    _680.x = asfloat(asuint(r2.x) & 1065353216u);
    r2 = _680;
    float3 _686 = r0.yzw * r2.xxx;
    r0 = float4(r0.x, _686.x, _686.y, _686.z);
    float3 _693 = r1.zzz * r0.yzw;
    r0 = float4(r0.x, _693.x, _693.y, _693.z);
    r4 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float3 _708 = r0.yzw * r4.xyz;
    r0 = float4(r0.x, _708.x, _708.y, _708.z);
    float3 _721 = r0.zzz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r2 = float4(_721.x, _721.y, _721.z, r2.w);
    float3 _737 = (float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z) * r0.yyy) + r2.xyz;
    r2 = float4(_737.x, _737.y, _737.z, r2.w);
    float3 _754 = (float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z) * r0.www) + r2.xyz;
    r0 = float4(r0.x, _754.x, _754.y, _754.z);
    float3 _764 = r0.yzw * cb2_m[8].x.xxx;
    r0 = float4(r0.x, _764.x, _764.y, _764.z);
    float3 _771 = r2.www * r0.yzw;
    r0 = float4(r0.x, _771.x, _771.y, _771.z);
    float2 _783 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_783.x, _783.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _798 = r1;
    _798.z = max(r2.y, asfloat(1028443341u));
    r1 = _798;
    float3 _804 = r0.yzw * r1.zzz;
    r0 = float4(r0.x, _804.x, _804.y, _804.z);
    float3 _814 = (r1.xyw * r2.yyy) + r0.yzw;
    r0 = float4(r0.x, _814.x, _814.y, _814.z);
    float3 _827 = r0.yzw * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(r0.x, _827.x, _827.y, _827.z);
    float4 _836 = r1;
    _836.x = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _836;
    float4 _845 = r1;
    _845.x = abs(r1.x) + abs(r1.x);
    r1 = _845;
    float4 _855 = r1;
    _855.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _855;
    float4 _861 = r1;
    _861.x = max(r1.x, asfloat(0u));
    r1 = _861;
    float4 _869 = r1;
    _869.x = r1.x * cb0_m[7].y;
    r1 = _869;
    float3 _893 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _893.x, _893.y, _893.z);
    float3 _909 = (r0.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _909.x, _909.y, _909.z);
    float3 _923 = (-r1.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r2 = float4(r2.x, _923.x, _923.y, _923.z);
    float3 _933 = (r1.xxx * r2.yzw) + r1.yzw;
    r1 = float4(_933.x, _933.y, _933.z, r1.w);
    float3 _940 = r2.xxx * r1.xyz;
    r1 = float4(_940.x, _940.y, _940.z, r1.w);
    float3 _950 = (r1.xyz * r3.xyz) + r0.yzw;
    r0 = float4(_950.x, _950.y, _950.z, r0.w);
    float4 _959 = r0;
    _959.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _959;
    float3 _965 = r0.xyz * r0.www;
    r0 = float4(_965.x, _965.y, _965.z, r0.w);
    float3 _982 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_982.x, _982.y, _982.z, r0.w);
    float4 _986 = r0;
    _986.w = asfloat(1065353216u);
    r0 = _986;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    float4 _1014 = gl_FragCoord;
    _1014.w = 1.0f / _1014.w;
    shader_in[0] = float4(_1014.xy.x, _1014.xy.y, shader_in[0].z, shader_in[0].w);
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
