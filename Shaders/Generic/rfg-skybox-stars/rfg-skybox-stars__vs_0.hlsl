cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
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
static float2 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    r0 = float4(asint(shader_in[0]));
    float3 _52 = r0.xyz * asfloat(uint3(964689920u, 964689920u, 964689920u));
    r0 = float4(_52.x, _52.y, _52.z, r0.w);
    float4 _67 = r0;
    _67.w = (r0.w * asfloat(964689920u)) + cb0_m[12].x;
    r0 = _67;
    float2 _76 = r0.ww * asfloat(uint2(1095307216u, 1100401628u));
    r1 = float4(_76.x, _76.y, r1.z, r1.w);
    float2 _83 = sin(r1.xyxx.xy);
    r1 = float4(_83.x, _83.y, r1.z, r1.w);
    float4 _86 = r0;
    float2 _89 = sin(_86.xyxx.xy);
    r0 = float4(_89.x, _89.y, r0.z, r0.w);
    float2 _93 = cos(_86.xyxx.xy);
    r2 = float4(_93.x, _93.y, r2.z, r2.w);
    float2 _99 = o1;
    _99.x = r0.z;
    o1 = _99;
    float4 _107 = r3;
    _107.x = r0.y * r2.x;
    r3 = _107;
    float4 _112 = r3;
    _112.y = -r0.x;
    r3 = _112;
    float4 _119 = r3;
    _119.z = r2.x * r2.y;
    r3 = _119;
    float3 _127 = r3.xyz * cb2_m[0].x.xxx;
    r0 = float4(_127.x, _127.y, _127.z, r0.w);
    float4 _132 = r0;
    _132.w = asfloat(1065353216u);
    r0 = _132;
    float4 _144 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _158 = r2;
    _158.x = mad(_144.w, r0.w, mad(_144.z, r0.z, mad(_144.y, r0.y, _144.x * r0.x)));
    r2 = _158;
    float4 _170 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _184 = r2;
    _184.y = mad(_170.w, r0.w, mad(_170.z, r0.z, mad(_170.y, r0.y, _170.x * r0.x)));
    r2 = _184;
    float4 _196 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _210 = r2;
    _210.z = mad(_196.w, r0.w, mad(_196.z, r0.z, mad(_196.y, r0.y, _196.x * r0.x)));
    r2 = _210;
    float4 _213 = r2;
    _213.w = asfloat(1065353216u);
    r2 = _213;
    float4 _224 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _238 = r0;
    _238.x = mad(_224.w, r2.w, mad(_224.z, r2.z, mad(_224.y, r2.y, _224.x * r2.x)));
    r0 = _238;
    float4 _249 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _263 = r0;
    _263.y = mad(_249.w, r2.w, mad(_249.z, r2.z, mad(_249.y, r2.y, _249.x * r2.x)));
    r0 = _263;
    float4 _275 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _289 = r0;
    _289.z = mad(_275.w, r2.w, mad(_275.z, r2.z, mad(_275.y, r2.y, _275.x * r2.x)));
    r0 = _289;
    o0 = r0.xyzz;
    float4 _302 = r0;
    _302.x = asfloat((asfloat(1056964608u) >= r1.y) ? 4294967295u : 0u);
    r0 = _302;
    float4 _309 = r0;
    _309.x = asfloat(asuint(r0.x) & 1065353216u);
    r0 = _309;
    float4 _316 = r0;
    _316.x = r0.x * r1.x;
    r0 = _316;
    float2 _326 = o1;
    _326.y = ((-r0.x) * asfloat(1045220557u)) + asfloat(1065353216u);
    o1 = _326;
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
