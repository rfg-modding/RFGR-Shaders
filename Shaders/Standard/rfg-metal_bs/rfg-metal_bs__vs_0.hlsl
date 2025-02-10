cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
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
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _55 = r0;
    _55.w = asfloat(1065353216u);
    r0 = _55;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _65 = r1;
    _65.w = asfloat(1065353216u);
    r1 = _65;
    float4 _83 = r0;
    _83.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _83;
    float4 _101 = r0;
    _101.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _101;
    float4 _119 = r0;
    _119.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _119;
    float4 _134 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _148 = o0;
    _148.x = mad(_134.w, r0.w, mad(_134.z, r0.z, mad(_134.y, r0.y, _134.x * r0.x)));
    o0 = _148;
    float4 _160 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _174 = o0;
    _174.y = mad(_160.w, r0.w, mad(_160.z, r0.z, mad(_160.y, r0.y, _160.x * r0.x)));
    o0 = _174;
    float4 _186 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _200 = o0;
    _200.z = mad(_186.w, r0.w, mad(_186.z, r0.z, mad(_186.y, r0.y, _186.x * r0.x)));
    o0 = _200;
    float4 _212 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _226 = o0;
    _226.w = mad(_212.w, r0.w, mad(_212.z, r0.z, mad(_212.y, r0.y, _212.x * r0.x)));
    o0 = _226;
    float2 _232 = float2(asint(shader_in[1].xy));
    r1 = float4(_232.x, _232.y, r1.z, r1.w);
    float2 _243 = r1.xy * float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(_243.x, _243.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _264 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_264.x, _264.y, _264.z, r1.w);
    float4 _282 = r2;
    _282.x = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _282;
    float4 _298 = r2;
    _298.y = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _298;
    float4 _314 = r2;
    _314.z = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _314;
    float4 _329 = r0;
    _329.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _329;
    float4 _334 = r0;
    _334.w = rsqrt(r0.w);
    r0 = _334;
    float3 _340 = r0.www * r2.xyz;
    r1 = float4(_340.x, _340.y, _340.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _367 = r3;
    _367.x = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _367;
    float4 _383 = r3;
    _383.y = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _383;
    float4 _399 = r3;
    _399.z = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _399;
    float4 _414 = r0;
    _414.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _414;
    float4 _419 = r0;
    _419.w = rsqrt(r0.w);
    r0 = _419;
    float3 _425 = r0.www * r3.xyz;
    r2 = float4(_425.x, _425.y, _425.z, r2.w);
    float3 _432 = r1.zxy * r2.yzx;
    r3 = float4(_432.x, _432.y, _432.z, r3.w);
    float3 _443 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_443.x, _443.y, _443.z, r3.w);
    float3 _450 = r2.www * r3.xyz;
    r3 = float4(_450.x, _450.y, _450.z, r3.w);
    float3 _460 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _472 = o2;
    _472.y = mad(_460.z, r3.xyz.z, mad(_460.y, r3.xyz.y, _460.x * r3.xyz.x));
    o2 = _472;
    float3 _481 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _493 = o2;
    _493.z = mad(_481.z, r1.xyz.z, mad(_481.y, r1.xyz.y, _481.x * r1.xyz.x));
    o2 = _493;
    float3 _502 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _514 = o2;
    _514.x = mad(_502.z, r2.xyz.z, mad(_502.y, r2.xyz.y, _502.x * r2.xyz.x));
    o2 = _514;
    float3 _528 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_528.x, _528.y, _528.z, r4.w);
    float3 _543 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_543.x, _543.y, _543.z, r0.w);
    float4 _559 = r0;
    _559.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _559;
    float4 _564 = r0;
    _564.w = rsqrt(r0.w);
    r0 = _564;
    float3 _570 = r0.www * r4.xyz;
    r4 = float4(_570.x, _570.y, _570.z, r4.w);
    float3 _586 = o3;
    _586.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _586;
    float4 _590 = o4;
    _590.x = r2.y;
    o4 = _590;
    float3 _605 = o3;
    _605.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _605;
    float4 _609 = o4;
    _609.z = r1.y;
    o4 = _609;
    float3 _624 = o3;
    _624.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _624;
    float4 _628 = o4;
    _628.y = r3.y;
    o4 = _628;
    float4 _637 = r0;
    _637.w = r0.y * cb0_m[13].x;
    r0 = _637;
    float4 _644 = r1;
    _644.x = r0.w * asfloat(3216550459u);
    r1 = _644;
    float4 _649 = r1;
    _649.x = exp2(r1.x);
    r1 = _649;
    float4 _656 = r1;
    _656.x = (-r1.x) + asfloat(1065353216u);
    r1 = _656;
    float4 _663 = r0;
    _663.w = r1.x / r0.w;
    r0 = _663;
    float4 _675 = r1;
    _675.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _675;
    float4 _690 = r0;
    _690.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _690;
    float4 _695 = r0;
    _695.x = sqrt(r0.x);
    r0 = _695;
    float4 _703 = r0;
    _703.x = r0.x * cb0_m[13].y;
    r0 = _703;
    float4 _713 = r0;
    _713.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _713;
    float4 _725 = r0;
    _725.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _725;
    float4 _731 = r0;
    _731.x = exp2(-r0.x);
    r0 = _731;
    float4 _737 = r0;
    _737.x = min(r0.x, asfloat(1065353216u));
    r0 = _737;
    float4 _744 = o4;
    _744.w = (-r0.x) + asfloat(1065353216u);
    o4 = _744;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _752 = asfloat(v1);
    shader_in[1] = float4(_752.x, _752.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
