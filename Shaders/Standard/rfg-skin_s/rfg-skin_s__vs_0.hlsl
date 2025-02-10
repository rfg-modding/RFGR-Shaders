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
    float3 _497 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _509 = o2;
    _509.y = mad(_497.z, r3.xyz.z, mad(_497.y, r3.xyz.y, _497.x * r3.xyz.x));
    o2 = _509;
    float3 _518 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _530 = o2;
    _530.z = mad(_518.z, r1.xyz.z, mad(_518.y, r1.xyz.y, _518.x * r1.xyz.x));
    o2 = _530;
    float3 _539 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _551 = o2;
    _551.x = mad(_539.z, r2.xyz.z, mad(_539.y, r2.xyz.y, _539.x * r2.xyz.x));
    o2 = _551;
    float3 _565 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_565.x, _565.y, _565.z, r4.w);
    float3 _580 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_580.x, _580.y, _580.z, r0.w);
    float4 _596 = r0;
    _596.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _596;
    float4 _601 = r0;
    _601.w = rsqrt(r0.w);
    r0 = _601;
    float3 _607 = r0.www * r4.xyz;
    r4 = float4(_607.x, _607.y, _607.z, r4.w);
    float3 _623 = o3;
    _623.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _623;
    float4 _627 = o4;
    _627.x = r2.y;
    o4 = _627;
    float3 _642 = o3;
    _642.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _642;
    float4 _646 = o4;
    _646.z = r1.y;
    o4 = _646;
    float3 _661 = o3;
    _661.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _661;
    float4 _665 = o4;
    _665.y = r3.y;
    o4 = _665;
    float4 _674 = r0;
    _674.w = r0.y * cb0_m[13].x;
    r0 = _674;
    float4 _681 = r1;
    _681.x = r0.w * asfloat(3216550459u);
    r1 = _681;
    float4 _686 = r1;
    _686.x = exp2(r1.x);
    r1 = _686;
    float4 _693 = r1;
    _693.x = (-r1.x) + asfloat(1065353216u);
    r1 = _693;
    float4 _700 = r0;
    _700.w = r1.x / r0.w;
    r0 = _700;
    float4 _712 = r1;
    _712.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _712;
    float4 _727 = r0;
    _727.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _727;
    float4 _732 = r0;
    _732.x = sqrt(r0.x);
    r0 = _732;
    float4 _740 = r0;
    _740.x = r0.x * cb0_m[13].y;
    r0 = _740;
    float4 _750 = r0;
    _750.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _750;
    float4 _762 = r0;
    _762.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _762;
    float4 _768 = r0;
    _768.x = exp2(-r0.x);
    r0 = _768;
    float4 _774 = r0;
    _774.x = min(r0.x, asfloat(1065353216u));
    r0 = _774;
    float4 _781 = o4;
    _781.w = (-r0.x) + asfloat(1065353216u);
    o4 = _781;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _789 = asfloat(v1);
    shader_in[1] = float4(_789.x, _789.y, shader_in[1].z, shader_in[1].w);
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
