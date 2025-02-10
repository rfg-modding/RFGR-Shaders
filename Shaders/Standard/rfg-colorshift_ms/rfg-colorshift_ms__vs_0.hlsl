cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v3;
static float3 v5;
static float3 v6;
static float3 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v3 : TEXCOORD3;
    float3 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _60 = r0;
    _60.x = shader_in[6].x * asfloat(1082130432u);
    r0 = _60;
    float3 _73 = (r0.xxx * shader_in[5].xyz) + shader_in[0].xyz;
    r0 = float4(_73.x, _73.y, _73.z, r0.w);
    float4 _78 = r0;
    _78.w = asfloat(1065353216u);
    r0 = _78;
    float4 _93 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _108 = r1;
    _108.x = mad(_93.w, r0.w, mad(_93.z, r0.z, mad(_93.y, r0.y, _93.x * r0.x)));
    r1 = _108;
    float4 _120 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _134 = r1;
    _134.y = mad(_120.w, r0.w, mad(_120.z, r0.z, mad(_120.y, r0.y, _120.x * r0.x)));
    r1 = _134;
    float4 _146 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _160 = r1;
    _160.z = mad(_146.w, r0.w, mad(_146.z, r0.z, mad(_146.y, r0.y, _146.x * r0.x)));
    r1 = _160;
    float4 _163 = r1;
    _163.w = asfloat(1065353216u);
    r1 = _163;
    float4 _174 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _188 = o0;
    _188.x = mad(_174.w, r1.w, mad(_174.z, r1.z, mad(_174.y, r1.y, _174.x * r1.x)));
    o0 = _188;
    float4 _199 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _213 = o0;
    _213.y = mad(_199.w, r1.w, mad(_199.z, r1.z, mad(_199.y, r1.y, _199.x * r1.x)));
    o0 = _213;
    float4 _224 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _238 = o0;
    _238.z = mad(_224.w, r1.w, mad(_224.z, r1.z, mad(_224.y, r1.y, _224.x * r1.x)));
    o0 = _238;
    float4 _250 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _264 = o0;
    _264.w = mad(_250.w, r1.w, mad(_250.z, r1.z, mad(_250.y, r1.y, _250.x * r1.x)));
    o0 = _264;
    float2 _270 = float2(asint(shader_in[1].xy));
    r0 = float4(_270.x, _270.y, r0.z, r0.w);
    float2 _281 = r0.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(_281.x, _281.y, r0.z, r0.w);
    o1 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _303 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_303.x, _303.y, _303.z, r0.w);
    float3 _317 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_317.x, _317.y, _317.z, r1.w);
    float4 _327 = r0;
    _327.w = r0.y * cb0_m[13].x;
    r0 = _327;
    float4 _334 = r1;
    _334.w = r0.w * asfloat(3216550459u);
    r1 = _334;
    float4 _339 = r1;
    _339.w = exp2(r1.w);
    r1 = _339;
    float4 _346 = r1;
    _346.w = (-r1.w) + asfloat(1065353216u);
    r1 = _346;
    float4 _353 = r0;
    _353.w = r1.w / r0.w;
    r0 = _353;
    float4 _365 = r1;
    _365.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _365;
    float4 _380 = r0;
    _380.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _380;
    float4 _385 = r0;
    _385.x = sqrt(r0.x);
    r0 = _385;
    float4 _393 = r0;
    _393.x = r0.x * cb0_m[13].y;
    r0 = _393;
    float4 _403 = r0;
    _403.y = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _403;
    float4 _415 = r0;
    _415.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _415;
    float4 _421 = r0;
    _421.x = exp2(-r0.x);
    r0 = _421;
    float4 _427 = r0;
    _427.x = min(r0.x, asfloat(1065353216u));
    r0 = _427;
    float4 _434 = o2;
    _434.w = (-r0.x) + asfloat(1065353216u);
    o2 = _434;
    float4 _449 = r0;
    _449.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _449;
    float4 _454 = r0;
    _454.x = rsqrt(r0.x);
    r0 = _454;
    float3 _460 = r0.xxx * r1.xyz;
    o2 = float4(_460.x, _460.y, _460.z, o2.w);
    float3 _474 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_474.x, _474.y, _474.z, r0.w);
    float3 _484 = (shader_in[7].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_484.x, _484.y, _484.z, r1.w);
    float3 _495 = (shader_in[6].xxx * r1.xyz) + r0.xyz;
    r0 = float4(_495.x, _495.y, _495.z, r0.w);
    float3 _505 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _517 = r1;
    _517.x = mad(_505.z, r0.xyz.z, mad(_505.y, r0.xyz.y, _505.x * r0.xyz.x));
    r1 = _517;
    float3 _526 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _538 = r1;
    _538.z = mad(_526.z, r0.xyz.z, mad(_526.y, r0.xyz.y, _526.x * r0.xyz.x));
    r1 = _538;
    float3 _547 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _559 = r1;
    _559.y = mad(_547.z, r0.xyz.z, mad(_547.y, r0.xyz.y, _547.x * r0.xyz.x));
    r1 = _559;
    float4 _574 = r0;
    _574.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _574;
    float4 _579 = r0;
    _579.x = rsqrt(r0.x);
    r0 = _579;
    float4 _586 = r0;
    _586.x = r0.x * r1.y;
    r0 = _586;
    float4 _598 = o3;
    _598.w = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    o3 = _598;
    float3 _607 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o3 = float4(_607.x, _607.y, _607.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _616 = asfloat(v1);
    shader_in[1] = float4(_616.x, _616.y, shader_in[1].z, shader_in[1].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
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
    v3 = stage_input.v3;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
