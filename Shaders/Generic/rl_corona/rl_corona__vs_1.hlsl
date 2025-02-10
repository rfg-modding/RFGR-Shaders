cbuffer cb0_t : register(b160)
{
    float4 cb0_m[10] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float4 v0;
static float4 v1;
static float4 v2;
static float4 v6;
static float4 v9;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v6 : TEXCOORD6;
    float4 v9 : TEXCOORD9;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[11];
static float4 o0;
static float4 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float2 _44 = shader_in[1].zw + asfloat(uint2(3204448256u, 3204448256u));
    r0 = float4(_44.x, _44.y, r0.z, r0.w);
    float2 _54 = r0.xy * shader_in[9].ww;
    r0 = float4(_54.x, _54.y, r0.z, r0.w);
    float4 _64 = r1;
    _64.x = sin(shader_in[2].xxxx.x);
    r1 = _64;
    float4 _69 = r2;
    _69.x = cos(shader_in[2].xxxx.x);
    r2 = _69;
    float3 _89 = r2.xxx * float3(cb0_m[8].x, cb0_m[8].y, cb0_m[8].z);
    r1 = float4(r1.x, _89.x, _89.y, _89.z);
    float3 _105 = (r1.xxx * float3(cb0_m[9].x, cb0_m[9].y, cb0_m[9].z)) + r1.yzw;
    r1 = float4(r1.x, _105.x, _105.y, _105.z);
    r3 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r3.w);
    float4 _116 = r3;
    _116.w = asfloat(1065353216u);
    r3 = _116;
    float4 _127 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _142 = r4;
    _142.x = mad(_127.w, r3.w, mad(_127.z, r3.z, mad(_127.y, r3.y, _127.x * r3.x)));
    r4 = _142;
    float4 _153 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _167 = r4;
    _167.y = mad(_153.w, r3.w, mad(_153.z, r3.z, mad(_153.y, r3.y, _153.x * r3.x)));
    r4 = _167;
    float4 _178 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _192 = r4;
    _192.z = mad(_178.w, r3.w, mad(_178.z, r3.z, mad(_178.y, r3.y, _178.x * r3.x)));
    r4 = _192;
    float3 _201 = (r0.xxx * r1.yzw) + r4.xyz;
    r0 = float4(_201.x, r0.y, _201.y, _201.z);
    float3 _214 = r1.xxx * float3(cb0_m[8].x, cb0_m[8].y, cb0_m[8].z);
    r1 = float4(_214.x, _214.y, _214.z, r1.w);
    float3 _231 = ((-r2.xxx) * float3(cb0_m[9].x, cb0_m[9].y, cb0_m[9].z)) + r1.xyz;
    r1 = float4(_231.x, _231.y, _231.z, r1.w);
    float3 _241 = (r0.yyy * r1.xyz) + r0.xzw;
    r0 = float4(_241.x, _241.y, _241.z, r0.w);
    float4 _245 = r0;
    _245.w = asfloat(1065353216u);
    r0 = _245;
    float4 _256 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _270 = r1;
    _270.z = mad(_256.w, r0.w, mad(_256.z, r0.z, mad(_256.y, r0.y, _256.x * r0.x)));
    r1 = _270;
    float4 _281 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _295 = r1;
    _295.x = mad(_281.w, r0.w, mad(_281.z, r0.z, mad(_281.y, r0.y, _281.x * r0.x)));
    r1 = _295;
    float4 _306 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _320 = r1;
    _320.y = mad(_306.w, r0.w, mad(_306.z, r0.z, mad(_306.y, r0.y, _306.x * r0.x)));
    r1 = _320;
    float4 _332 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _346 = r1;
    _346.w = mad(_332.w, r0.w, mad(_332.z, r0.z, mad(_332.y, r0.y, _332.x * r0.x)));
    r1 = _346;
    r0 = (-r1.xyww) + r1;
    float4 _362 = r1;
    _362.z = asfloat((shader_in[0].w >= asfloat(0u)) ? 4294967295u : 0u);
    r1 = _362;
    float4 _369 = r1;
    _369.z = asfloat(asuint(r1.z) & 1065353216u);
    r1 = _369;
    o0 = (r1.zzzz * r0) + r1.xyww;
    o1 = float4(shader_in[6].xyz.x, shader_in[6].xyz.y, shader_in[6].xyz.z, o1.w);
    float4 _385 = o1;
    _385.w = asfloat(0u);
    o1 = _385;
}

void vert_main()
{
    shader_in[0] = v0;
    shader_in[1] = v1;
    shader_in[2] = v2;
    shader_in[6] = v6;
    shader_in[9] = v9;
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
    v6 = stage_input.v6;
    v9 = stage_input.v9;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
