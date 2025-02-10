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
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float2 o1;
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
    float4 _60 = r0;
    _60.w = asfloat(1065353216u);
    r0 = _60;
    float4 _75 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _90 = r1;
    _90.x = mad(_75.w, r0.w, mad(_75.z, r0.z, mad(_75.y, r0.y, _75.x * r0.x)));
    r1 = _90;
    float4 _102 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _116 = r1;
    _116.y = mad(_102.w, r0.w, mad(_102.z, r0.z, mad(_102.y, r0.y, _102.x * r0.x)));
    r1 = _116;
    float4 _128 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _142 = r1;
    _142.z = mad(_128.w, r0.w, mad(_128.z, r0.z, mad(_128.y, r0.y, _128.x * r0.x)));
    r1 = _142;
    float4 _145 = r1;
    _145.w = asfloat(1065353216u);
    r1 = _145;
    float4 _156 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _170 = o0;
    _170.x = mad(_156.w, r1.w, mad(_156.z, r1.z, mad(_156.y, r1.y, _156.x * r1.x)));
    o0 = _170;
    float4 _181 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _195 = o0;
    _195.y = mad(_181.w, r1.w, mad(_181.z, r1.z, mad(_181.y, r1.y, _181.x * r1.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _220 = o0;
    _220.z = mad(_206.w, r1.w, mad(_206.z, r1.z, mad(_206.y, r1.y, _206.x * r1.x)));
    o0 = _220;
    float4 _232 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _246 = o0;
    _246.w = mad(_232.w, r1.w, mad(_232.z, r1.z, mad(_232.y, r1.y, _232.x * r1.x)));
    o0 = _246;
    float4 _250 = r0;
    _250.x = asfloat(3212836864u);
    r0 = _250;
    float3 _264 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(r0.x, _264.x, _264.y, _264.z);
    float3 _276 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _286 = r1;
    _286.x = mad(r0.yzw.z, _276.z, mad(r0.yzw.y, _276.y, r0.yzw.x * _276.x));
    r1 = _286;
    float4 _295 = r1;
    _295.x = r1.x * cb5_m[5].y;
    r1 = _295;
    float4 _302 = r1;
    _302.y = r0.x * r1.x;
    r1 = _302;
    float3 _313 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _324 = r2;
    _324.x = mad(r0.yzw.z, _313.z, mad(r0.yzw.y, _313.y, r0.yzw.x * _313.x));
    r2 = _324;
    float3 _335 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _345 = r2;
    _345.z = mad(r0.yzw.z, _335.z, mad(r0.yzw.y, _335.y, r0.yzw.x * _335.x));
    r2 = _345;
    float2 _355 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_355.x, r1.y, _355.y, r1.w);
    o1 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _367 = o2;
    _367.w = r1.z;
    o2 = _367;
    float3 _379 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_379.x, _379.y, _379.z, r0.w);
    float3 _393 = r0.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r1 = float4(_393.x, _393.y, _393.z, r1.w);
    float3 _411 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r0.xyz) + (-r1.xyz);
    r1 = float4(_411.x, _411.y, _411.z, r1.w);
    float4 _427 = r0;
    _427.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _427;
    float4 _432 = r0;
    _432.w = rsqrt(r0.w);
    r0 = _432;
    float3 _438 = r0.www * r1.xyz;
    r1 = float4(_438.x, _438.y, _438.z, r1.w);
    float3 _445 = r0.zxy * r1.xyz;
    r2 = float4(_445.x, _445.y, _445.z, r2.w);
    float3 _456 = (r0.yzx * r1.yzx) + (-r2.xyz);
    r1 = float4(_456.x, _456.y, _456.z, r1.w);
    float4 _472 = r0;
    _472.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _472;
    float4 _477 = r0;
    _477.w = rsqrt(r0.w);
    r0 = _477;
    float3 _483 = r0.www * r1.xyz;
    r1 = float4(_483.x, _483.y, _483.z, r1.w);
    float3 _493 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _505 = r2;
    _505.x = mad(_493.z, r1.xyz.z, mad(_493.y, r1.xyz.y, _493.x * r1.xyz.x));
    r2 = _505;
    float3 _514 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _526 = r2;
    _526.y = mad(_514.z, r1.xyz.z, mad(_514.y, r1.xyz.y, _514.x * r1.xyz.x));
    r2 = _526;
    float3 _535 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _547 = r2;
    _547.z = mad(_535.z, r1.xyz.z, mad(_535.y, r1.xyz.y, _535.x * r1.xyz.x));
    r2 = _547;
    float3 _556 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _568 = o2;
    _568.x = mad(_556.z, r1.xyz.z, mad(_556.y, r1.xyz.y, _556.x * r1.xyz.x));
    o2 = _568;
    float4 _583 = r0;
    _583.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _583;
    float4 _588 = r0;
    _588.w = rsqrt(r0.w);
    r0 = _588;
    float3 _594 = r0.www * r2.xyz;
    r1 = float4(_594.x, _594.y, _594.z, r1.w);
    float3 _604 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _616 = r2;
    _616.x = mad(_604.z, r0.xyz.z, mad(_604.y, r0.xyz.y, _604.x * r0.xyz.x));
    r2 = _616;
    float3 _625 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _637 = r2;
    _637.y = mad(_625.z, r0.xyz.z, mad(_625.y, r0.xyz.y, _625.x * r0.xyz.x));
    r2 = _637;
    float3 _646 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _658 = r2;
    _658.z = mad(_646.z, r0.xyz.z, mad(_646.y, r0.xyz.y, _646.x * r0.xyz.x));
    r2 = _658;
    float3 _667 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _679 = o2;
    _679.z = mad(_667.z, r0.xyz.z, mad(_667.y, r0.xyz.y, _667.x * r0.xyz.x));
    o2 = _679;
    float4 _694 = r0;
    _694.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _694;
    float4 _699 = r0;
    _699.x = rsqrt(r0.x);
    r0 = _699;
    float3 _705 = r0.xxx * r2.xyz;
    r0 = float4(_705.x, _705.y, _705.z, r0.w);
    float3 _712 = r1.yzx * r0.zxy;
    r2 = float4(_712.x, _712.y, _712.z, r2.w);
    float3 _723 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_723.x, _723.y, _723.z, r2.w);
    float3 _733 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _745 = o5;
    _745.x = mad(_733.z, r1.xyz.z, mad(_733.y, r1.xyz.y, _733.x * r1.xyz.x));
    o5 = _745;
    float3 _754 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _766 = o5;
    _766.z = mad(_754.z, r0.xyz.z, mad(_754.y, r0.xyz.y, _754.x * r0.xyz.x));
    o5 = _766;
    float3 _775 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _787 = o2;
    _787.y = mad(_775.z, r2.xyz.z, mad(_775.y, r2.xyz.y, _775.x * r2.xyz.x));
    o2 = _787;
    float3 _796 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _799 = -r2.xyz;
    float4 _809 = o5;
    _809.y = mad(_796.z, _799.z, mad(_796.y, _799.y, _796.x * _799.x));
    o5 = _809;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _838 = r0;
    _838.x = float(asint(shader_in[2].x));
    r0 = _838;
    float4 _845 = o5;
    _845.w = r0.x * asfloat(981467136u);
    o5 = _845;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _859 = shader_in[2];
    _859.x = asfloat(v2);
    shader_in[2] = _859;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
