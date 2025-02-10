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
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _52 = r0;
    _52.x = shader_in[7].x * asfloat(1082130432u);
    r0 = _52;
    float3 _65 = (r0.xxx * shader_in[6].xyz) + shader_in[0].xyz;
    r0 = float4(_65.x, _65.y, _65.z, r0.w);
    float4 _70 = r0;
    _70.w = asfloat(1065353216u);
    r0 = _70;
    float4 _85 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _100 = r1;
    _100.x = mad(_85.w, r0.w, mad(_85.z, r0.z, mad(_85.y, r0.y, _85.x * r0.x)));
    r1 = _100;
    float4 _112 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _126 = r1;
    _126.y = mad(_112.w, r0.w, mad(_112.z, r0.z, mad(_112.y, r0.y, _112.x * r0.x)));
    r1 = _126;
    float4 _138 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _152 = r1;
    _152.z = mad(_138.w, r0.w, mad(_138.z, r0.z, mad(_138.y, r0.y, _138.x * r0.x)));
    r1 = _152;
    float4 _155 = r1;
    _155.w = asfloat(1065353216u);
    r1 = _155;
    float4 _166 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _180 = o0;
    _180.x = mad(_166.w, r1.w, mad(_166.z, r1.z, mad(_166.y, r1.y, _166.x * r1.x)));
    o0 = _180;
    float4 _191 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _205 = o0;
    _205.y = mad(_191.w, r1.w, mad(_191.z, r1.z, mad(_191.y, r1.y, _191.x * r1.x)));
    o0 = _205;
    float4 _216 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _230 = o0;
    _230.z = mad(_216.w, r1.w, mad(_216.z, r1.z, mad(_216.y, r1.y, _216.x * r1.x)));
    o0 = _230;
    float4 _242 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _256 = o0;
    _256.w = mad(_242.w, r1.w, mad(_242.z, r1.z, mad(_242.y, r1.y, _242.x * r1.x)));
    o0 = _256;
    float3 _270 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_270.x, _270.y, _270.z, r0.w);
    float3 _280 = (shader_in[8].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_280.x, _280.y, _280.z, r1.w);
    float3 _291 = (shader_in[7].xxx * r1.xyz) + r0.xyz;
    r0 = float4(_291.x, _291.y, _291.z, r0.w);
    float3 _301 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _313 = r1;
    _313.x = mad(_301.z, r0.xyz.z, mad(_301.y, r0.xyz.y, _301.x * r0.xyz.x));
    r1 = _313;
    float3 _322 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _334 = r1;
    _334.y = mad(_322.z, r0.xyz.z, mad(_322.y, r0.xyz.y, _322.x * r0.xyz.x));
    r1 = _334;
    float3 _343 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _355 = r1;
    _355.z = mad(_343.z, r0.xyz.z, mad(_343.y, r0.xyz.y, _343.x * r0.xyz.x));
    r1 = _355;
    float4 _370 = r0;
    _370.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _370;
    float4 _375 = r0;
    _375.x = rsqrt(r0.x);
    r0 = _375;
    float3 _381 = r0.xxx * r1.xyz;
    r0 = float4(_381.x, _381.y, _381.z, r0.w);
    r1 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _401 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _414 = r2;
    _414.x = mad(_401.z, r1.xyz.z, mad(_401.y, r1.xyz.y, _401.x * r1.xyz.x));
    r2 = _414;
    float3 _423 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _435 = r2;
    _435.y = mad(_423.z, r1.xyz.z, mad(_423.y, r1.xyz.y, _423.x * r1.xyz.x));
    r2 = _435;
    float3 _444 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _456 = r2;
    _456.z = mad(_444.z, r1.xyz.z, mad(_444.y, r1.xyz.y, _444.x * r1.xyz.x));
    r2 = _456;
    float4 _471 = r0;
    _471.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _471;
    float4 _476 = r0;
    _476.w = rsqrt(r0.w);
    r0 = _476;
    float3 _482 = r0.www * r2.xyz;
    r1 = float4(_482.x, _482.y, _482.z, r1.w);
    float3 _489 = r0.zxy * r1.yzx;
    r2 = float4(_489.x, _489.y, _489.z, r2.w);
    float3 _500 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_500.x, _500.y, _500.z, r2.w);
    float3 _510 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _522 = o1;
    _522.z = mad(_510.z, r0.xyz.z, mad(_510.y, r0.xyz.y, _510.x * r0.xyz.x));
    o1 = _522;
    float3 _531 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _543 = o1;
    _543.x = mad(_531.z, r1.xyz.z, mad(_531.y, r1.xyz.y, _531.x * r1.xyz.x));
    o1 = _543;
    float3 _549 = r1.www * r2.xyz;
    r0 = float4(_549.x, _549.y, _549.z, r0.w);
    float3 _559 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _571 = o1;
    _571.y = mad(_559.z, r0.xyz.z, mad(_559.y, r0.xyz.y, _559.x * r0.xyz.x));
    o1 = _571;
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
