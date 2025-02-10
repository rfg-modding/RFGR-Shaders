cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _57 = r0;
    _57.w = asfloat(1065353216u);
    r0 = _57;
    float4 _72 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _87 = r1;
    _87.x = mad(_72.w, r0.w, mad(_72.z, r0.z, mad(_72.y, r0.y, _72.x * r0.x)));
    r1 = _87;
    float4 _99 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _113 = r1;
    _113.y = mad(_99.w, r0.w, mad(_99.z, r0.z, mad(_99.y, r0.y, _99.x * r0.x)));
    r1 = _113;
    float4 _125 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _139 = r1;
    _139.z = mad(_125.w, r0.w, mad(_125.z, r0.z, mad(_125.y, r0.y, _125.x * r0.x)));
    r1 = _139;
    float4 _142 = r1;
    _142.w = asfloat(1065353216u);
    r1 = _142;
    float4 _153 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _167 = o0;
    _167.x = mad(_153.w, r1.w, mad(_153.z, r1.z, mad(_153.y, r1.y, _153.x * r1.x)));
    o0 = _167;
    float4 _178 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _192 = o0;
    _192.y = mad(_178.w, r1.w, mad(_178.z, r1.z, mad(_178.y, r1.y, _178.x * r1.x)));
    o0 = _192;
    float4 _203 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _217 = o0;
    _217.z = mad(_203.w, r1.w, mad(_203.z, r1.z, mad(_203.y, r1.y, _203.x * r1.x)));
    o0 = _217;
    float4 _229 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _243 = o0;
    _243.w = mad(_229.w, r1.w, mad(_229.z, r1.z, mad(_229.y, r1.y, _229.x * r1.x)));
    o0 = _243;
    float3 _257 = shader_in[1].zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r0 = float4(_257.x, _257.y, _257.z, r0.w);
    float3 _276 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * shader_in[1].xyz) + (-r0.xyz);
    r0 = float4(_276.x, _276.y, _276.z, r0.w);
    float4 _292 = r0;
    _292.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _292;
    float4 _297 = r0;
    _297.w = rsqrt(r0.w);
    r0 = _297;
    float3 _303 = r0.www * r0.xyz;
    r0 = float4(_303.x, _303.y, _303.z, r0.w);
    float3 _311 = r0.xyz * shader_in[1].zxy;
    r1 = float4(_311.x, _311.y, _311.z, r1.w);
    float3 _323 = (shader_in[1].yzx * r0.yzx) + (-r1.xyz);
    r0 = float4(_323.x, _323.y, _323.z, r0.w);
    float4 _339 = r0;
    _339.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _339;
    float4 _344 = r0;
    _344.w = rsqrt(r0.w);
    r0 = _344;
    float3 _350 = r0.www * r0.xyz;
    r0 = float4(_350.x, _350.y, _350.z, r0.w);
    float3 _360 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _372 = r1;
    _372.x = mad(_360.z, r0.xyz.z, mad(_360.y, r0.xyz.y, _360.x * r0.xyz.x));
    r1 = _372;
    float3 _381 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _393 = r1;
    _393.y = mad(_381.z, r0.xyz.z, mad(_381.y, r0.xyz.y, _381.x * r0.xyz.x));
    r1 = _393;
    float3 _402 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _414 = r1;
    _414.z = mad(_402.z, r0.xyz.z, mad(_402.y, r0.xyz.y, _402.x * r0.xyz.x));
    r1 = _414;
    float3 _423 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _435 = o2;
    _435.x = mad(_423.z, r0.xyz.z, mad(_423.y, r0.xyz.y, _423.x * r0.xyz.x));
    o2 = _435;
    float4 _450 = r0;
    _450.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _450;
    float4 _455 = r0;
    _455.x = rsqrt(r0.x);
    r0 = _455;
    float3 _461 = r0.xxx * r1.xyz;
    r0 = float4(_461.x, _461.y, _461.z, r0.w);
    float3 _471 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _484 = r1;
    _484.x = mad(_471.z, shader_in[1].xyz.z, mad(_471.y, shader_in[1].xyz.y, _471.x * shader_in[1].xyz.x));
    r1 = _484;
    float3 _493 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _506 = r1;
    _506.y = mad(_493.z, shader_in[1].xyz.z, mad(_493.y, shader_in[1].xyz.y, _493.x * shader_in[1].xyz.x));
    r1 = _506;
    float3 _515 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _528 = r1;
    _528.z = mad(_515.z, shader_in[1].xyz.z, mad(_515.y, shader_in[1].xyz.y, _515.x * shader_in[1].xyz.x));
    r1 = _528;
    float4 _543 = r0;
    _543.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _543;
    float4 _548 = r0;
    _548.w = rsqrt(r0.w);
    r0 = _548;
    float3 _554 = r0.www * r1.xyz;
    r1 = float4(_554.x, _554.y, _554.z, r1.w);
    float3 _561 = r0.yzx * r1.zxy;
    r2 = float4(_561.x, _561.y, _561.z, r2.w);
    float3 _573 = (r1.yzx * r0.zxy) + (-r2.xyz);
    r2 = float4(_573.x, _573.y, _573.z, r2.w);
    float3 _583 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _595 = o1;
    _595.x = mad(_583.z, r0.xyz.z, mad(_583.y, r0.xyz.y, _583.x * r0.xyz.x));
    o1 = _595;
    float3 _604 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _616 = o1;
    _616.z = mad(_604.z, r1.xyz.z, mad(_604.y, r1.xyz.y, _604.x * r1.xyz.x));
    o1 = _616;
    float3 _625 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _628 = -r2.xyz;
    float3 _638 = o1;
    _638.y = mad(_625.z, _628.z, mad(_625.y, _628.y, _625.x * _628.x));
    o1 = _638;
    float3 _647 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _659 = o2;
    _659.y = mad(_647.z, r2.xyz.z, mad(_647.y, r2.xyz.y, _647.x * r2.xyz.x));
    o2 = _659;
    float3 _668 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _681 = o2;
    _681.z = mad(_668.z, shader_in[1].xyz.z, mad(_668.y, shader_in[1].xyz.y, _668.x * shader_in[1].xyz.x));
    o2 = _681;
    float3 _695 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_695.x, _695.y, _695.z, r0.w);
    float3 _707 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _717 = r1;
    _717.x = mad(r0.xyz.z, _707.z, mad(r0.xyz.y, _707.y, r0.xyz.x * _707.x));
    r1 = _717;
    float3 _728 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _738 = r1;
    _738.z = mad(r0.xyz.z, _728.z, mad(r0.xyz.y, _728.y, r0.xyz.x * _728.x));
    r1 = _738;
    float3 _749 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _759 = r0;
    _759.x = mad(r0.xyz.z, _749.z, mad(r0.xyz.y, _749.y, r0.xyz.x * _749.x));
    r0 = _759;
    float4 _768 = r0;
    _768.x = r0.x * cb5_m[5].y;
    r0 = _768;
    float2 _779 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_779.x, r1.y, _779.y, r1.w);
    float4 _784 = o2;
    _784.w = r1.z;
    o2 = _784;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _810 = r0;
    _810.y = asfloat(3212836864u);
    r0 = _810;
    float4 _817 = r1;
    _817.y = r0.x * r0.y;
    r1 = _817;
    float2 _825 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o5 = float4(_825.x, _825.y, o5.z, o5.w);
    float2 _831 = cb5_m[5].w.xx;
    o5 = float4(o5.x, o5.y, _831.x, _831.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
