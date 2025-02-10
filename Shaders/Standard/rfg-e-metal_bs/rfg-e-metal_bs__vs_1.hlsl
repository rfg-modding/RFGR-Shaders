cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _54 = r0;
    _54.w = asfloat(1065353216u);
    r0 = _54;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _64 = r1;
    _64.w = asfloat(1065353216u);
    r1 = _64;
    float4 _82 = r0;
    _82.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _82;
    float4 _100 = r0;
    _100.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _100;
    float4 _118 = r0;
    _118.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _118;
    float4 _133 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _147 = o0;
    _147.x = mad(_133.w, r0.w, mad(_133.z, r0.z, mad(_133.y, r0.y, _133.x * r0.x)));
    o0 = _147;
    float4 _159 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _173 = o0;
    _173.y = mad(_159.w, r0.w, mad(_159.z, r0.z, mad(_159.y, r0.y, _159.x * r0.x)));
    o0 = _173;
    float4 _185 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _199 = o0;
    _199.z = mad(_185.w, r0.w, mad(_185.z, r0.z, mad(_185.y, r0.y, _185.x * r0.x)));
    o0 = _199;
    float4 _211 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _225 = o0;
    _225.w = mad(_211.w, r0.w, mad(_211.z, r0.z, mad(_211.y, r0.y, _211.x * r0.x)));
    o0 = _225;
    float3 _238 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_238.x, _238.y, _238.z, r1.w);
    float4 _256 = r2;
    _256.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _256;
    float4 _272 = r2;
    _272.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _272;
    float4 _288 = r2;
    _288.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _288;
    float4 _303 = r0;
    _303.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _303;
    float4 _308 = r0;
    _308.w = rsqrt(r0.w);
    r0 = _308;
    float3 _314 = r0.www * r2.xyz;
    r1 = float4(_314.x, _314.y, _314.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _341 = r3;
    _341.x = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _341;
    float4 _357 = r3;
    _357.y = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _357;
    float4 _373 = r3;
    _373.z = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _373;
    float4 _388 = r0;
    _388.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _388;
    float4 _393 = r0;
    _393.w = rsqrt(r0.w);
    r0 = _393;
    float3 _399 = r0.www * r3.xyz;
    r2 = float4(_399.x, _399.y, _399.z, r2.w);
    float3 _406 = r1.zxy * r2.yzx;
    r3 = float4(_406.x, _406.y, _406.z, r3.w);
    float3 _417 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_417.x, _417.y, _417.z, r3.w);
    float3 _424 = r2.www * r3.xyz;
    r3 = float4(_424.x, _424.y, _424.z, r3.w);
    float3 _438 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r4 = float4(_438.x, _438.y, _438.z, r4.w);
    float3 _455 = o1;
    _455.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o1 = _455;
    float3 _470 = o1;
    _470.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o1 = _470;
    float3 _485 = o1;
    _485.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o1 = _485;
    float3 _499 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_499.x, _499.y, _499.z, r4.w);
    float3 _513 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_513.x, _513.y, _513.z, r0.w);
    float4 _529 = r0;
    _529.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _529;
    float4 _534 = r0;
    _534.w = rsqrt(r0.w);
    r0 = _534;
    float3 _540 = r0.www * r4.xyz;
    r4 = float4(_540.x, _540.y, _540.z, r4.w);
    float3 _556 = o2;
    _556.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _556;
    float3 _565 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _577 = o3;
    _577.x = mad(_565.z, r2.xyz.z, mad(_565.y, r2.xyz.y, _565.x * r2.xyz.x));
    o3 = _577;
    float3 _592 = o2;
    _592.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _592;
    float3 _601 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _613 = o3;
    _613.z = mad(_601.z, r1.xyz.z, mad(_601.y, r1.xyz.y, _601.x * r1.xyz.x));
    o3 = _613;
    float3 _628 = o2;
    _628.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _628;
    float3 _637 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _649 = o3;
    _649.y = mad(_637.z, r3.xyz.z, mad(_637.y, r3.xyz.y, _637.x * r3.xyz.x));
    o3 = _649;
    float4 _658 = r0;
    _658.w = r0.y * cb0_m[13].x;
    r0 = _658;
    float4 _665 = r1;
    _665.x = r0.w * asfloat(3216550459u);
    r1 = _665;
    float4 _670 = r1;
    _670.x = exp2(r1.x);
    r1 = _670;
    float4 _677 = r1;
    _677.x = (-r1.x) + asfloat(1065353216u);
    r1 = _677;
    float4 _684 = r0;
    _684.w = r1.x / r0.w;
    r0 = _684;
    float4 _696 = r1;
    _696.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _696;
    float4 _711 = r0;
    _711.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _711;
    float4 _716 = r0;
    _716.x = sqrt(r0.x);
    r0 = _716;
    float4 _724 = r0;
    _724.x = r0.x * cb0_m[13].y;
    r0 = _724;
    float4 _734 = r0;
    _734.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _734;
    float4 _746 = r0;
    _746.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _746;
    float4 _752 = r0;
    _752.x = exp2(-r0.x);
    r0 = _752;
    float4 _758 = r0;
    _758.x = min(r0.x, asfloat(1065353216u));
    r0 = _758;
    float4 _765 = o3;
    _765.w = (-r0.x) + asfloat(1065353216u);
    o3 = _765;
    float2 _772 = float2(asint(shader_in[1].xy));
    r0 = float4(_772.x, _772.y, r0.z, r0.w);
    float2 _783 = r0.xy * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(_783.x, _783.y, r0.z, r0.w);
    float2 _792 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_792.x, _792.y, o4.z, o4.w);
    float2 _800 = float2(asint(shader_in[4].xy));
    r0 = float4(_800.x, _800.y, r0.z, r0.w);
    float2 _806 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _806.x, _806.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _815 = asfloat(v1);
    shader_in[1] = float4(_815.x, _815.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _826 = asfloat(v4);
    shader_in[4] = float4(_826.x, _826.y, shader_in[4].z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
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
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
