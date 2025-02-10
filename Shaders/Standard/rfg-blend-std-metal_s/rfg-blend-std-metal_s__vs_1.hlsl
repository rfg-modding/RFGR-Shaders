cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
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
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _57 = r0;
    _57.w = asfloat(1065353216u);
    r0 = _57;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _67 = r1;
    _67.w = asfloat(1065353216u);
    r1 = _67;
    float4 _82 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _96 = r0;
    _96.x = mad(_82.w, r1.w, mad(_82.z, r1.z, mad(_82.y, r1.y, _82.x * r1.x)));
    r0 = _96;
    float4 _108 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _122 = r0;
    _122.y = mad(_108.w, r1.w, mad(_108.z, r1.z, mad(_108.y, r1.y, _108.x * r1.x)));
    r0 = _122;
    float4 _134 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _148 = r0;
    _148.z = mad(_134.w, r1.w, mad(_134.z, r1.z, mad(_134.y, r1.y, _134.x * r1.x)));
    r0 = _148;
    float4 _159 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _173 = o0;
    _173.x = mad(_159.w, r0.w, mad(_159.z, r0.z, mad(_159.y, r0.y, _159.x * r0.x)));
    o0 = _173;
    float4 _184 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _198 = o0;
    _198.y = mad(_184.w, r0.w, mad(_184.z, r0.z, mad(_184.y, r0.y, _184.x * r0.x)));
    o0 = _198;
    float4 _209 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _223 = o0;
    _223.z = mad(_209.w, r0.w, mad(_209.z, r0.z, mad(_209.y, r0.y, _209.x * r0.x)));
    o0 = _223;
    float4 _235 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _249 = o0;
    _249.w = mad(_235.w, r0.w, mad(_235.z, r0.z, mad(_235.y, r0.y, _235.x * r0.x)));
    o0 = _249;
    float2 _255 = float2(asint(shader_in[1].xy));
    r1 = float4(_255.x, _255.y, r1.z, r1.w);
    float2 _266 = r1.xy * float2(cb2_m[3].x, cb2_m[3].y);
    r1 = float4(_266.x, _266.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _287 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_287.x, _287.y, _287.z, r1.w);
    float3 _297 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _310 = r2;
    _310.x = mad(_297.z, r1.xyz.z, mad(_297.y, r1.xyz.y, _297.x * r1.xyz.x));
    r2 = _310;
    float3 _319 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _331 = r2;
    _331.y = mad(_319.z, r1.xyz.z, mad(_319.y, r1.xyz.y, _319.x * r1.xyz.x));
    r2 = _331;
    float3 _340 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _352 = r2;
    _352.z = mad(_340.z, r1.xyz.z, mad(_340.y, r1.xyz.y, _340.x * r1.xyz.x));
    r2 = _352;
    float4 _367 = r0;
    _367.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _367;
    float4 _372 = r0;
    _372.w = rsqrt(r0.w);
    r0 = _372;
    float3 _378 = r0.www * r2.xyz;
    r1 = float4(_378.x, _378.y, _378.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _397 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _410 = r3;
    _410.x = mad(_397.z, r2.xyz.z, mad(_397.y, r2.xyz.y, _397.x * r2.xyz.x));
    r3 = _410;
    float3 _419 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _431 = r3;
    _431.y = mad(_419.z, r2.xyz.z, mad(_419.y, r2.xyz.y, _419.x * r2.xyz.x));
    r3 = _431;
    float3 _440 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _452 = r3;
    _452.z = mad(_440.z, r2.xyz.z, mad(_440.y, r2.xyz.y, _440.x * r2.xyz.x));
    r3 = _452;
    float4 _467 = r0;
    _467.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _467;
    float4 _472 = r0;
    _472.w = rsqrt(r0.w);
    r0 = _472;
    float3 _478 = r0.www * r3.xyz;
    r2 = float4(_478.x, _478.y, _478.z, r2.w);
    float3 _485 = r1.zxy * r2.yzx;
    r3 = float4(_485.x, _485.y, _485.z, r3.w);
    float3 _496 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_496.x, _496.y, _496.z, r3.w);
    float3 _503 = r2.www * r3.xyz;
    r3 = float4(_503.x, _503.y, _503.z, r3.w);
    float3 _517 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_517.x, _517.y, _517.z, r4.w);
    float3 _534 = o2;
    _534.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _534;
    float3 _549 = o2;
    _549.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _549;
    float3 _564 = o2;
    _564.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _564;
    float3 _578 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_578.x, _578.y, _578.z, r4.w);
    float3 _592 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_592.x, _592.y, _592.z, r0.w);
    float4 _608 = r0;
    _608.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _608;
    float4 _613 = r0;
    _613.w = rsqrt(r0.w);
    r0 = _613;
    float3 _619 = r0.www * r4.xyz;
    r4 = float4(_619.x, _619.y, _619.z, r4.w);
    float3 _635 = o3;
    _635.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _635;
    float3 _644 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _656 = o4;
    _656.x = mad(_644.z, r2.xyz.z, mad(_644.y, r2.xyz.y, _644.x * r2.xyz.x));
    o4 = _656;
    float3 _671 = o3;
    _671.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _671;
    float3 _680 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _692 = o4;
    _692.z = mad(_680.z, r1.xyz.z, mad(_680.y, r1.xyz.y, _680.x * r1.xyz.x));
    o4 = _692;
    float3 _707 = o3;
    _707.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _707;
    float3 _716 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _728 = o4;
    _728.y = mad(_716.z, r3.xyz.z, mad(_716.y, r3.xyz.y, _716.x * r3.xyz.x));
    o4 = _728;
    float4 _737 = r0;
    _737.w = r0.y * cb0_m[13].x;
    r0 = _737;
    float4 _744 = r1;
    _744.x = r0.w * asfloat(3216550459u);
    r1 = _744;
    float4 _749 = r1;
    _749.x = exp2(r1.x);
    r1 = _749;
    float4 _756 = r1;
    _756.x = (-r1.x) + asfloat(1065353216u);
    r1 = _756;
    float4 _763 = r0;
    _763.w = r1.x / r0.w;
    r0 = _763;
    float4 _775 = r1;
    _775.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _775;
    float4 _790 = r0;
    _790.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _790;
    float4 _795 = r0;
    _795.x = sqrt(r0.x);
    r0 = _795;
    float4 _803 = r0;
    _803.x = r0.x * cb0_m[13].y;
    r0 = _803;
    float4 _813 = r0;
    _813.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _813;
    float4 _825 = r0;
    _825.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _825;
    float4 _831 = r0;
    _831.x = exp2(-r0.x);
    r0 = _831;
    float4 _837 = r0;
    _837.x = min(r0.x, asfloat(1065353216u));
    r0 = _837;
    float4 _844 = o4;
    _844.w = (-r0.x) + asfloat(1065353216u);
    o4 = _844;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _852 = asfloat(v1);
    shader_in[1] = float4(_852.x, _852.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
