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
static float3 v2;
static float3 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 o7;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    float4 _66 = r1;
    _66.x = shader_in[3].x * asfloat(1082130432u);
    r1 = _66;
    float3 _79 = (r1.xxx * shader_in[2].xyz) + shader_in[0].xyz;
    r1 = float4(_79.x, _79.y, _79.z, r1.w);
    float4 _83 = r1;
    _83.w = asfloat(1065353216u);
    r1 = _83;
    float4 _98 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _112 = r0;
    _112.x = mad(_98.w, r1.w, mad(_98.z, r1.z, mad(_98.y, r1.y, _98.x * r1.x)));
    r0 = _112;
    float4 _124 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _138 = r0;
    _138.y = mad(_124.w, r1.w, mad(_124.z, r1.z, mad(_124.y, r1.y, _124.x * r1.x)));
    r0 = _138;
    float4 _149 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _163 = r0;
    _163.z = mad(_149.w, r1.w, mad(_149.z, r1.z, mad(_149.y, r1.y, _149.x * r1.x)));
    r0 = _163;
    float4 _174 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _188 = o0;
    _188.x = mad(_174.w, r0.w, mad(_174.z, r0.z, mad(_174.y, r0.y, _174.x * r0.x)));
    o0 = _188;
    float4 _199 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _213 = o0;
    _213.y = mad(_199.w, r0.w, mad(_199.z, r0.z, mad(_199.y, r0.y, _199.x * r0.x)));
    o0 = _213;
    float4 _224 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _238 = o0;
    _238.z = mad(_224.w, r0.w, mad(_224.z, r0.z, mad(_224.y, r0.y, _224.x * r0.x)));
    o0 = _238;
    float4 _249 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _263 = o0;
    _263.w = mad(_249.w, r0.w, mad(_249.z, r0.z, mad(_249.y, r0.y, _249.x * r0.x)));
    o0 = _263;
    float3 _277 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_277.x, _277.y, _277.z, r1.w);
    float3 _296 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r1.xyz);
    r1 = float4(_296.x, _296.y, _296.z, r1.w);
    float4 _312 = r0;
    _312.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _312;
    float4 _317 = r0;
    _317.w = rsqrt(r0.w);
    r0 = _317;
    float3 _323 = r0.www * r1.xyz;
    r1 = float4(_323.x, _323.y, _323.z, r1.w);
    float3 _331 = r1.yzx * shader_in[1].zxy;
    r2 = float4(_331.x, _331.y, _331.z, r2.w);
    float3 _344 = (shader_in[1].yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_344.x, _344.y, _344.z, r2.w);
    float3 _354 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _366 = o3;
    _366.y = mad(_354.z, r1.xyz.z, mad(_354.y, r1.xyz.y, _354.x * r1.xyz.x));
    o3 = _366;
    float4 _381 = r0;
    _381.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _381;
    float4 _386 = r0;
    _386.w = rsqrt(r0.w);
    r0 = _386;
    float3 _392 = r0.www * r2.xyz;
    r1 = float4(_392.x, _392.y, _392.z, r1.w);
    float3 _402 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _414 = r2;
    _414.x = mad(_402.z, r1.xyz.z, mad(_402.y, r1.xyz.y, _402.x * r1.xyz.x));
    r2 = _414;
    float3 _423 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _435 = r2;
    _435.y = mad(_423.z, r1.xyz.z, mad(_423.y, r1.xyz.y, _423.x * r1.xyz.x));
    r2 = _435;
    float3 _444 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _456 = r2;
    _456.z = mad(_444.z, r1.xyz.z, mad(_444.y, r1.xyz.y, _444.x * r1.xyz.x));
    r2 = _456;
    float3 _465 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _477 = o3;
    _477.x = mad(_465.z, r1.xyz.z, mad(_465.y, r1.xyz.y, _465.x * r1.xyz.x));
    o3 = _477;
    float4 _492 = r0;
    _492.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _492;
    float4 _497 = r0;
    _497.w = rsqrt(r0.w);
    r0 = _497;
    float3 _503 = r0.www * r2.xyz;
    r1 = float4(_503.x, _503.y, _503.z, r1.w);
    float3 _517 = (shader_in[3].xxx * shader_in[4].xyz) + shader_in[1].xyz;
    r2 = float4(_517.x, _517.y, _517.z, r2.w);
    float3 _527 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _540 = r3;
    _540.x = mad(_527.z, r2.xyz.z, mad(_527.y, r2.xyz.y, _527.x * r2.xyz.x));
    r3 = _540;
    float3 _549 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _561 = r3;
    _561.y = mad(_549.z, r2.xyz.z, mad(_549.y, r2.xyz.y, _549.x * r2.xyz.x));
    r3 = _561;
    float3 _570 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _582 = r3;
    _582.z = mad(_570.z, r2.xyz.z, mad(_570.y, r2.xyz.y, _570.x * r2.xyz.x));
    r3 = _582;
    float4 _597 = r0;
    _597.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _597;
    float4 _602 = r0;
    _602.w = rsqrt(r0.w);
    r0 = _602;
    float3 _608 = r0.www * r3.xyz;
    r2 = float4(_608.x, _608.y, _608.z, r2.w);
    float3 _615 = r1.yzx * r2.zxy;
    r3 = float4(_615.x, _615.y, _615.z, r3.w);
    float3 _626 = (r2.yzx * r1.zxy) + (-r3.xyz);
    r3 = float4(_626.x, _626.y, _626.z, r3.w);
    float3 _640 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_640.x, _640.y, _640.z, r4.w);
    float3 _648 = -r3.xyz;
    float3 _658 = o1;
    _658.y = mad(r4.xyz.z, _648.z, mad(r4.xyz.y, _648.y, r4.xyz.x * _648.x));
    o1 = _658;
    float3 _673 = o1;
    _673.x = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _673;
    float3 _688 = o1;
    _688.z = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _688;
    float3 _702 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_702.x, _702.y, _702.z, r4.w);
    float3 _716 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_716.x, _716.y, _716.z, r0.w);
    float3 _732 = o2;
    _732.x = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _732;
    float3 _741 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _753 = o6;
    _753.x = mad(_741.z, r1.xyz.z, mad(_741.y, r1.xyz.y, _741.x * r1.xyz.x));
    o6 = _753;
    float3 _768 = o2;
    _768.z = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _768;
    float3 _777 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _789 = o6;
    _789.z = mad(_777.z, r2.xyz.z, mad(_777.y, r2.xyz.y, _777.x * r2.xyz.x));
    o6 = _789;
    float3 _795 = -r3.xyz;
    float3 _805 = o2;
    _805.y = mad(r4.xyz.z, _795.z, mad(r4.xyz.y, _795.y, r4.xyz.x * _795.x));
    o2 = _805;
    float3 _814 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _817 = -r3.xyz;
    float4 _827 = o6;
    _827.y = mad(_814.z, _817.z, mad(_814.y, _817.y, _814.x * _817.x));
    o6 = _827;
    float3 _836 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _849 = o3;
    _849.z = mad(_836.z, shader_in[1].xyz.z, mad(_836.y, shader_in[1].xyz.y, _836.x * shader_in[1].xyz.x));
    o3 = _849;
    float3 _863 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_863.x, _863.y, _863.z, r1.w);
    float3 _875 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _885 = r2;
    _885.x = mad(r1.xyz.z, _875.z, mad(r1.xyz.y, _875.y, r1.xyz.x * _875.x));
    r2 = _885;
    float3 _896 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _906 = r2;
    _906.z = mad(r1.xyz.z, _896.z, mad(r1.xyz.y, _896.y, r1.xyz.x * _896.x));
    r2 = _906;
    float3 _917 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _927 = r0;
    _927.w = mad(r1.xyz.z, _917.z, mad(r1.xyz.y, _917.y, r1.xyz.x * _917.x));
    r0 = _927;
    float4 _936 = r0;
    _936.w = r0.w * cb5_m[5].y;
    r0 = _936;
    float2 _947 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_947.x, r1.y, _947.y, r1.w);
    float4 _952 = o3;
    _952.w = r1.z;
    o3 = _952;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _982 = r1;
    _982.z = r0.y * cb0_m[13].x;
    r1 = _982;
    float4 _989 = r1;
    _989.w = r1.z * asfloat(3216550459u);
    r1 = _989;
    float4 _994 = r1;
    _994.w = exp2(r1.w);
    r1 = _994;
    float4 _1001 = r1;
    _1001.w = (-r1.w) + asfloat(1065353216u);
    r1 = _1001;
    float4 _1008 = r1;
    _1008.z = r1.w / r1.z;
    r1 = _1008;
    float4 _1020 = r1;
    _1020.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _1020;
    float4 _1035 = r0;
    _1035.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _1035;
    float4 _1040 = r0;
    _1040.x = sqrt(r0.x);
    r0 = _1040;
    float4 _1048 = r0;
    _1048.x = r0.x * cb0_m[13].y;
    r0 = _1048;
    float4 _1058 = r0;
    _1058.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _1058;
    float4 _1070 = r0;
    _1070.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _1070;
    float4 _1076 = r0;
    _1076.x = exp2(-r0.x);
    r0 = _1076;
    float4 _1082 = r0;
    _1082.x = min(r0.x, asfloat(1065353216u));
    r0 = _1082;
    float4 _1089 = o6;
    _1089.w = (-r0.x) + asfloat(1065353216u);
    o6 = _1089;
    float4 _1093 = r0;
    _1093.x = asfloat(3212836864u);
    r0 = _1093;
    float4 _1100 = r1;
    _1100.y = r0.w * r0.x;
    r1 = _1100;
    float2 _1108 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o7 = float4(_1108.x, _1108.y, o7.z, o7.w);
    float2 _1114 = cb5_m[5].w.xx;
    o7 = float4(o7.x, o7.y, _1114.x, _1114.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
