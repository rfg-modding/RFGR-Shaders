cbuffer cb0_t : register(b160)
{
    float4 cb0_m[16] : packoffset(c0);
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
static float2 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float4 o1;
static float4 r0;
static float4 r1;

void vs_main()
{
    o0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, o0.w);
    float4 _48 = o0;
    _48.w = asfloat(1065353216u);
    o0 = _48;
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    float3 _65 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_65.x, _65.y, _65.z, r1.w);
    float4 _70 = r1;
    _70.w = asfloat(1065353216u);
    r1 = _70;
    float4 _81 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _95 = r0;
    _95.x = mad(_81.w, r1.w, mad(_81.z, r1.z, mad(_81.y, r1.y, _81.x * r1.x)));
    r0 = _95;
    float4 _107 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _121 = r0;
    _121.y = mad(_107.w, r1.w, mad(_107.z, r1.z, mad(_107.y, r1.y, _107.x * r1.x)));
    r0 = _121;
    float4 _133 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _147 = r0;
    _147.z = mad(_133.w, r1.w, mad(_133.z, r1.z, mad(_133.y, r1.y, _133.x * r1.x)));
    r0 = _147;
    float4 _158 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _172 = r1;
    _172.x = mad(_158.w, r0.w, mad(_158.z, r0.z, mad(_158.y, r0.y, _158.x * r0.x)));
    r1 = _172;
    float4 _184 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _198 = r1;
    _198.y = mad(_184.w, r0.w, mad(_184.z, r0.z, mad(_184.y, r0.y, _184.x * r0.x)));
    r1 = _198;
    float4 _209 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _223 = r0;
    _223.x = mad(_209.w, r0.w, mad(_209.z, r0.z, mad(_209.y, r0.y, _209.x * r0.x)));
    r0 = _223;
    float4 _231 = r0;
    _231.x = (-r0.x) / r1.y;
    r0 = _231;
    float4 _238 = r0;
    _238.y = r1.x / r1.y;
    r0 = _238;
    float4 _250 = r0;
    _250.z = (r0.y * asfloat(1056964608u)) + cb0_m[15].x;
    r0 = _250;
    float4 _260 = r0;
    _260.w = (r0.x * asfloat(1056964608u)) + cb0_m[15].y;
    r0 = _260;
    float2 _267 = r0.zw + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_267.x, _267.y, r0.z, r0.w);
    float2 _279 = shader_in[1].xy + float2(cb0_m[15].x, cb0_m[15].y);
    r0 = float4(r0.x, r0.y, _279.x, _279.y);
    float2 _287 = (-r0.xy) + r0.zw;
    r0 = float4(_287.x, _287.y, r0.z, r0.w);
    o1 = float4(r0.zw.x, r0.zw.y, o1.z, o1.w);
    float2 _307 = float2(cb0_m[13].x, cb0_m[13].y) * float2(cb0_m[15].z, cb0_m[15].w);
    r0 = float4(r0.x, r0.y, _307.x, _307.y);
    float2 _314 = r0.xy / r0.zw;
    r0 = float4(_314.x, _314.y, r0.z, r0.w);
    float2 _320 = r0.xy + asfloat(uint2(1056964608u, 1056964608u));
    o1 = float4(o1.x, o1.y, _320.x, _320.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
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
