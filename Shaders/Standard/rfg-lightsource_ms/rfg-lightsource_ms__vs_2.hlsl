cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static int2 v1;
static float3 v2;
static float3 v3;
static float3 v4;
static float3 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
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
    float4 _58 = r0;
    _58.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _58;
    float3 _71 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_71.x, _71.y, _71.z, r0.w);
    float4 _76 = r0;
    _76.w = asfloat(1065353216u);
    r0 = _76;
    float4 _91 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _106 = r1;
    _106.x = mad(_91.w, r0.w, mad(_91.z, r0.z, mad(_91.y, r0.y, _91.x * r0.x)));
    r1 = _106;
    float4 _118 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _132 = r1;
    _132.y = mad(_118.w, r0.w, mad(_118.z, r0.z, mad(_118.y, r0.y, _118.x * r0.x)));
    r1 = _132;
    float4 _144 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _158 = r1;
    _158.z = mad(_144.w, r0.w, mad(_144.z, r0.z, mad(_144.y, r0.y, _144.x * r0.x)));
    r1 = _158;
    float4 _161 = r1;
    _161.w = asfloat(1065353216u);
    r1 = _161;
    float4 _172 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _186 = o0;
    _186.x = mad(_172.w, r1.w, mad(_172.z, r1.z, mad(_172.y, r1.y, _172.x * r1.x)));
    o0 = _186;
    float4 _197 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _211 = o0;
    _211.y = mad(_197.w, r1.w, mad(_197.z, r1.z, mad(_197.y, r1.y, _197.x * r1.x)));
    o0 = _211;
    float4 _222 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _236 = o0;
    _236.z = mad(_222.w, r1.w, mad(_222.z, r1.z, mad(_222.y, r1.y, _222.x * r1.x)));
    o0 = _236;
    float4 _247 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _261 = o0;
    _261.w = mad(_247.w, r1.w, mad(_247.z, r1.z, mad(_247.y, r1.y, _247.x * r1.x)));
    o0 = _261;
    float3 _275 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_275.x, _275.y, _275.z, r0.w);
    float2 _282 = float2(asint(shader_in[1].xy));
    r1 = float4(_282.x, _282.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _313 = r0;
    _313.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _313;
    float4 _318 = r0;
    _318.w = rsqrt(r0.w);
    r0 = _318;
    o3 = r0.www * r0.xyz;
    float3 _336 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_336.x, _336.y, _336.z, r0.w);
    float3 _346 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_346.x, _346.y, _346.z, r1.w);
    float3 _357 = (shader_in[4].xxx * r1.xyz) + r0.xyz;
    r0 = float4(_357.x, _357.y, _357.z, r0.w);
    float3 _367 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _379 = r1;
    _379.x = mad(_367.z, r0.xyz.z, mad(_367.y, r0.xyz.y, _367.x * r0.xyz.x));
    r1 = _379;
    float3 _388 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _400 = r1;
    _400.y = mad(_388.z, r0.xyz.z, mad(_388.y, r0.xyz.y, _388.x * r0.xyz.x));
    r1 = _400;
    float3 _409 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _421 = r1;
    _421.z = mad(_409.z, r0.xyz.z, mad(_409.y, r0.xyz.y, _409.x * r0.xyz.x));
    r1 = _421;
    float4 _436 = r0;
    _436.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _436;
    float4 _441 = r0;
    _441.x = rsqrt(r0.x);
    r0 = _441;
    float3 _447 = r0.xxx * r1.xyz;
    o4 = float4(_447.x, _447.y, _447.z, o4.w);
    float4 _451 = o4;
    _451.w = asfloat(0u);
    o4 = _451;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _459 = asfloat(v1);
    shader_in[1] = float4(_459.x, _459.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
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
