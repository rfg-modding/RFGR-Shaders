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
    float4 cb2_m[8] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
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
    float4 _56 = r0;
    _56.w = asfloat(1065353216u);
    r0 = _56;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _66 = r1;
    _66.w = asfloat(1065353216u);
    r1 = _66;
    float4 _81 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _95 = r0;
    _95.x = mad(_81.w, r1.w, mad(_81.z, r1.z, mad(_81.y, r1.y, _81.x * r1.x)));
    r0 = _95;
    float4 _107 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _121 = r0;
    _121.y = mad(_107.w, r1.w, mad(_107.z, r1.z, mad(_107.y, r1.y, _107.x * r1.x)));
    r0 = _121;
    float4 _133 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _147 = r0;
    _147.z = mad(_133.w, r1.w, mad(_133.z, r1.z, mad(_133.y, r1.y, _133.x * r1.x)));
    r0 = _147;
    float4 _158 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _172 = o0;
    _172.x = mad(_158.w, r0.w, mad(_158.z, r0.z, mad(_158.y, r0.y, _158.x * r0.x)));
    o0 = _172;
    float4 _183 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _197 = o0;
    _197.y = mad(_183.w, r0.w, mad(_183.z, r0.z, mad(_183.y, r0.y, _183.x * r0.x)));
    o0 = _197;
    float4 _208 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _222 = o0;
    _222.z = mad(_208.w, r0.w, mad(_208.z, r0.z, mad(_208.y, r0.y, _208.x * r0.x)));
    o0 = _222;
    float4 _234 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _248 = o0;
    _248.w = mad(_234.w, r0.w, mad(_234.z, r0.z, mad(_234.y, r0.y, _234.x * r0.x)));
    o0 = _248;
    float3 _261 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_261.x, _261.y, _261.z, r1.w);
    float3 _271 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _284 = r2;
    _284.x = mad(_271.z, r1.xyz.z, mad(_271.y, r1.xyz.y, _271.x * r1.xyz.x));
    r2 = _284;
    float3 _293 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _305 = r2;
    _305.y = mad(_293.z, r1.xyz.z, mad(_293.y, r1.xyz.y, _293.x * r1.xyz.x));
    r2 = _305;
    float3 _314 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _326 = r2;
    _326.z = mad(_314.z, r1.xyz.z, mad(_314.y, r1.xyz.y, _314.x * r1.xyz.x));
    r2 = _326;
    float4 _341 = r0;
    _341.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _341;
    float4 _346 = r0;
    _346.w = rsqrt(r0.w);
    r0 = _346;
    float3 _352 = r0.www * r2.xyz;
    r1 = float4(_352.x, _352.y, _352.z, r1.w);
    r2 = (shader_in[4] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _372 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _385 = r3;
    _385.x = mad(_372.z, r2.xyz.z, mad(_372.y, r2.xyz.y, _372.x * r2.xyz.x));
    r3 = _385;
    float3 _394 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _406 = r3;
    _406.y = mad(_394.z, r2.xyz.z, mad(_394.y, r2.xyz.y, _394.x * r2.xyz.x));
    r3 = _406;
    float3 _415 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _427 = r3;
    _427.z = mad(_415.z, r2.xyz.z, mad(_415.y, r2.xyz.y, _415.x * r2.xyz.x));
    r3 = _427;
    float4 _442 = r0;
    _442.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _442;
    float4 _447 = r0;
    _447.w = rsqrt(r0.w);
    r0 = _447;
    float3 _453 = r0.www * r3.xyz;
    r2 = float4(_453.x, _453.y, _453.z, r2.w);
    float3 _460 = r1.zxy * r2.yzx;
    r3 = float4(_460.x, _460.y, _460.z, r3.w);
    float3 _471 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_471.x, _471.y, _471.z, r3.w);
    float3 _478 = r2.www * r3.xyz;
    r3 = float4(_478.x, _478.y, _478.z, r3.w);
    float3 _488 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _500 = o1;
    _500.y = mad(_488.z, r3.xyz.z, mad(_488.y, r3.xyz.y, _488.x * r3.xyz.x));
    o1 = _500;
    float3 _509 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _521 = o1;
    _521.z = mad(_509.z, r1.xyz.z, mad(_509.y, r1.xyz.y, _509.x * r1.xyz.x));
    o1 = _521;
    float3 _530 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _542 = o1;
    _542.x = mad(_530.z, r2.xyz.z, mad(_530.y, r2.xyz.y, _530.x * r2.xyz.x));
    o1 = _542;
    float3 _556 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_556.x, _556.y, _556.z, r4.w);
    float3 _571 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_571.x, _571.y, _571.z, r0.w);
    float4 _587 = r0;
    _587.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _587;
    float4 _592 = r0;
    _592.w = rsqrt(r0.w);
    r0 = _592;
    float3 _598 = r0.www * r4.xyz;
    r4 = float4(_598.x, _598.y, _598.z, r4.w);
    float3 _614 = o2;
    _614.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _614;
    float4 _618 = o3;
    _618.x = r2.y;
    o3 = _618;
    float3 _633 = o2;
    _633.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _633;
    float4 _637 = o3;
    _637.z = r1.y;
    o3 = _637;
    float3 _652 = o2;
    _652.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _652;
    float4 _656 = o3;
    _656.y = r3.y;
    o3 = _656;
    float4 _665 = r0;
    _665.w = r0.y * cb0_m[13].x;
    r0 = _665;
    float4 _672 = r1;
    _672.x = r0.w * asfloat(3216550459u);
    r1 = _672;
    float4 _677 = r1;
    _677.x = exp2(r1.x);
    r1 = _677;
    float4 _684 = r1;
    _684.x = (-r1.x) + asfloat(1065353216u);
    r1 = _684;
    float4 _691 = r0;
    _691.w = r1.x / r0.w;
    r0 = _691;
    float4 _703 = r1;
    _703.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _703;
    float4 _718 = r0;
    _718.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _718;
    float4 _723 = r0;
    _723.x = sqrt(r0.x);
    r0 = _723;
    float4 _731 = r0;
    _731.x = r0.x * cb0_m[13].y;
    r0 = _731;
    float4 _741 = r0;
    _741.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _741;
    float4 _753 = r0;
    _753.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _753;
    float4 _759 = r0;
    _759.x = exp2(-r0.x);
    r0 = _759;
    float4 _765 = r0;
    _765.x = min(r0.x, asfloat(1065353216u));
    r0 = _765;
    float4 _772 = o3;
    _772.w = (-r0.x) + asfloat(1065353216u);
    o3 = _772;
    float2 _779 = float2(asint(shader_in[1].xy));
    r0 = float4(_779.x, _779.y, r0.z, r0.w);
    float2 _791 = r0.xy * float2(cb2_m[7].x, cb2_m[7].y);
    r0 = float4(_791.x, _791.y, r0.z, r0.w);
    float2 _800 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_800.x, _800.y, o4.z, o4.w);
    float2 _807 = float2(asint(shader_in[2].xy));
    r0 = float4(_807.x, _807.y, r0.z, r0.w);
    float2 _813 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _813.x, _813.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _822 = asfloat(v1);
    shader_in[1] = float4(_822.x, _822.y, shader_in[1].z, shader_in[1].w);
    float2 _827 = asfloat(v2);
    shader_in[2] = float4(_827.x, _827.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
