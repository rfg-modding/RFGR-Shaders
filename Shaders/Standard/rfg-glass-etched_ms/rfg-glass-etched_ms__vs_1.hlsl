cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static float3 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    float4 _65 = r1;
    _65.x = shader_in[4].x * asfloat(1082130432u);
    r1 = _65;
    float3 _78 = (r1.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r1 = float4(_78.x, _78.y, _78.z, r1.w);
    float4 _82 = r1;
    _82.w = asfloat(1065353216u);
    r1 = _82;
    float4 _97 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _111 = r0;
    _111.x = mad(_97.w, r1.w, mad(_97.z, r1.z, mad(_97.y, r1.y, _97.x * r1.x)));
    r0 = _111;
    float4 _123 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _137 = r0;
    _137.y = mad(_123.w, r1.w, mad(_123.z, r1.z, mad(_123.y, r1.y, _123.x * r1.x)));
    r0 = _137;
    float4 _149 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _163 = r0;
    _163.z = mad(_149.w, r1.w, mad(_149.z, r1.z, mad(_149.y, r1.y, _149.x * r1.x)));
    r0 = _163;
    float4 _174 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _188 = o0;
    _188.x = mad(_174.w, r0.w, mad(_174.z, r0.z, mad(_174.y, r0.y, _174.x * r0.x)));
    o0 = _188;
    float4 _199 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _213 = o0;
    _213.y = mad(_199.w, r0.w, mad(_199.z, r0.z, mad(_199.y, r0.y, _199.x * r0.x)));
    o0 = _213;
    float4 _224 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _238 = o0;
    _238.z = mad(_224.w, r0.w, mad(_224.z, r0.z, mad(_224.y, r0.y, _224.x * r0.x)));
    o0 = _238;
    float4 _249 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _263 = o0;
    _263.w = mad(_249.w, r0.w, mad(_249.z, r0.z, mad(_249.y, r0.y, _249.x * r0.x)));
    o0 = _263;
    float2 _269 = float2(asint(shader_in[1].xy));
    r1 = float4(_269.x, _269.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _302 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_302.x, _302.y, _302.z, r1.w);
    float3 _312 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_312.x, _312.y, _312.z, r2.w);
    float3 _324 = (shader_in[4].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_324.x, _324.y, _324.z, r1.w);
    float3 _334 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _346 = r2;
    _346.x = mad(_334.z, r1.xyz.z, mad(_334.y, r1.xyz.y, _334.x * r1.xyz.x));
    r2 = _346;
    float3 _355 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _367 = r2;
    _367.y = mad(_355.z, r1.xyz.z, mad(_355.y, r1.xyz.y, _355.x * r1.xyz.x));
    r2 = _367;
    float3 _376 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _388 = r2;
    _388.z = mad(_376.z, r1.xyz.z, mad(_376.y, r1.xyz.y, _376.x * r1.xyz.x));
    r2 = _388;
    float4 _403 = r0;
    _403.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _403;
    float4 _408 = r0;
    _408.w = rsqrt(r0.w);
    r0 = _408;
    o3 = r0.www * r2.xyz;
    o4 = float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    o5 = float4(r0.xyz.x, r0.xyz.y, r0.xyz.z, o5.w);
    float3 _439 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_439.x, _439.y, _439.z, r0.w);
    float4 _443 = o5;
    _443.w = asfloat(0u);
    o5 = _443;
    float4 _452 = r0;
    _452.w = r0.y * cb0_m[13].x;
    r0 = _452;
    float4 _459 = r1;
    _459.x = r0.w * asfloat(3216550459u);
    r1 = _459;
    float4 _464 = r1;
    _464.x = exp2(r1.x);
    r1 = _464;
    float4 _471 = r1;
    _471.x = (-r1.x) + asfloat(1065353216u);
    r1 = _471;
    float4 _478 = r0;
    _478.w = r1.x / r0.w;
    r0 = _478;
    float4 _490 = r1;
    _490.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _490;
    float4 _505 = r0;
    _505.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _505;
    float4 _510 = r0;
    _510.x = sqrt(r0.x);
    r0 = _510;
    float4 _518 = r0;
    _518.x = r0.x * cb0_m[13].y;
    r0 = _518;
    float4 _528 = r0;
    _528.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _528;
    float4 _540 = r0;
    _540.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _540;
    float4 _546 = r0;
    _546.x = exp2(-r0.x);
    r0 = _546;
    float4 _552 = r0;
    _552.x = min(r0.x, asfloat(1065353216u));
    r0 = _552;
    float4 _559 = o6;
    _559.w = (-r0.x) + asfloat(1065353216u);
    o6 = _559;
    float3 _568 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    o6 = float4(_568.x, _568.y, _568.z, o6.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _577 = asfloat(v1);
    shader_in[1] = float4(_577.x, _577.y, shader_in[1].z, shader_in[1].w);
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
