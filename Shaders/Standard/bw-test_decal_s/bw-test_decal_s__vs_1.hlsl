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
    float3 _257 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_257.x, _257.y, _257.z, r1.w);
    float3 _271 = r1.yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r2 = float4(_271.x, _271.y, _271.z, r2.w);
    float3 _290 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r1.zxy) + (-r2.xyz);
    r2 = float4(_290.x, _290.y, _290.z, r2.w);
    float4 _306 = r0;
    _306.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _306;
    float4 _311 = r0;
    _311.w = rsqrt(r0.w);
    r0 = _311;
    float3 _317 = r0.www * r2.xyz;
    r2 = float4(_317.x, _317.y, _317.z, r2.w);
    float3 _324 = r1.zxy * r2.yzx;
    r3 = float4(_324.x, _324.y, _324.z, r3.w);
    float3 _336 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_336.x, _336.y, _336.z, r3.w);
    float3 _346 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _358 = o2;
    _358.y = mad(_346.z, r2.xyz.z, mad(_346.y, r2.xyz.y, _346.x * r2.xyz.x));
    o2 = _358;
    float4 _373 = r0;
    _373.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _373;
    float4 _378 = r0;
    _378.w = rsqrt(r0.w);
    r0 = _378;
    float3 _384 = r0.www * r3.xyz;
    r2 = float4(_384.x, _384.y, _384.z, r2.w);
    float3 _394 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _406 = r3;
    _406.x = mad(_394.z, r2.xyz.z, mad(_394.y, r2.xyz.y, _394.x * r2.xyz.x));
    r3 = _406;
    float3 _415 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _427 = r3;
    _427.y = mad(_415.z, r2.xyz.z, mad(_415.y, r2.xyz.y, _415.x * r2.xyz.x));
    r3 = _427;
    float3 _436 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _448 = r3;
    _448.z = mad(_436.z, r2.xyz.z, mad(_436.y, r2.xyz.y, _436.x * r2.xyz.x));
    r3 = _448;
    float3 _457 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _469 = o2;
    _469.x = mad(_457.z, r2.xyz.z, mad(_457.y, r2.xyz.y, _457.x * r2.xyz.x));
    o2 = _469;
    float4 _484 = r0;
    _484.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _484;
    float4 _489 = r0;
    _489.w = rsqrt(r0.w);
    r0 = _489;
    float3 _495 = r0.www * r3.xyz;
    r2 = float4(_495.x, _495.y, _495.z, r2.w);
    float3 _505 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _517 = r3;
    _517.x = mad(_505.z, r1.xyz.z, mad(_505.y, r1.xyz.y, _505.x * r1.xyz.x));
    r3 = _517;
    float3 _526 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _538 = r3;
    _538.y = mad(_526.z, r1.xyz.z, mad(_526.y, r1.xyz.y, _526.x * r1.xyz.x));
    r3 = _538;
    float3 _547 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _559 = r3;
    _559.z = mad(_547.z, r1.xyz.z, mad(_547.y, r1.xyz.y, _547.x * r1.xyz.x));
    r3 = _559;
    float3 _568 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _580 = o2;
    _580.z = mad(_568.z, r1.xyz.z, mad(_568.y, r1.xyz.y, _568.x * r1.xyz.x));
    o2 = _580;
    float4 _595 = r0;
    _595.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _595;
    float4 _600 = r0;
    _600.w = rsqrt(r0.w);
    r0 = _600;
    float3 _606 = r0.www * r3.xyz;
    r1 = float4(_606.x, _606.y, _606.z, r1.w);
    float3 _613 = r2.yzx * r1.zxy;
    r3 = float4(_613.x, _613.y, _613.z, r3.w);
    float3 _624 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_624.x, _624.y, _624.z, r3.w);
    float3 _638 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_638.x, _638.y, _638.z, r4.w);
    float3 _654 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_654.x, _654.y, _654.z, r0.w);
    float3 _661 = -r3.xyz;
    float3 _671 = o1;
    _671.y = mad(r4.xyz.z, _661.z, mad(r4.xyz.y, _661.y, r4.xyz.x * _661.x));
    o1 = _671;
    float3 _680 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _683 = -r3.xyz;
    float4 _693 = o5;
    _693.y = mad(_680.z, _683.z, mad(_680.y, _683.y, _680.x * _683.x));
    o5 = _693;
    float3 _708 = o1;
    _708.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _708;
    float3 _717 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _729 = o5;
    _729.x = mad(_717.z, r2.xyz.z, mad(_717.y, r2.xyz.y, _717.x * r2.xyz.x));
    o5 = _729;
    float3 _744 = o1;
    _744.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _744;
    float3 _753 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _765 = o5;
    _765.z = mad(_753.z, r1.xyz.z, mad(_753.y, r1.xyz.y, _753.x * r1.xyz.x));
    o5 = _765;
    float3 _779 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_779.x, _779.y, _779.z, r1.w);
    float3 _791 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _801 = r2;
    _801.x = mad(r1.xyz.z, _791.z, mad(r1.xyz.y, _791.y, r1.xyz.x * _791.x));
    r2 = _801;
    float3 _812 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _822 = r2;
    _822.z = mad(r1.xyz.z, _812.z, mad(r1.xyz.y, _812.y, r1.xyz.x * _812.x));
    r2 = _822;
    float3 _833 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _843 = r0;
    _843.w = mad(r1.xyz.z, _833.z, mad(r1.xyz.y, _833.y, r1.xyz.x * _833.x));
    r0 = _843;
    float4 _852 = r0;
    _852.w = r0.w * cb5_m[5].y;
    r0 = _852;
    float2 _863 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_863.x, r1.y, _863.y, r1.w);
    float4 _868 = o2;
    _868.w = r1.z;
    o2 = _868;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _899 = r1;
    _899.z = r0.y * cb0_m[13].x;
    r1 = _899;
    float4 _906 = r1;
    _906.w = r1.z * asfloat(3216550459u);
    r1 = _906;
    float4 _911 = r1;
    _911.w = exp2(r1.w);
    r1 = _911;
    float4 _918 = r1;
    _918.w = (-r1.w) + asfloat(1065353216u);
    r1 = _918;
    float4 _925 = r1;
    _925.z = r1.w / r1.z;
    r1 = _925;
    float4 _937 = r1;
    _937.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _937;
    float4 _952 = r0;
    _952.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _952;
    float4 _957 = r0;
    _957.x = sqrt(r0.x);
    r0 = _957;
    float4 _965 = r0;
    _965.x = r0.x * cb0_m[13].y;
    r0 = _965;
    float4 _975 = r0;
    _975.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _975;
    float4 _987 = r0;
    _987.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _987;
    float4 _993 = r0;
    _993.x = exp2(-r0.x);
    r0 = _993;
    float4 _999 = r0;
    _999.x = min(r0.x, asfloat(1065353216u));
    r0 = _999;
    float4 _1006 = o5;
    _1006.w = (-r0.x) + asfloat(1065353216u);
    o5 = _1006;
    float4 _1009 = r0;
    _1009.x = asfloat(3212836864u);
    r0 = _1009;
    float4 _1016 = r1;
    _1016.y = r0.w * r0.x;
    r1 = _1016;
    float2 _1024 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_1024.x, _1024.y, o6.z, o6.w);
    float2 _1030 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _1030.x, _1030.y);
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
