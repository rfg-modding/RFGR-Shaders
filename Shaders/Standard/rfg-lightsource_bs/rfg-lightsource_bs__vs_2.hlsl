cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _49 = r0;
    _49.w = asfloat(1065353216u);
    r0 = _49;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _59 = r1;
    _59.w = asfloat(1065353216u);
    r1 = _59;
    float4 _77 = r0;
    _77.x = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _77;
    float4 _95 = r0;
    _95.y = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _95;
    float4 _113 = r0;
    _113.z = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _113;
    float4 _129 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _143 = o0;
    _143.x = mad(_129.w, r0.w, mad(_129.z, r0.z, mad(_129.y, r0.y, _129.x * r0.x)));
    o0 = _143;
    float4 _155 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _169 = o0;
    _169.y = mad(_155.w, r0.w, mad(_155.z, r0.z, mad(_155.y, r0.y, _155.x * r0.x)));
    o0 = _169;
    float4 _181 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _195 = o0;
    _195.z = mad(_181.w, r0.w, mad(_181.z, r0.z, mad(_181.y, r0.y, _181.x * r0.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _220 = o0;
    _220.w = mad(_206.w, r0.w, mad(_206.z, r0.z, mad(_206.y, r0.y, _206.x * r0.x)));
    o0 = _220;
    float3 _234 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_234.x, _234.y, _234.z, r0.w);
    float2 _241 = float2(asint(shader_in[1].xy));
    r1 = float4(_241.x, _241.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _272 = r0;
    _272.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _272;
    float4 _277 = r0;
    _277.w = rsqrt(r0.w);
    r0 = _277;
    o3 = r0.www * r0.xyz;
    float3 _295 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_295.x, _295.y, _295.z, r0.w);
    float4 _312 = r1;
    _312.x = mad(shader_in[3].xyz.z, r0.xyz.z, mad(shader_in[3].xyz.y, r0.xyz.y, shader_in[3].xyz.x * r0.xyz.x));
    r1 = _312;
    float4 _328 = r1;
    _328.y = mad(shader_in[4].xyz.z, r0.xyz.z, mad(shader_in[4].xyz.y, r0.xyz.y, shader_in[4].xyz.x * r0.xyz.x));
    r1 = _328;
    float4 _344 = r1;
    _344.z = mad(shader_in[5].xyz.z, r0.xyz.z, mad(shader_in[5].xyz.y, r0.xyz.y, shader_in[5].xyz.x * r0.xyz.x));
    r1 = _344;
    float4 _359 = r0;
    _359.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _359;
    float4 _364 = r0;
    _364.x = rsqrt(r0.x);
    r0 = _364;
    float3 _370 = r0.xxx * r1.xyz;
    o4 = float4(_370.x, _370.y, _370.z, o4.w);
    float4 _374 = o4;
    _374.w = asfloat(0u);
    o4 = _374;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _382 = asfloat(v1);
    shader_in[1] = float4(_382.x, _382.y, shader_in[1].z, shader_in[1].w);
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
