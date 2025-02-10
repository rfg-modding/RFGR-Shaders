cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int4 v0;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[1];
static float4 o0;
static float o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    r0 = float4(asint(shader_in[0]));
    r0 += asfloat(uint4(1191149568u, 0u, 1191149568u, 1191182336u));
    r1 = r0 * asfloat(uint4(1006632960u, 1015021568u, 1006632960u, 998244352u));
    float4 _65 = r2;
    _65.z = trunc(r1.w);
    r2 = _65;
    float4 _69 = r1;
    _69.w = asfloat(1065353216u);
    r1 = _69;
    float4 _83 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _98 = r3;
    _98.x = mad(_83.w, r1.w, mad(_83.z, r1.z, mad(_83.y, r1.y, _83.x * r1.x)));
    r3 = _98;
    float4 _110 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _124 = r3;
    _124.y = mad(_110.w, r1.w, mad(_110.z, r1.z, mad(_110.y, r1.y, _110.x * r1.x)));
    r3 = _124;
    float4 _136 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _150 = r3;
    _150.z = mad(_136.w, r1.w, mad(_136.z, r1.z, mad(_136.y, r1.y, _136.x * r1.x)));
    r3 = _150;
    float4 _153 = r3;
    _153.w = asfloat(1065353216u);
    r3 = _153;
    float4 _164 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _178 = o0;
    _178.x = mad(_164.w, r3.w, mad(_164.z, r3.z, mad(_164.y, r3.y, _164.x * r3.x)));
    o0 = _178;
    float4 _189 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _203 = o0;
    _203.y = mad(_189.w, r3.w, mad(_189.z, r3.z, mad(_189.y, r3.y, _189.x * r3.x)));
    o0 = _203;
    float4 _214 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _228 = o0;
    _228.z = mad(_214.w, r3.w, mad(_214.z, r3.z, mad(_214.y, r3.y, _214.x * r3.x)));
    o0 = _228;
    float4 _240 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _254 = o0;
    _254.w = mad(_240.w, r3.w, mad(_240.z, r3.z, mad(_240.y, r3.y, _240.x * r3.x)));
    o0 = _254;
    float3 _269 = r3.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_269.x, _269.y, _269.z, r1.w);
    float4 _281 = r2;
    _281.x = ((-r2.z) * asfloat(1132462080u)) + r0.w;
    r2 = _281;
    float2 _290 = r0.xz * asfloat(uint2(931135488u, 931135488u));
    o2 = float4(_290.x, _290.y, o2.z, o2.w);
    float2 _302 = (r2.xz * asfloat(uint2(1006665857u, 1006665857u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(_302.x, r0.y, _302.y, r0.w);
    float4 _313 = r0;
    _313.w = ((-r0.x) * r0.x) + asfloat(1065353216u);
    r0 = _313;
    float4 _324 = r0;
    _324.w = ((-r0.z) * r0.z) + r0.w;
    r0 = _324;
    float4 _330 = r0;
    _330.w = max(r0.w, asfloat(0u));
    r0 = _330;
    float4 _335 = r0;
    _335.y = sqrt(r0.w);
    r0 = _335;
    float3 _344 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _356 = r0;
    _356.w = mad(_344.z, r0.xyz.z, mad(_344.y, r0.xyz.y, _344.x * r0.xyz.x));
    r0 = _356;
    float3 _367 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _377 = o2;
    _377.w = mad(r0.xyz.z, _367.z, mad(r0.xyz.y, _367.y, r0.xyz.x * _367.x));
    o2 = _377;
    o1 = clamp((r0.w * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    float4 _396 = r0;
    _396.x = r1.y * cb0_m[13].x;
    r0 = _396;
    float4 _403 = r0;
    _403.y = r0.x * asfloat(3216550459u);
    r0 = _403;
    float4 _408 = r0;
    _408.y = exp2(r0.y);
    r0 = _408;
    float4 _415 = r0;
    _415.y = (-r0.y) + asfloat(1065353216u);
    r0 = _415;
    float4 _422 = r0;
    _422.x = r0.y / r0.x;
    r0 = _422;
    float4 _434 = r0;
    _434.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _434;
    float4 _449 = r0;
    _449.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _449;
    float4 _454 = r0;
    _454.z = sqrt(r0.z);
    r0 = _454;
    float4 _462 = r0;
    _462.z = r0.z * cb0_m[13].y;
    r0 = _462;
    float4 _472 = r0;
    _472.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _472;
    float4 _484 = r0;
    _484.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _484;
    float4 _490 = r0;
    _490.x = exp2(-r0.x);
    r0 = _490;
    float4 _496 = r0;
    _496.x = min(r0.x, asfloat(1065353216u));
    r0 = _496;
    float4 _503 = o2;
    _503.z = (-r0.x) + asfloat(1065353216u);
    o2 = _503;
}

void vert_main()
{
    shader_in[0] = asfloat(v0);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
