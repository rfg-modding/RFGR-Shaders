cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
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
static float2 o2;
static float3 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _54 = r0;
    _54.w = asfloat(1065353216u);
    r0 = _54;
    float4 _73 = r1;
    _73.x = mad(shader_in[3].w, r0.w, mad(shader_in[3].z, r0.z, mad(shader_in[3].y, r0.y, shader_in[3].x * r0.x)));
    r1 = _73;
    float4 _91 = r1;
    _91.y = mad(shader_in[4].w, r0.w, mad(shader_in[4].z, r0.z, mad(shader_in[4].y, r0.y, shader_in[4].x * r0.x)));
    r1 = _91;
    float4 _109 = r1;
    _109.z = mad(shader_in[5].w, r0.w, mad(shader_in[5].z, r0.z, mad(shader_in[5].y, r0.y, shader_in[5].x * r0.x)));
    r1 = _109;
    float4 _112 = r1;
    _112.w = asfloat(1065353216u);
    r1 = _112;
    float4 _128 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _142 = o0;
    _142.x = mad(_128.w, r1.w, mad(_128.z, r1.z, mad(_128.y, r1.y, _128.x * r1.x)));
    o0 = _142;
    float4 _154 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _168 = o0;
    _168.y = mad(_154.w, r1.w, mad(_154.z, r1.z, mad(_154.y, r1.y, _154.x * r1.x)));
    o0 = _168;
    float4 _180 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _194 = o0;
    _194.z = mad(_180.w, r1.w, mad(_180.z, r1.z, mad(_180.y, r1.y, _180.x * r1.x)));
    o0 = _194;
    float4 _205 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _219 = o0;
    _219.w = mad(_205.w, r1.w, mad(_205.z, r1.z, mad(_205.y, r1.y, _205.x * r1.x)));
    o0 = _219;
    float3 _232 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_232.x, _232.y, _232.z, r0.w);
    float4 _249 = r1;
    _249.x = mad(shader_in[3].xyz.z, r0.xyz.z, mad(shader_in[3].xyz.y, r0.xyz.y, shader_in[3].xyz.x * r0.xyz.x));
    r1 = _249;
    float4 _265 = r1;
    _265.y = mad(shader_in[4].xyz.z, r0.xyz.z, mad(shader_in[4].xyz.y, r0.xyz.y, shader_in[4].xyz.x * r0.xyz.x));
    r1 = _265;
    float4 _281 = r1;
    _281.z = mad(shader_in[5].xyz.z, r0.xyz.z, mad(shader_in[5].xyz.y, r0.xyz.y, shader_in[5].xyz.x * r0.xyz.x));
    r1 = _281;
    float4 _296 = r0;
    _296.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _296;
    float4 _301 = r0;
    _301.x = rsqrt(r0.x);
    r0 = _301;
    o1 = r0.xxx * r1.xyz;
    float2 _312 = float2(asint(shader_in[1].xy));
    r0 = float4(_312.x, _312.y, r0.z, r0.w);
    o2 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _336 = asfloat(v1);
    shader_in[1] = float4(_336.x, _336.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
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
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
