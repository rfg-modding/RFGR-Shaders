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
static float4 r5;

void vs_main()
{
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _62 = r1;
    _62.w = asfloat(1065353216u);
    r1 = _62;
    float4 _77 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _91 = r0;
    _91.x = mad(_77.w, r1.w, mad(_77.z, r1.z, mad(_77.y, r1.y, _77.x * r1.x)));
    r0 = _91;
    float4 _103 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _117 = r0;
    _117.y = mad(_103.w, r1.w, mad(_103.z, r1.z, mad(_103.y, r1.y, _103.x * r1.x)));
    r0 = _117;
    float4 _129 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _143 = r0;
    _143.z = mad(_129.w, r1.w, mad(_129.z, r1.z, mad(_129.y, r1.y, _129.x * r1.x)));
    r0 = _143;
    float4 _154 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _168 = o0;
    _168.x = mad(_154.w, r0.w, mad(_154.z, r0.z, mad(_154.y, r0.y, _154.x * r0.x)));
    o0 = _168;
    float4 _179 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _193 = o0;
    _193.y = mad(_179.w, r0.w, mad(_179.z, r0.z, mad(_179.y, r0.y, _179.x * r0.x)));
    o0 = _193;
    float4 _204 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _218 = o0;
    _218.z = mad(_204.w, r0.w, mad(_204.z, r0.z, mad(_204.y, r0.y, _204.x * r0.x)));
    o0 = _218;
    float4 _230 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _244 = o0;
    _244.w = mad(_230.w, r0.w, mad(_230.z, r0.z, mad(_230.y, r0.y, _230.x * r0.x)));
    o0 = _244;
    float2 _250 = float2(asint(shader_in[1].xy));
    r1 = float4(_250.x, _250.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _271 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_271.x, _271.y, _271.z, r1.w);
    float3 _281 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _294 = r2;
    _294.x = mad(_281.z, r1.xyz.z, mad(_281.y, r1.xyz.y, _281.x * r1.xyz.x));
    r2 = _294;
    float3 _303 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _315 = r2;
    _315.y = mad(_303.z, r1.xyz.z, mad(_303.y, r1.xyz.y, _303.x * r1.xyz.x));
    r2 = _315;
    float3 _324 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _336 = r2;
    _336.z = mad(_324.z, r1.xyz.z, mad(_324.y, r1.xyz.y, _324.x * r1.xyz.x));
    r2 = _336;
    float4 _351 = r0;
    _351.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _351;
    float4 _356 = r0;
    _356.w = rsqrt(r0.w);
    r0 = _356;
    float3 _362 = r0.www * r2.xyz;
    r1 = float4(_362.x, _362.y, _362.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _381 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _394 = r3;
    _394.x = mad(_381.z, r2.xyz.z, mad(_381.y, r2.xyz.y, _381.x * r2.xyz.x));
    r3 = _394;
    float3 _403 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _415 = r3;
    _415.y = mad(_403.z, r2.xyz.z, mad(_403.y, r2.xyz.y, _403.x * r2.xyz.x));
    r3 = _415;
    float3 _424 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _436 = r3;
    _436.z = mad(_424.z, r2.xyz.z, mad(_424.y, r2.xyz.y, _424.x * r2.xyz.x));
    r3 = _436;
    float4 _451 = r0;
    _451.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _451;
    float4 _456 = r0;
    _456.w = rsqrt(r0.w);
    r0 = _456;
    float3 _462 = r0.www * r3.xyz;
    r2 = float4(_462.x, _462.y, _462.z, r2.w);
    float3 _469 = r1.zxy * r2.yzx;
    r3 = float4(_469.x, _469.y, _469.z, r3.w);
    float3 _480 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_480.x, _480.y, _480.z, r3.w);
    float3 _487 = r2.www * r3.xyz;
    r3 = float4(_487.x, _487.y, _487.z, r3.w);
    float3 _502 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_502.x, _502.y, _502.z, r4.w);
    float3 _519 = o2;
    _519.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _519;
    float3 _534 = o2;
    _534.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _534;
    float3 _549 = o2;
    _549.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _549;
    float3 _562 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_562.x, _562.y, _562.z, r4.w);
    float3 _576 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_576.x, _576.y, _576.z, r0.w);
    float4 _589 = r0;
    _589.w = mad(r4.xz.y, r4.xz.y, r4.xz.x * r4.xz.x);
    r0 = _589;
    float4 _594 = r0;
    _594.w = sqrt(r0.w);
    r0 = _594;
    float4 _604 = r0;
    _604.w = asfloat((asfloat(0u) < r0.w) ? 4294967295u : 0u);
    r0 = _604;
    float4 _611 = r0;
    _611.w = asfloat(asuint(r0.w) & 1065353216u);
    r0 = _611;
    float4 _614 = r4;
    _614.w = asfloat(0u);
    r4 = _614;
    float3 _621 = (-r4.xyz) + r4.xwz;
    r5 = float4(_621.x, _621.y, _621.z, r5.w);
    float3 _632 = (r0.www * r5.xyz) + r4.xyz;
    r4 = float4(_632.x, _632.y, _632.z, r4.w);
    float4 _648 = r0;
    _648.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _648;
    float4 _653 = r0;
    _653.w = rsqrt(r0.w);
    r0 = _653;
    float3 _659 = r0.www * r4.xyz;
    r4 = float4(_659.x, _659.y, _659.z, r4.w);
    float3 _675 = o3;
    _675.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _675;
    float3 _690 = o3;
    _690.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _690;
    float3 _705 = o3;
    _705.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _705;
    float4 _714 = r0;
    _714.w = r0.y * cb0_m[13].x;
    r0 = _714;
    float4 _721 = r1;
    _721.x = r0.w * asfloat(3216550459u);
    r1 = _721;
    float4 _726 = r1;
    _726.x = exp2(r1.x);
    r1 = _726;
    float4 _733 = r1;
    _733.x = (-r1.x) + asfloat(1065353216u);
    r1 = _733;
    float4 _740 = r0;
    _740.w = r1.x / r0.w;
    r0 = _740;
    float4 _750 = r1;
    _750.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _750;
    float4 _765 = r0;
    _765.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _765;
    float4 _770 = r0;
    _770.x = sqrt(r0.x);
    r0 = _770;
    float4 _778 = r0;
    _778.x = r0.x * cb0_m[13].y;
    r0 = _778;
    float4 _788 = r0;
    _788.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _788;
    float4 _800 = r0;
    _800.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _800;
    float4 _806 = r0;
    _806.x = exp2(-r0.x);
    r0 = _806;
    float4 _812 = r0;
    _812.x = min(r0.x, asfloat(1065353216u));
    r0 = _812;
    float4 _819 = o4;
    _819.w = (-r0.x) + asfloat(1065353216u);
    o4 = _819;
    float3 _828 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    o4 = float4(_828.x, _828.y, _828.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _837 = asfloat(v1);
    shader_in[1] = float4(_837.x, _837.y, shader_in[1].z, shader_in[1].w);
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
