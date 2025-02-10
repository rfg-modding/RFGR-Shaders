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
    float4 cb2_m[6] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
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
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _57 = r0;
    _57.w = asfloat(1065353216u);
    r0 = _57;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _67 = r1;
    _67.w = asfloat(1065353216u);
    r1 = _67;
    float4 _85 = r0;
    _85.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _85;
    float4 _103 = r0;
    _103.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _103;
    float4 _121 = r0;
    _121.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _121;
    float4 _137 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _151 = o0;
    _151.x = mad(_137.w, r0.w, mad(_137.z, r0.z, mad(_137.y, r0.y, _137.x * r0.x)));
    o0 = _151;
    float4 _163 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _177 = o0;
    _177.y = mad(_163.w, r0.w, mad(_163.z, r0.z, mad(_163.y, r0.y, _163.x * r0.x)));
    o0 = _177;
    float4 _189 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _203 = o0;
    _203.z = mad(_189.w, r0.w, mad(_189.z, r0.z, mad(_189.y, r0.y, _189.x * r0.x)));
    o0 = _203;
    float4 _215 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _229 = o0;
    _229.w = mad(_215.w, r0.w, mad(_215.z, r0.z, mad(_215.y, r0.y, _215.x * r0.x)));
    o0 = _229;
    float2 _235 = float2(asint(shader_in[2].xy));
    r1 = float4(_235.x, _235.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _256 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_256.x, _256.y, _256.z, r1.w);
    float4 _274 = r2;
    _274.x = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _274;
    float4 _290 = r2;
    _290.y = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _290;
    float4 _306 = r2;
    _306.z = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _306;
    float4 _321 = r0;
    _321.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _321;
    float4 _326 = r0;
    _326.w = rsqrt(r0.w);
    r0 = _326;
    float3 _332 = r0.www * r2.xyz;
    r1 = float4(_332.x, _332.y, _332.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _360 = r3;
    _360.x = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _360;
    float4 _376 = r3;
    _376.y = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _376;
    float4 _392 = r3;
    _392.z = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _392;
    float4 _407 = r0;
    _407.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _407;
    float4 _412 = r0;
    _412.w = rsqrt(r0.w);
    r0 = _412;
    float3 _418 = r0.www * r3.xyz;
    r2 = float4(_418.x, _418.y, _418.z, r2.w);
    float3 _425 = r1.zxy * r2.yzx;
    r3 = float4(_425.x, _425.y, _425.z, r3.w);
    float3 _436 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_436.x, _436.y, _436.z, r3.w);
    float3 _443 = r2.www * r3.xyz;
    r3 = float4(_443.x, _443.y, _443.z, r3.w);
    float3 _453 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _465 = o2;
    _465.y = mad(_453.z, r3.xyz.z, mad(_453.y, r3.xyz.y, _453.x * r3.xyz.x));
    o2 = _465;
    float3 _474 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _486 = o2;
    _486.z = mad(_474.z, r1.xyz.z, mad(_474.y, r1.xyz.y, _474.x * r1.xyz.x));
    o2 = _486;
    float3 _495 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _507 = o2;
    _507.x = mad(_495.z, r2.xyz.z, mad(_495.y, r2.xyz.y, _495.x * r2.xyz.x));
    o2 = _507;
    float3 _521 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_521.x, _521.y, _521.z, r4.w);
    float3 _536 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_536.x, _536.y, _536.z, r0.w);
    float4 _552 = r0;
    _552.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _552;
    float4 _557 = r0;
    _557.w = rsqrt(r0.w);
    r0 = _557;
    float3 _563 = r0.www * r4.xyz;
    r4 = float4(_563.x, _563.y, _563.z, r4.w);
    float3 _579 = o3;
    _579.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o3 = _579;
    float4 _583 = o4;
    _583.x = r2.y;
    o4 = _583;
    float3 _598 = o3;
    _598.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o3 = _598;
    float4 _602 = o4;
    _602.z = r1.y;
    o4 = _602;
    float3 _617 = o3;
    _617.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o3 = _617;
    float4 _621 = o4;
    _621.y = r3.y;
    o4 = _621;
    float4 _630 = r0;
    _630.w = r0.y * cb0_m[13].x;
    r0 = _630;
    float4 _637 = r1;
    _637.x = r0.w * asfloat(3216550459u);
    r1 = _637;
    float4 _642 = r1;
    _642.x = exp2(r1.x);
    r1 = _642;
    float4 _649 = r1;
    _649.x = (-r1.x) + asfloat(1065353216u);
    r1 = _649;
    float4 _656 = r0;
    _656.w = r1.x / r0.w;
    r0 = _656;
    float4 _668 = r1;
    _668.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _668;
    float4 _683 = r0;
    _683.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _683;
    float4 _688 = r0;
    _688.x = sqrt(r0.x);
    r0 = _688;
    float4 _696 = r0;
    _696.x = r0.x * cb0_m[13].y;
    r0 = _696;
    float4 _706 = r0;
    _706.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _706;
    float4 _718 = r0;
    _718.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _718;
    float4 _724 = r0;
    _724.x = exp2(-r0.x);
    r0 = _724;
    float4 _730 = r0;
    _730.x = min(r0.x, asfloat(1065353216u));
    r0 = _730;
    float4 _737 = o4;
    _737.w = (-r0.x) + asfloat(1065353216u);
    o4 = _737;
    float2 _743 = float2(asint(shader_in[1].xy));
    r0 = float4(_743.x, _743.y, r0.z, r0.w);
    float2 _754 = r0.xy * float2(cb2_m[5].x, cb2_m[5].y);
    r0 = float4(_754.x, _754.y, r0.z, r0.w);
    float2 _760 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(_760.x, _760.y, r0.z, r0.w);
    float2 _771 = r0.xy * float2(cb2_m[4].x, cb2_m[4].y);
    o5 = float4(o5.x, o5.y, _771.x, _771.y);
    o5 = float4(r0.xy.x, r0.xy.y, o5.z, o5.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _784 = asfloat(v1);
    shader_in[1] = float4(_784.x, _784.y, shader_in[1].z, shader_in[1].w);
    float2 _789 = asfloat(v2);
    shader_in[2] = float4(_789.x, _789.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
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
