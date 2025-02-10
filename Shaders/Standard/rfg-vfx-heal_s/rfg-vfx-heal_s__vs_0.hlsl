cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float4 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _40 = r0;
    _40.w = asfloat(1065353216u);
    r0 = _40;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _50 = r1;
    _50.w = asfloat(1065353216u);
    r1 = _50;
    float4 _66 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _80 = r0;
    _80.x = mad(_66.w, r1.w, mad(_66.z, r1.z, mad(_66.y, r1.y, _66.x * r1.x)));
    r0 = _80;
    float4 _92 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _106 = r0;
    _106.y = mad(_92.w, r1.w, mad(_92.z, r1.z, mad(_92.y, r1.y, _92.x * r1.x)));
    r0 = _106;
    float4 _118 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _132 = r0;
    _132.z = mad(_118.w, r1.w, mad(_118.z, r1.z, mad(_118.y, r1.y, _118.x * r1.x)));
    r0 = _132;
    float4 _143 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _157 = o0;
    _157.x = mad(_143.w, r0.w, mad(_143.z, r0.z, mad(_143.y, r0.y, _143.x * r0.x)));
    o0 = _157;
    float4 _168 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _182 = o0;
    _182.y = mad(_168.w, r0.w, mad(_168.z, r0.z, mad(_168.y, r0.y, _168.x * r0.x)));
    o0 = _182;
    float4 _193 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _207 = o0;
    _207.z = mad(_193.w, r0.w, mad(_193.z, r0.z, mad(_193.y, r0.y, _193.x * r0.x)));
    o0 = _207;
    float4 _219 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _233 = o0;
    _233.w = mad(_219.w, r0.w, mad(_219.z, r0.z, mad(_219.y, r0.y, _219.x * r0.x)));
    o0 = _233;
    r1 = float4(asint(shader_in[1].xyxx));
    float2 _248 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    r2 = float4(_248.x, _248.y, r2.z, r2.w);
    o1 = float4(r2.xy.x, o1.y, o1.z, r2.xy.y);
    float3 _267 = cb0_m[12].x.xxx * asfloat(uint3(1028443341u, 1036831949u, 3184315597u));
    r2 = float4(_267.x, _267.y, _267.z, r2.w);
    float2 _278 = (r1.yw * asfloat(uint2(981467136u, 985661440u))) + r2.xz;
    o1 = float4(o1.x, _278.x, _278.y, o1.w);
    float2 _289 = (r1.zy * asfloat(uint2(989855744u, 981467136u))) + r2.yy;
    o2 = float4(_289.x, _289.y, o2.z, o2.w);
    float3 _304 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_304.x, _304.y, _304.z, r1.w);
    float3 _318 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_318.x, _318.y, _318.z, r0.w);
    float4 _328 = r0;
    _328.w = r1.y * cb0_m[13].x;
    r0 = _328;
    float4 _335 = r1;
    _335.w = r0.w * asfloat(3216550459u);
    r1 = _335;
    float4 _340 = r1;
    _340.w = exp2(r1.w);
    r1 = _340;
    float4 _347 = r1;
    _347.w = (-r1.w) + asfloat(1065353216u);
    r1 = _347;
    float4 _354 = r0;
    _354.w = r1.w / r0.w;
    r0 = _354;
    float4 _366 = r1;
    _366.w = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r1 = _366;
    float4 _381 = r1;
    _381.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _381;
    float4 _386 = r1;
    _386.x = sqrt(r1.x);
    r1 = _386;
    float4 _394 = r1;
    _394.x = r1.x * cb0_m[13].y;
    r1 = _394;
    float4 _404 = r0;
    _404.w = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _404;
    float4 _416 = r0;
    _416.w = (r0.w * r1.x) + (-cb0_m[13].w);
    r0 = _416;
    float4 _422 = r0;
    _422.w = exp2(-r0.w);
    r0 = _422;
    float4 _428 = r0;
    _428.w = min(r0.w, asfloat(1065353216u));
    r0 = _428;
    float4 _435 = o2;
    _435.w = (-r0.w) + asfloat(1065353216u);
    o2 = _435;
    float4 _450 = r0;
    _450.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _450;
    float4 _455 = r0;
    _455.w = rsqrt(r0.w);
    r0 = _455;
    float3 _461 = r0.www * r0.xyz;
    r0 = float4(_461.x, _461.y, _461.z, r0.w);
    float3 _474 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_474.x, _474.y, _474.z, r1.w);
    float3 _484 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _496 = r2;
    _496.x = mad(_484.z, r1.xyz.z, mad(_484.y, r1.xyz.y, _484.x * r1.xyz.x));
    r2 = _496;
    float3 _505 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _517 = r2;
    _517.y = mad(_505.z, r1.xyz.z, mad(_505.y, r1.xyz.y, _505.x * r1.xyz.x));
    r2 = _517;
    float3 _526 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _538 = r2;
    _538.z = mad(_526.z, r1.xyz.z, mad(_526.y, r1.xyz.y, _526.x * r1.xyz.x));
    r2 = _538;
    float4 _553 = r0;
    _553.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _553;
    float4 _558 = r0;
    _558.w = rsqrt(r0.w);
    r0 = _558;
    float3 _564 = r0.www * r2.xyz;
    r1 = float4(_564.x, _564.y, _564.z, r1.w);
    float4 _583 = o2;
    _583.z = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    o2 = _583;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _591 = asfloat(v1);
    shader_in[1] = float4(_591.x, _591.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
