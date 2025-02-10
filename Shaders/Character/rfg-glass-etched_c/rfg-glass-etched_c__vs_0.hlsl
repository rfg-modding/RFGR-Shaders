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
static int4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _67 = r0;
    _67.x = shader_in[3].y + shader_in[3].x;
    r0 = _67;
    float4 _75 = r0;
    _75.x = r0.x + shader_in[3].z;
    r0 = _75;
    float4 _83 = r0;
    _83.x = r0.x + shader_in[3].w;
    r0 = _83;
    float4 _90 = r0;
    _90.x = asfloat(1065353216u) / r0.x;
    r0 = _90;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _100 = r1;
    _100.w = asfloat(1065353216u);
    r1 = _100;
    r2 = asfloat(asint(shader_in[4]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _117 = asint(r2.y);
    r3 = shader_in[3].yyyy * float4(cb4_m[_117].x, cb4_m[_117].y, cb4_m[_117].z, cb4_m[_117].w);
    int _139 = asint(r2.x);
    r3 = (shader_in[3].xxxx * float4(cb4_m[_139].x, cb4_m[_139].y, cb4_m[_139].z, cb4_m[_139].w)) + r3;
    int _158 = asint(r2.z);
    r3 = (shader_in[3].zzzz * float4(cb4_m[_158].x, cb4_m[_158].y, cb4_m[_158].z, cb4_m[_158].w)) + r3;
    int _177 = asint(r2.w);
    r3 = (shader_in[3].wwww * float4(cb4_m[_177].x, cb4_m[_177].y, cb4_m[_177].z, cb4_m[_177].w)) + r3;
    float4 _206 = r4;
    _206.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _206;
    int _215 = asint(r2.y) + 1;
    r5 = shader_in[3].yyyy * float4(cb4_m[_215].x, cb4_m[_215].y, cb4_m[_215].z, cb4_m[_215].w);
    int _234 = asint(r2.x) + 1;
    r5 = (shader_in[3].xxxx * float4(cb4_m[_234].x, cb4_m[_234].y, cb4_m[_234].z, cb4_m[_234].w)) + r5;
    int _254 = asint(r2.z) + 1;
    r5 = (shader_in[3].zzzz * float4(cb4_m[_254].x, cb4_m[_254].y, cb4_m[_254].z, cb4_m[_254].w)) + r5;
    int _274 = asint(r2.w) + 1;
    r5 = (shader_in[3].wwww * float4(cb4_m[_274].x, cb4_m[_274].y, cb4_m[_274].z, cb4_m[_274].w)) + r5;
    float4 _302 = r4;
    _302.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _302;
    int _311 = asint(r2.y) + 2;
    r6 = shader_in[3].yyyy * float4(cb4_m[_311].x, cb4_m[_311].y, cb4_m[_311].z, cb4_m[_311].w);
    int _330 = asint(r2.x) + 2;
    r6 = (shader_in[3].xxxx * float4(cb4_m[_330].x, cb4_m[_330].y, cb4_m[_330].z, cb4_m[_330].w)) + r6;
    int _350 = asint(r2.z) + 2;
    r6 = (shader_in[3].zzzz * float4(cb4_m[_350].x, cb4_m[_350].y, cb4_m[_350].z, cb4_m[_350].w)) + r6;
    int _370 = asint(r2.w) + 2;
    r2 = (shader_in[3].wwww * float4(cb4_m[_370].x, cb4_m[_370].y, cb4_m[_370].z, cb4_m[_370].w)) + r6;
    float4 _398 = r4;
    _398.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _398;
    float3 _404 = r0.xxx * r4.xyz;
    r1 = float4(_404.x, _404.y, _404.z, r1.w);
    float4 _408 = r1;
    _408.w = asfloat(1065353216u);
    r1 = _408;
    float4 _419 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _433 = r4;
    _433.x = mad(_419.w, r1.w, mad(_419.z, r1.z, mad(_419.y, r1.y, _419.x * r1.x)));
    r4 = _433;
    float4 _444 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _458 = r4;
    _458.y = mad(_444.w, r1.w, mad(_444.z, r1.z, mad(_444.y, r1.y, _444.x * r1.x)));
    r4 = _458;
    float4 _469 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _483 = r4;
    _483.z = mad(_469.w, r1.w, mad(_469.z, r1.z, mad(_469.y, r1.y, _469.x * r1.x)));
    r4 = _483;
    float4 _486 = r4;
    _486.w = asfloat(1065353216u);
    r4 = _486;
    float4 _497 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _511 = o0;
    _511.x = mad(_497.w, r4.w, mad(_497.z, r4.z, mad(_497.y, r4.y, _497.x * r4.x)));
    o0 = _511;
    float4 _522 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _536 = o0;
    _536.y = mad(_522.w, r4.w, mad(_522.z, r4.z, mad(_522.y, r4.y, _522.x * r4.x)));
    o0 = _536;
    float4 _547 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _561 = o0;
    _561.z = mad(_547.w, r4.w, mad(_547.z, r4.z, mad(_547.y, r4.y, _547.x * r4.x)));
    o0 = _561;
    float4 _572 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _586 = o0;
    _586.w = mad(_572.w, r4.w, mad(_572.z, r4.z, mad(_572.y, r4.y, _572.x * r4.x)));
    o0 = _586;
    float2 _592 = float2(asint(shader_in[1].xy));
    r0 = float4(r0.x, _592.x, _592.y, r0.w);
    o1 = r0.yz * asfloat(uint2(981467136u, 981467136u));
    float3 _613 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _613.x, _613.y, _613.z);
    float4 _629 = r1;
    _629.x = mad(r3.xyz.z, r0.yzw.z, mad(r3.xyz.y, r0.yzw.y, r3.xyz.x * r0.yzw.x));
    r1 = _629;
    float4 _644 = r1;
    _644.y = mad(r5.xyz.z, r0.yzw.z, mad(r5.xyz.y, r0.yzw.y, r5.xyz.x * r0.yzw.x));
    r1 = _644;
    float4 _659 = r1;
    _659.z = mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x));
    r1 = _659;
    float3 _665 = r0.xxx * r1.xyz;
    r0 = float4(_665.x, _665.y, _665.z, r0.w);
    float4 _681 = r0;
    _681.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _681;
    float4 _686 = r0;
    _686.w = rsqrt(r0.w);
    r0 = _686;
    float3 _692 = r0.www * r0.xyz;
    r0 = float4(_692.x, _692.y, _692.z, r0.w);
    float3 _702 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _714 = r1;
    _714.x = mad(_702.z, r0.xyz.z, mad(_702.y, r0.xyz.y, _702.x * r0.xyz.x));
    r1 = _714;
    float3 _723 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _735 = r1;
    _735.y = mad(_723.z, r0.xyz.z, mad(_723.y, r0.xyz.y, _723.x * r0.xyz.x));
    r1 = _735;
    float3 _744 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _756 = r1;
    _756.z = mad(_744.z, r0.xyz.z, mad(_744.y, r0.xyz.y, _744.x * r0.xyz.x));
    r1 = _756;
    float4 _771 = r0;
    _771.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _771;
    float4 _776 = r0;
    _776.x = rsqrt(r0.x);
    r0 = _776;
    float3 _782 = r0.xxx * r1.xyz;
    r0 = float4(_782.x, _782.y, _782.z, r0.w);
    o2 = r0.xyz;
    float4 _797 = o5;
    _797.w = clamp((r0.y * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    o5 = _797;
    o3 = float4(r4.xyz.x, r4.xyz.y, r4.xyz.z, o3.w);
    float3 _815 = r4.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_815.x, _815.y, _815.z, r0.w);
    float4 _819 = o3;
    _819.w = asfloat(0u);
    o3 = _819;
    float4 _828 = r0;
    _828.w = r0.y * cb0_m[13].x;
    r0 = _828;
    float4 _835 = r1;
    _835.x = r0.w * asfloat(3216550459u);
    r1 = _835;
    float4 _840 = r1;
    _840.x = exp2(r1.x);
    r1 = _840;
    float4 _847 = r1;
    _847.x = (-r1.x) + asfloat(1065353216u);
    r1 = _847;
    float4 _854 = r0;
    _854.w = r1.x / r0.w;
    r0 = _854;
    float4 _866 = r1;
    _866.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _866;
    float4 _881 = r0;
    _881.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _881;
    float4 _886 = r0;
    _886.x = sqrt(r0.x);
    r0 = _886;
    float4 _894 = r0;
    _894.x = r0.x * cb0_m[13].y;
    r0 = _894;
    float4 _904 = r0;
    _904.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _904;
    float4 _916 = r0;
    _916.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _916;
    float4 _922 = r0;
    _922.x = exp2(-r0.x);
    r0 = _922;
    float4 _928 = r0;
    _928.x = min(r0.x, asfloat(1065353216u));
    r0 = _928;
    float4 _935 = o4;
    _935.w = (-r0.x) + asfloat(1065353216u);
    o4 = _935;
    float3 _944 = float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    o4 = float4(_944.x, _944.y, _944.z, o4.w);
    float3 _954 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o5 = float4(_954.x, _954.y, _954.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _963 = asfloat(v1);
    shader_in[1] = float4(_963.x, _963.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = asfloat(v4);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
