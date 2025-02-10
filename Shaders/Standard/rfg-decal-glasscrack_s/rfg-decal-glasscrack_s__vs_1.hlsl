cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _51 = r0;
    _51.w = asfloat(1065353216u);
    r0 = _51;
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
    float3 _258 = shader_in[1].zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r1 = float4(_258.x, _258.y, _258.z, r1.w);
    float3 _277 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * shader_in[1].xyz) + (-r1.xyz);
    r1 = float4(_277.x, _277.y, _277.z, r1.w);
    float4 _293 = r0;
    _293.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _293;
    float4 _298 = r0;
    _298.w = rsqrt(r0.w);
    r0 = _298;
    float3 _304 = r0.www * r1.xyz;
    r1 = float4(_304.x, _304.y, _304.z, r1.w);
    float3 _312 = r1.xyz * shader_in[1].zxy;
    r2 = float4(_312.x, _312.y, _312.z, r2.w);
    float3 _325 = (shader_in[1].yzx * r1.yzx) + (-r2.xyz);
    r1 = float4(_325.x, _325.y, _325.z, r1.w);
    float4 _341 = r0;
    _341.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _341;
    float4 _346 = r0;
    _346.w = rsqrt(r0.w);
    r0 = _346;
    float3 _352 = r0.www * r1.xyz;
    r1 = float4(_352.x, _352.y, _352.z, r1.w);
    float3 _362 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _374 = r2;
    _374.x = mad(_362.z, r1.xyz.z, mad(_362.y, r1.xyz.y, _362.x * r1.xyz.x));
    r2 = _374;
    float3 _383 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _395 = r2;
    _395.y = mad(_383.z, r1.xyz.z, mad(_383.y, r1.xyz.y, _383.x * r1.xyz.x));
    r2 = _395;
    float3 _404 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _416 = r2;
    _416.z = mad(_404.z, r1.xyz.z, mad(_404.y, r1.xyz.y, _404.x * r1.xyz.x));
    r2 = _416;
    float3 _425 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _437 = o2;
    _437.x = mad(_425.z, r1.xyz.z, mad(_425.y, r1.xyz.y, _425.x * r1.xyz.x));
    o2 = _437;
    float4 _452 = r0;
    _452.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _452;
    float4 _457 = r0;
    _457.w = rsqrt(r0.w);
    r0 = _457;
    float3 _463 = r0.www * r2.xyz;
    r1 = float4(_463.x, _463.y, _463.z, r1.w);
    float3 _477 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_477.x, _477.y, _477.z, r2.w);
    float3 _492 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_492.x, _492.y, _492.z, r0.w);
    float3 _508 = o1;
    _508.x = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    o1 = _508;
    float3 _517 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _531 = r3;
    _531.x = mad(_517.z, shader_in[1].xyz.z, mad(_517.y, shader_in[1].xyz.y, _517.x * shader_in[1].xyz.x));
    r3 = _531;
    float3 _540 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _553 = r3;
    _553.y = mad(_540.z, shader_in[1].xyz.z, mad(_540.y, shader_in[1].xyz.y, _540.x * shader_in[1].xyz.x));
    r3 = _553;
    float3 _562 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _575 = r3;
    _575.z = mad(_562.z, shader_in[1].xyz.z, mad(_562.y, shader_in[1].xyz.y, _562.x * shader_in[1].xyz.x));
    r3 = _575;
    float4 _590 = r0;
    _590.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _590;
    float4 _595 = r0;
    _595.w = rsqrt(r0.w);
    r0 = _595;
    float3 _601 = r0.www * r3.xyz;
    r3 = float4(_601.x, _601.y, _601.z, r3.w);
    float3 _608 = r1.yzx * r3.zxy;
    r4 = float4(_608.x, _608.y, _608.z, r4.w);
    float3 _620 = (r3.yzx * r1.zxy) + (-r4.xyz);
    r4 = float4(_620.x, _620.y, _620.z, r4.w);
    float3 _630 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _642 = o5;
    _642.x = mad(_630.z, r1.xyz.z, mad(_630.y, r1.xyz.y, _630.x * r1.xyz.x));
    o5 = _642;
    float3 _648 = -r4.xyz;
    float3 _658 = o1;
    _658.y = mad(r2.xyz.z, _648.z, mad(r2.xyz.y, _648.y, r2.xyz.x * _648.x));
    o1 = _658;
    float3 _673 = o1;
    _673.z = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o1 = _673;
    float3 _682 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _694 = o5;
    _694.z = mad(_682.z, r3.xyz.z, mad(_682.y, r3.xyz.y, _682.x * r3.xyz.x));
    o5 = _694;
    float3 _703 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _715 = o2;
    _715.y = mad(_703.z, r4.xyz.z, mad(_703.y, r4.xyz.y, _703.x * r4.xyz.x));
    o2 = _715;
    float3 _724 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _727 = -r4.xyz;
    float4 _737 = o5;
    _737.y = mad(_724.z, _727.z, mad(_724.y, _727.y, _724.x * _727.x));
    o5 = _737;
    float3 _746 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _759 = o2;
    _759.z = mad(_746.z, shader_in[1].xyz.z, mad(_746.y, shader_in[1].xyz.y, _746.x * shader_in[1].xyz.x));
    o2 = _759;
    float3 _773 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_773.x, _773.y, _773.z, r1.w);
    float3 _785 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _795 = r2;
    _795.x = mad(r1.xyz.z, _785.z, mad(r1.xyz.y, _785.y, r1.xyz.x * _785.x));
    r2 = _795;
    float3 _806 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _816 = r2;
    _816.z = mad(r1.xyz.z, _806.z, mad(r1.xyz.y, _806.y, r1.xyz.x * _806.x));
    r2 = _816;
    float3 _827 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _837 = r0;
    _837.w = mad(r1.xyz.z, _827.z, mad(r1.xyz.y, _827.y, r1.xyz.x * _827.x));
    r0 = _837;
    float4 _846 = r0;
    _846.w = r0.w * cb5_m[5].y;
    r0 = _846;
    float2 _857 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_857.x, r1.y, _857.y, r1.w);
    float4 _862 = o2;
    _862.w = r1.z;
    o2 = _862;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _893 = r1;
    _893.z = r0.y * cb0_m[13].x;
    r1 = _893;
    float4 _900 = r1;
    _900.w = r1.z * asfloat(3216550459u);
    r1 = _900;
    float4 _905 = r1;
    _905.w = exp2(r1.w);
    r1 = _905;
    float4 _912 = r1;
    _912.w = (-r1.w) + asfloat(1065353216u);
    r1 = _912;
    float4 _919 = r1;
    _919.z = r1.w / r1.z;
    r1 = _919;
    float4 _931 = r1;
    _931.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _931;
    float4 _946 = r0;
    _946.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _946;
    float4 _951 = r0;
    _951.x = sqrt(r0.x);
    r0 = _951;
    float4 _959 = r0;
    _959.x = r0.x * cb0_m[13].y;
    r0 = _959;
    float4 _969 = r0;
    _969.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _969;
    float4 _981 = r0;
    _981.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _981;
    float4 _987 = r0;
    _987.x = exp2(-r0.x);
    r0 = _987;
    float4 _993 = r0;
    _993.x = min(r0.x, asfloat(1065353216u));
    r0 = _993;
    float4 _1000 = o5;
    _1000.w = (-r0.x) + asfloat(1065353216u);
    o5 = _1000;
    float4 _1004 = r0;
    _1004.x = asfloat(3212836864u);
    r0 = _1004;
    float4 _1011 = r1;
    _1011.y = r0.w * r0.x;
    r1 = _1011;
    float2 _1019 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_1019.x, _1019.y, o6.z, o6.w);
    float2 _1025 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _1025.x, _1025.y);
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
