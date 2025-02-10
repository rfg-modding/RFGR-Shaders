cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
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
static float3 v4;
static float4 v5;
static float3 v6;
static float3 v7;
static float3 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
    float3 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _53 = r0;
    _53.x = shader_in[7].x * asfloat(1082130432u);
    r0 = _53;
    float3 _66 = (r0.xxx * shader_in[6].xyz) + shader_in[0].xyz;
    r0 = float4(_66.x, _66.y, _66.z, r0.w);
    float4 _71 = r0;
    _71.w = asfloat(1065353216u);
    r0 = _71;
    float4 _86 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _101 = r1;
    _101.x = mad(_86.w, r0.w, mad(_86.z, r0.z, mad(_86.y, r0.y, _86.x * r0.x)));
    r1 = _101;
    float4 _113 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _127 = r1;
    _127.y = mad(_113.w, r0.w, mad(_113.z, r0.z, mad(_113.y, r0.y, _113.x * r0.x)));
    r1 = _127;
    float4 _139 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _153 = r1;
    _153.z = mad(_139.w, r0.w, mad(_139.z, r0.z, mad(_139.y, r0.y, _139.x * r0.x)));
    r1 = _153;
    float4 _156 = r1;
    _156.w = asfloat(1065353216u);
    r1 = _156;
    float4 _167 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _181 = o0;
    _181.x = mad(_167.w, r1.w, mad(_167.z, r1.z, mad(_167.y, r1.y, _167.x * r1.x)));
    o0 = _181;
    float4 _192 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _206 = o0;
    _206.y = mad(_192.w, r1.w, mad(_192.z, r1.z, mad(_192.y, r1.y, _192.x * r1.x)));
    o0 = _206;
    float4 _217 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _231 = o0;
    _231.z = mad(_217.w, r1.w, mad(_217.z, r1.z, mad(_217.y, r1.y, _217.x * r1.x)));
    o0 = _231;
    float4 _243 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _257 = o0;
    _257.w = mad(_243.w, r1.w, mad(_243.z, r1.z, mad(_243.y, r1.y, _243.x * r1.x)));
    o0 = _257;
    float3 _270 = (-r1.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_270.x, _270.y, _270.z, r0.w);
    float3 _285 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_285.x, _285.y, _285.z, r1.w);
    float3 _295 = (shader_in[8].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_295.x, _295.y, _295.z, r2.w);
    float3 _307 = (shader_in[7].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_307.x, _307.y, _307.z, r1.w);
    float3 _317 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _329 = r2;
    _329.x = mad(_317.z, r1.xyz.z, mad(_317.y, r1.xyz.y, _317.x * r1.xyz.x));
    r2 = _329;
    float3 _338 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _350 = r2;
    _350.y = mad(_338.z, r1.xyz.z, mad(_338.y, r1.xyz.y, _338.x * r1.xyz.x));
    r2 = _350;
    float3 _359 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _371 = r2;
    _371.z = mad(_359.z, r1.xyz.z, mad(_359.y, r1.xyz.y, _359.x * r1.xyz.x));
    r2 = _371;
    float4 _386 = r0;
    _386.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _386;
    float4 _391 = r0;
    _391.w = rsqrt(r0.w);
    r0 = _391;
    float3 _397 = r0.www * r2.xyz;
    r1 = float4(_397.x, _397.y, _397.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _417 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _430 = r3;
    _430.x = mad(_417.z, r2.xyz.z, mad(_417.y, r2.xyz.y, _417.x * r2.xyz.x));
    r3 = _430;
    float3 _439 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _451 = r3;
    _451.y = mad(_439.z, r2.xyz.z, mad(_439.y, r2.xyz.y, _439.x * r2.xyz.x));
    r3 = _451;
    float3 _460 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _472 = r3;
    _472.z = mad(_460.z, r2.xyz.z, mad(_460.y, r2.xyz.y, _460.x * r2.xyz.x));
    r3 = _472;
    float4 _487 = r0;
    _487.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _487;
    float4 _492 = r0;
    _492.w = rsqrt(r0.w);
    r0 = _492;
    float3 _498 = r0.www * r3.xyz;
    r2 = float4(_498.x, _498.y, _498.z, r2.w);
    float3 _505 = r1.zxy * r2.yzx;
    r3 = float4(_505.x, _505.y, _505.z, r3.w);
    float3 _516 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_516.x, _516.y, _516.z, r3.w);
    float3 _523 = r2.www * r3.xyz;
    r3 = float4(_523.x, _523.y, _523.z, r3.w);
    float3 _539 = o1;
    _539.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o1 = _539;
    float3 _548 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _560 = o2;
    _560.y = mad(_548.z, r3.xyz.z, mad(_548.y, r3.xyz.y, _548.x * r3.xyz.x));
    o2 = _560;
    float3 _575 = o1;
    _575.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o1 = _575;
    float3 _584 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _596 = o2;
    _596.z = mad(_584.z, r1.xyz.z, mad(_584.y, r1.xyz.y, _584.x * r1.xyz.x));
    o2 = _596;
    float3 _611 = o1;
    _611.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o1 = _611;
    float3 _620 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _632 = o2;
    _632.x = mad(_620.z, r2.xyz.z, mad(_620.y, r2.xyz.y, _620.x * r2.xyz.x));
    o2 = _632;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
    shader_in[8] = float4(v8.x, v8.y, v8.z, shader_in[8].w);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
