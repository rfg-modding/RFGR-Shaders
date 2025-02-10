cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
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
static float3 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _50 = r0;
    _50.w = asfloat(1065353216u);
    r0 = _50;
    float4 _65 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _80 = r1;
    _80.x = mad(_65.w, r0.w, mad(_65.z, r0.z, mad(_65.y, r0.y, _65.x * r0.x)));
    r1 = _80;
    float4 _92 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _106 = r1;
    _106.y = mad(_92.w, r0.w, mad(_92.z, r0.z, mad(_92.y, r0.y, _92.x * r0.x)));
    r1 = _106;
    float4 _118 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _132 = r1;
    _132.z = mad(_118.w, r0.w, mad(_118.z, r0.z, mad(_118.y, r0.y, _118.x * r0.x)));
    r1 = _132;
    float4 _135 = r1;
    _135.w = asfloat(1065353216u);
    r1 = _135;
    float4 _146 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _160 = o0;
    _160.x = mad(_146.w, r1.w, mad(_146.z, r1.z, mad(_146.y, r1.y, _146.x * r1.x)));
    o0 = _160;
    float4 _171 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _185 = o0;
    _185.y = mad(_171.w, r1.w, mad(_171.z, r1.z, mad(_171.y, r1.y, _171.x * r1.x)));
    o0 = _185;
    float4 _196 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _210 = o0;
    _210.z = mad(_196.w, r1.w, mad(_196.z, r1.z, mad(_196.y, r1.y, _196.x * r1.x)));
    o0 = _210;
    float4 _222 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _236 = o0;
    _236.w = mad(_222.w, r1.w, mad(_222.z, r1.z, mad(_222.y, r1.y, _222.x * r1.x)));
    o0 = _236;
    float3 _250 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_250.x, _250.y, _250.z, r0.w);
    float3 _260 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _272 = r1;
    _272.x = mad(_260.z, r0.xyz.z, mad(_260.y, r0.xyz.y, _260.x * r0.xyz.x));
    r1 = _272;
    float3 _281 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _293 = r1;
    _293.y = mad(_281.z, r0.xyz.z, mad(_281.y, r0.xyz.y, _281.x * r0.xyz.x));
    r1 = _293;
    float3 _302 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _314 = r1;
    _314.z = mad(_302.z, r0.xyz.z, mad(_302.y, r0.xyz.y, _302.x * r0.xyz.x));
    r1 = _314;
    float4 _329 = r0;
    _329.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _329;
    float4 _334 = r0;
    _334.x = rsqrt(r0.x);
    r0 = _334;
    float3 _340 = r0.xxx * r1.xyz;
    r0 = float4(_340.x, _340.y, _340.z, r0.w);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _360 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _373 = r2;
    _373.x = mad(_360.z, r1.xyz.z, mad(_360.y, r1.xyz.y, _360.x * r1.xyz.x));
    r2 = _373;
    float3 _382 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _394 = r2;
    _394.y = mad(_382.z, r1.xyz.z, mad(_382.y, r1.xyz.y, _382.x * r1.xyz.x));
    r2 = _394;
    float3 _403 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _415 = r2;
    _415.z = mad(_403.z, r1.xyz.z, mad(_403.y, r1.xyz.y, _403.x * r1.xyz.x));
    r2 = _415;
    float4 _430 = r0;
    _430.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _430;
    float4 _435 = r0;
    _435.w = rsqrt(r0.w);
    r0 = _435;
    float3 _441 = r0.www * r2.xyz;
    r1 = float4(_441.x, _441.y, _441.z, r1.w);
    float3 _448 = r0.zxy * r1.yzx;
    r2 = float4(_448.x, _448.y, _448.z, r2.w);
    float3 _459 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_459.x, _459.y, _459.z, r2.w);
    float3 _469 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _481 = o1;
    _481.z = mad(_469.z, r0.xyz.z, mad(_469.y, r0.xyz.y, _469.x * r0.xyz.x));
    o1 = _481;
    float3 _490 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _502 = o1;
    _502.x = mad(_490.z, r1.xyz.z, mad(_490.y, r1.xyz.y, _490.x * r1.xyz.x));
    o1 = _502;
    float3 _508 = r1.www * r2.xyz;
    r0 = float4(_508.x, _508.y, _508.z, r0.w);
    float3 _518 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _530 = o1;
    _530.y = mad(_518.z, r0.xyz.z, mad(_518.y, r0.xyz.y, _518.x * r0.xyz.x));
    o1 = _530;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
