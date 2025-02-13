cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static int4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _68 = r0;
    _68.x = shader_in[6].y + shader_in[6].x;
    r0 = _68;
    float4 _76 = r0;
    _76.x = r0.x + shader_in[6].z;
    r0 = _76;
    float4 _84 = r0;
    _84.x = r0.x + shader_in[6].w;
    r0 = _84;
    float4 _91 = r0;
    _91.x = asfloat(1065353216u) / r0.x;
    r0 = _91;
    float3 _106 = (shader_in[4].xyz * asfloat(uint3(1082130432u, 1082130432u, 1082130432u))) + shader_in[0].xyz;
    r1 = float4(_106.x, _106.y, _106.z, r1.w);
    float4 _111 = r1;
    _111.w = asfloat(1065353216u);
    r1 = _111;
    r2 = asfloat(asint(shader_in[7]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _128 = asint(r2.y);
    r3 = shader_in[6].yyyy * float4(cb4_m[_128].x, cb4_m[_128].y, cb4_m[_128].z, cb4_m[_128].w);
    int _150 = asint(r2.x);
    r3 = (shader_in[6].xxxx * float4(cb4_m[_150].x, cb4_m[_150].y, cb4_m[_150].z, cb4_m[_150].w)) + r3;
    int _169 = asint(r2.z);
    r3 = (shader_in[6].zzzz * float4(cb4_m[_169].x, cb4_m[_169].y, cb4_m[_169].z, cb4_m[_169].w)) + r3;
    int _188 = asint(r2.w);
    r3 = (shader_in[6].wwww * float4(cb4_m[_188].x, cb4_m[_188].y, cb4_m[_188].z, cb4_m[_188].w)) + r3;
    float4 _217 = r4;
    _217.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _217;
    int _226 = asint(r2.y) + 1;
    r5 = shader_in[6].yyyy * float4(cb4_m[_226].x, cb4_m[_226].y, cb4_m[_226].z, cb4_m[_226].w);
    int _245 = asint(r2.x) + 1;
    r5 = (shader_in[6].xxxx * float4(cb4_m[_245].x, cb4_m[_245].y, cb4_m[_245].z, cb4_m[_245].w)) + r5;
    int _265 = asint(r2.z) + 1;
    r5 = (shader_in[6].zzzz * float4(cb4_m[_265].x, cb4_m[_265].y, cb4_m[_265].z, cb4_m[_265].w)) + r5;
    int _285 = asint(r2.w) + 1;
    r5 = (shader_in[6].wwww * float4(cb4_m[_285].x, cb4_m[_285].y, cb4_m[_285].z, cb4_m[_285].w)) + r5;
    float4 _313 = r4;
    _313.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _313;
    int _322 = asint(r2.y) + 2;
    r6 = shader_in[6].yyyy * float4(cb4_m[_322].x, cb4_m[_322].y, cb4_m[_322].z, cb4_m[_322].w);
    int _341 = asint(r2.x) + 2;
    r6 = (shader_in[6].xxxx * float4(cb4_m[_341].x, cb4_m[_341].y, cb4_m[_341].z, cb4_m[_341].w)) + r6;
    int _361 = asint(r2.z) + 2;
    r6 = (shader_in[6].zzzz * float4(cb4_m[_361].x, cb4_m[_361].y, cb4_m[_361].z, cb4_m[_361].w)) + r6;
    int _381 = asint(r2.w) + 2;
    r2 = (shader_in[6].wwww * float4(cb4_m[_381].x, cb4_m[_381].y, cb4_m[_381].z, cb4_m[_381].w)) + r6;
    float4 _409 = r4;
    _409.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _409;
    float3 _415 = r0.xxx * r4.xyz;
    r1 = float4(_415.x, _415.y, _415.z, r1.w);
    float4 _419 = r1;
    _419.w = asfloat(1065353216u);
    r1 = _419;
    float4 _430 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _444 = r4;
    _444.x = mad(_430.w, r1.w, mad(_430.z, r1.z, mad(_430.y, r1.y, _430.x * r1.x)));
    r4 = _444;
    float4 _455 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _469 = r4;
    _469.y = mad(_455.w, r1.w, mad(_455.z, r1.z, mad(_455.y, r1.y, _455.x * r1.x)));
    r4 = _469;
    float4 _480 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _494 = r4;
    _494.z = mad(_480.w, r1.w, mad(_480.z, r1.z, mad(_480.y, r1.y, _480.x * r1.x)));
    r4 = _494;
    float4 _497 = r4;
    _497.w = asfloat(1065353216u);
    r4 = _497;
    float4 _508 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _522 = o0;
    _522.x = mad(_508.w, r4.w, mad(_508.z, r4.z, mad(_508.y, r4.y, _508.x * r4.x)));
    o0 = _522;
    float4 _533 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _547 = o0;
    _547.y = mad(_533.w, r4.w, mad(_533.z, r4.z, mad(_533.y, r4.y, _533.x * r4.x)));
    o0 = _547;
    float4 _558 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _572 = o0;
    _572.z = mad(_558.w, r4.w, mad(_558.z, r4.z, mad(_558.y, r4.y, _558.x * r4.x)));
    o0 = _572;
    float4 _584 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _598 = o0;
    _598.w = mad(_584.w, r4.w, mad(_584.z, r4.z, mad(_584.y, r4.y, _584.x * r4.x)));
    o0 = _598;
    float2 _604 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _604.x, _604.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _624 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _624.x, _624.y, _624.z);
    float3 _634 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_634.x, _634.y, _634.z, r1.w);
    float3 _643 = (r1.xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + r0.yzw;
    r0 = float4(r0.x, _643.x, _643.y, _643.z);
    float4 _659 = r1;
    _659.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _659;
    float4 _664 = r1;
    _664.x = rsqrt(r1.x);
    r1 = _664;
    float3 _670 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _670.x, _670.y, _670.z);
    float4 _686 = r1;
    _686.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _686;
    float4 _701 = r1;
    _701.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _701;
    float4 _716 = r1;
    _716.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _716;
    float3 _722 = r0.xxx * r1.xyz;
    r0 = float4(r0.x, _722.x, _722.y, _722.z);
    float4 _738 = r1;
    _738.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _738;
    float4 _743 = r1;
    _743.x = rsqrt(r1.x);
    r1 = _743;
    float3 _749 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _749.x, _749.y, _749.z);
    float3 _759 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _771 = r1;
    _771.x = mad(_759.z, r0.yzw.z, mad(_759.y, r0.yzw.y, _759.x * r0.yzw.x));
    r1 = _771;
    float3 _780 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _792 = r1;
    _792.y = mad(_780.z, r0.yzw.z, mad(_780.y, r0.yzw.y, _780.x * r0.yzw.x));
    r1 = _792;
    float3 _801 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _813 = r1;
    _813.z = mad(_801.z, r0.yzw.z, mad(_801.y, r0.yzw.y, _801.x * r0.yzw.x));
    r1 = _813;
    float4 _828 = r0;
    _828.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _828;
    float4 _833 = r0;
    _833.y = rsqrt(r0.y);
    r0 = _833;
    float3 _839 = r0.yyy * r1.xyz;
    r0 = float4(r0.x, _839.x, _839.y, _839.z);
    r1 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _863 = r3;
    _863.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _863;
    float4 _878 = r3;
    _878.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _878;
    float4 _893 = r3;
    _893.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _893;
    float3 _899 = r0.xxx * r3.xyz;
    r1 = float4(_899.x, _899.y, _899.z, r1.w);
    float4 _915 = r0;
    _915.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _915;
    float4 _920 = r0;
    _920.x = rsqrt(r0.x);
    r0 = _920;
    float3 _926 = r0.xxx * r1.xyz;
    r1 = float4(_926.x, _926.y, _926.z, r1.w);
    float3 _936 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _948 = r2;
    _948.x = mad(_936.z, r1.xyz.z, mad(_936.y, r1.xyz.y, _936.x * r1.xyz.x));
    r2 = _948;
    float3 _957 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _969 = r2;
    _969.y = mad(_957.z, r1.xyz.z, mad(_957.y, r1.xyz.y, _957.x * r1.xyz.x));
    r2 = _969;
    float3 _978 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _990 = r2;
    _990.z = mad(_978.z, r1.xyz.z, mad(_978.y, r1.xyz.y, _978.x * r1.xyz.x));
    r2 = _990;
    float4 _1005 = r0;
    _1005.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _1005;
    float4 _1010 = r0;
    _1010.x = rsqrt(r0.x);
    r0 = _1010;
    float3 _1016 = r0.xxx * r2.xyz;
    r1 = float4(_1016.x, _1016.y, _1016.z, r1.w);
    float3 _1023 = r0.wyz * r1.yzx;
    r2 = float4(_1023.x, _1023.y, _1023.z, r2.w);
    float3 _1034 = (r0.zwy * r1.zxy) + (-r2.xyz);
    r2 = float4(_1034.x, _1034.y, _1034.z, r2.w);
    float3 _1041 = r1.www * r2.xyz;
    r2 = float4(_1041.x, _1041.y, _1041.z, r2.w);
    float3 _1056 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r3 = float4(_1056.x, _1056.y, _1056.z, r3.w);
    float3 _1070 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r4 = float4(_1070.x, _1070.y, _1070.z, r4.w);
    float3 _1086 = o2;
    _1086.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o2 = _1086;
    float3 _1101 = o2;
    _1101.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o2 = _1101;
    float3 _1116 = o2;
    _1116.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o2 = _1116;
    float4 _1125 = r0;
    _1125.x = r4.y * cb0_m[13].x;
    r0 = _1125;
    float4 _1132 = r1;
    _1132.w = r0.x * asfloat(3216550459u);
    r1 = _1132;
    float4 _1137 = r1;
    _1137.w = exp2(r1.w);
    r1 = _1137;
    float4 _1144 = r1;
    _1144.w = (-r1.w) + asfloat(1065353216u);
    r1 = _1144;
    float4 _1151 = r0;
    _1151.x = r1.w / r0.x;
    r0 = _1151;
    float4 _1163 = r1;
    _1163.w = asfloat((asfloat(1008981770u) < abs(r4.y)) ? 4294967295u : 0u);
    r1 = _1163;
    float4 _1178 = r2;
    _1178.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r2 = _1178;
    float4 _1183 = r2;
    _1183.w = sqrt(r2.w);
    r2 = _1183;
    float4 _1191 = r2;
    _1191.w = r2.w * cb0_m[13].y;
    r2 = _1191;
    float4 _1201 = r0;
    _1201.x = (asuint(r1.w) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _1201;
    float4 _1213 = r0;
    _1213.x = (r0.x * r2.w) + (-cb0_m[13].w);
    r0 = _1213;
    float4 _1219 = r0;
    _1219.x = exp2(-r0.x);
    r0 = _1219;
    float4 _1225 = r0;
    _1225.x = min(r0.x, asfloat(1065353216u));
    r0 = _1225;
    float4 _1232 = o3;
    _1232.w = (-r0.x) + asfloat(1065353216u);
    o3 = _1232;
    float2 _1239 = float2(cb1_m[0].x, cb1_m[0].z);
    float2 _1245 = float2(cb1_m[0].x, cb1_m[0].z);
    float4 _1252 = r0;
    _1252.x = mad(_1239.y, _1245.y, _1239.x * _1245.x);
    r0 = _1252;
    float4 _1257 = r0;
    _1257.x = sqrt(r0.x);
    r0 = _1257;
    float4 _1265 = r0;
    _1265.x = asfloat((asfloat(0u) < r0.x) ? 4294967295u : 0u);
    r0 = _1265;
    float4 _1272 = r0;
    _1272.x = asfloat(asuint(r0.x) & 1065353216u);
    r0 = _1272;
    float2 _1279 = float2(cb1_m[0].x, cb1_m[0].z);
    r3 = float4(_1279.x, r3.y, _1279.y, r3.w);
    float4 _1283 = r3;
    _1283.y = asfloat(0u);
    r3 = _1283;
    float3 _1296 = r3.xyz + (-float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z));
    r3 = float4(_1296.x, _1296.y, _1296.z, r3.w);
    float3 _1312 = (r0.xxx * r3.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r3 = float4(_1312.x, _1312.y, _1312.z, r3.w);
    float4 _1328 = r0;
    _1328.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _1328;
    float4 _1333 = r0;
    _1333.x = rsqrt(r0.x);
    r0 = _1333;
    float3 _1339 = r0.xxx * r3.xyz;
    r3 = float4(_1339.x, _1339.y, _1339.z, r3.w);
    float4 _1355 = o3;
    _1355.z = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    o3 = _1355;
    float4 _1370 = o3;
    _1370.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    o3 = _1370;
    float4 _1385 = o3;
    _1385.y = mad(r3.xyz.z, r2.xyz.z, mad(r3.xyz.y, r2.xyz.y, r3.xyz.x * r2.xyz.x));
    o3 = _1385;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _1393 = asfloat(v1);
    shader_in[1] = float4(_1393.x, _1393.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = asfloat(v7);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
