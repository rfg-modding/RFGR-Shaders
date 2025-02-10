cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
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
static float4 r0;
static float4 r1;

void vs_main()
{
    float3 _38 = float3(asint(shader_in[0].xyz));
    r0 = float4(_38.x, _38.y, _38.z, r0.w);
    float3 _49 = r0.xyz + asfloat(uint3(1191149568u, 0u, 1191149568u));
    r0 = float4(_49.x, _49.y, _49.z, r0.w);
    float3 _58 = r0.xyz * asfloat(uint3(1006632960u, 1015021568u, 1006632960u));
    r0 = float4(_58.x, _58.y, _58.z, r0.w);
    float4 _63 = r0;
    _63.w = asfloat(1065353216u);
    r0 = _63;
    float4 _78 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _93 = r1;
    _93.x = mad(_78.w, r0.w, mad(_78.z, r0.z, mad(_78.y, r0.y, _78.x * r0.x)));
    r1 = _93;
    float4 _105 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _119 = r1;
    _119.y = mad(_105.w, r0.w, mad(_105.z, r0.z, mad(_105.y, r0.y, _105.x * r0.x)));
    r1 = _119;
    float4 _131 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _145 = r1;
    _145.z = mad(_131.w, r0.w, mad(_131.z, r0.z, mad(_131.y, r0.y, _131.x * r0.x)));
    r1 = _145;
    float4 _148 = r1;
    _148.w = asfloat(1065353216u);
    r1 = _148;
    float4 _159 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _173 = o0;
    _173.x = mad(_159.w, r1.w, mad(_159.z, r1.z, mad(_159.y, r1.y, _159.x * r1.x)));
    o0 = _173;
    float4 _184 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _198 = o0;
    _198.y = mad(_184.w, r1.w, mad(_184.z, r1.z, mad(_184.y, r1.y, _184.x * r1.x)));
    o0 = _198;
    float4 _209 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _223 = o0;
    _223.z = mad(_209.w, r1.w, mad(_209.z, r1.z, mad(_209.y, r1.y, _209.x * r1.x)));
    o0 = _223;
    float4 _235 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _249 = o0;
    _249.w = mad(_235.w, r1.w, mad(_235.z, r1.z, mad(_235.y, r1.y, _235.x * r1.x)));
    o0 = _249;
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
