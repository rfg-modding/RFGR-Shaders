cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[4] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float4 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
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
static float4 o1;
static float4 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _62 = r1;
    _62.w = asfloat(1065353216u);
    r1 = _62;
    float4 _80 = r0;
    _80.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _80;
    float4 _98 = r0;
    _98.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _98;
    float4 _116 = r0;
    _116.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _116;
    float4 _133 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _147 = o0;
    _147.x = mad(_133.w, r0.w, mad(_133.z, r0.z, mad(_133.y, r0.y, _133.x * r0.x)));
    o0 = _147;
    float4 _159 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _173 = o0;
    _173.y = mad(_159.w, r0.w, mad(_159.z, r0.z, mad(_159.y, r0.y, _159.x * r0.x)));
    o0 = _173;
    float4 _185 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _199 = o0;
    _199.z = mad(_185.w, r0.w, mad(_185.z, r0.z, mad(_185.y, r0.y, _185.x * r0.x)));
    o0 = _199;
    float4 _211 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _225 = o0;
    _225.w = mad(_211.w, r0.w, mad(_211.z, r0.z, mad(_211.y, r0.y, _211.x * r0.x)));
    o0 = _225;
    float3 _238 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_238.x, _238.y, _238.z, r1.w);
    float4 _256 = r2;
    _256.x = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _256;
    float4 _272 = r2;
    _272.y = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _272;
    float4 _288 = r2;
    _288.z = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _288;
    float4 _303 = r0;
    _303.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _303;
    float4 _308 = r0;
    _308.w = rsqrt(r0.w);
    r0 = _308;
    float3 _314 = r0.www * r2.xyz;
    r1 = float4(_314.x, _314.y, _314.z, r1.w);
    float3 _329 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r2 = float4(_329.x, _329.y, _329.z, r2.w);
    float4 _345 = r0;
    _345.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _345;
    float4 _350 = r0;
    _350.w = rsqrt(r0.w);
    r0 = _350;
    float3 _356 = r0.www * r2.xyz;
    r2 = float4(_356.x, _356.y, _356.z, r2.w);
    float4 _372 = r0;
    _372.w = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r0 = _372;
    float4 _381 = r1;
    _381.w = abs(r0.w) * abs(r0.w);
    r1 = _381;
    float4 _393 = r2;
    _393.x = asfloat((asfloat(1056964608u) < cb2_m[3].y) ? 4294967295u : 0u);
    r2 = _393;
    float4 _402 = r2;
    _402.x = (asuint(r2.x) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r2 = _402;
    float4 _413 = r0;
    _413.w = (abs(r0.w) * r1.w) + r2.x;
    r0 = _413;
    float4 _419 = o1;
    _419.z = min(r0.w, asfloat(1065353216u));
    o1 = _419;
    float3 _432 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_432.x, _432.y, _432.z, r2.w);
    float3 _446 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_446.x, _446.y, _446.z, r0.w);
    float4 _462 = r0;
    _462.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _462;
    float4 _467 = r1;
    _467.w = rsqrt(r0.w);
    r1 = _467;
    float4 _472 = r0;
    _472.w = sqrt(r0.w);
    r0 = _472;
    float4 _488 = r0;
    _488.w = clamp(((-r0.w) * cb1_m[2].y) + cb1_m[2].x, 0.0f, 1.0f);
    r0 = _488;
    float3 _494 = r1.www * r2.xyz;
    r2 = float4(_494.x, _494.y, _494.z, r2.w);
    float4 _510 = r1;
    _510.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _510;
    float3 _514 = -r2.xyz;
    float3 _522 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _532 = r1;
    _532.y = mad(_514.z, _522.z, mad(_514.y, _522.y, _514.x * _522.x));
    r1 = _532;
    float4 _540 = r1;
    _540.y = min(r1.y, cb1_m[3].x);
    r1 = _540;
    float4 _549 = r1;
    _549.y = r1.y + (-cb1_m[3].y);
    r1 = _549;
    float4 _555 = r1;
    _555.y = max(r1.y, asfloat(0u));
    r1 = _555;
    float4 _563 = r1;
    _563.y = r1.y * cb1_m[3].z;
    r1 = _563;
    float4 _571 = o1;
    _571.w = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    o1 = _571;
    float4 _577 = r1;
    _577.x = max(r1.x, asfloat(0u));
    r1 = _577;
    float4 _592 = r0;
    _592.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _592;
    float4 _597 = r0;
    _597.x = sqrt(r0.x);
    r0 = _597;
    float2 _613 = clamp((r0.xx * shader_in[7].zx) + shader_in[7].yw, 0.0f.xx, 1.0f.xx);
    o1 = float4(_613.x, _613.y, o1.z, o1.w);
    float4 _623 = r0;
    _623.x = r0.x * cb0_m[13].y;
    r0 = _623;
    float4 _632 = r0;
    _632.z = asfloat((asfloat(0u) < cb1_m[3].w) ? 4294967295u : 0u);
    r0 = _632;
    float4 _642 = r0;
    _642.z = (asuint(r0.z) != 0u) ? r1.y : asfloat(1065353216u);
    r0 = _642;
    float4 _649 = r0;
    _649.z = r0.z * r0.w;
    r0 = _649;
    float4 _656 = o2;
    _656.w = r0.z * r1.x;
    o2 = _656;
    float3 _669 = shader_in[2].zyx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    o2 = float4(_669.x, _669.y, _669.z, o2.w);
    float4 _678 = r0;
    _678.z = r0.y * cb0_m[13].x;
    r0 = _678;
    float4 _688 = r0;
    _688.y = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r0 = _688;
    float4 _695 = r0;
    _695.w = r0.z * asfloat(3216550459u);
    r0 = _695;
    float4 _700 = r0;
    _700.w = exp2(r0.w);
    r0 = _700;
    float4 _707 = r0;
    _707.w = (-r0.w) + asfloat(1065353216u);
    r0 = _707;
    float4 _714 = r0;
    _714.z = r0.w / r0.z;
    r0 = _714;
    float4 _724 = r0;
    _724.y = (asuint(r0.y) != 0u) ? r0.z : asfloat(1065353216u);
    r0 = _724;
    float4 _736 = r0;
    _736.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _736;
    float4 _742 = r0;
    _742.x = exp2(-r0.x);
    r0 = _742;
    float4 _748 = r0;
    _748.x = min(r0.x, asfloat(1065353216u));
    r0 = _748;
    float3 _755 = o3;
    _755.z = (-r0.x) + asfloat(1065353216u);
    o3 = _755;
    float2 _761 = float2(asint(shader_in[1].xy));
    r0 = float4(_761.x, _761.y, r0.z, r0.w);
    float2 _770 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float3(_770.x, _770.y, o3.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _779 = asfloat(v1);
    shader_in[1] = float4(_779.x, _779.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
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
