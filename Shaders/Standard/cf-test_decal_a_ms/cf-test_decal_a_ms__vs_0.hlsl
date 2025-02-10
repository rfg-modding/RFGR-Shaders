cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static float3 v2;
static float3 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _62 = r0;
    _62.x = shader_in[3].x * asfloat(1082130432u);
    r0 = _62;
    float3 _75 = (r0.xxx * shader_in[2].xyz) + shader_in[0].xyz;
    r0 = float4(_75.x, _75.y, _75.z, r0.w);
    float4 _80 = r0;
    _80.w = asfloat(1065353216u);
    r0 = _80;
    float4 _95 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _110 = r1;
    _110.x = mad(_95.w, r0.w, mad(_95.z, r0.z, mad(_95.y, r0.y, _95.x * r0.x)));
    r1 = _110;
    float4 _122 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _136 = r1;
    _136.y = mad(_122.w, r0.w, mad(_122.z, r0.z, mad(_122.y, r0.y, _122.x * r0.x)));
    r1 = _136;
    float4 _147 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _161 = r1;
    _161.z = mad(_147.w, r0.w, mad(_147.z, r0.z, mad(_147.y, r0.y, _147.x * r0.x)));
    r1 = _161;
    float4 _164 = r1;
    _164.w = asfloat(1065353216u);
    r1 = _164;
    float4 _175 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _189 = o0;
    _189.x = mad(_175.w, r1.w, mad(_175.z, r1.z, mad(_175.y, r1.y, _175.x * r1.x)));
    o0 = _189;
    float4 _200 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _214 = o0;
    _214.y = mad(_200.w, r1.w, mad(_200.z, r1.z, mad(_200.y, r1.y, _200.x * r1.x)));
    o0 = _214;
    float4 _225 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _239 = o0;
    _239.z = mad(_225.w, r1.w, mad(_225.z, r1.z, mad(_225.y, r1.y, _225.x * r1.x)));
    o0 = _239;
    float4 _250 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _264 = o0;
    _264.w = mad(_250.w, r1.w, mad(_250.z, r1.z, mad(_250.y, r1.y, _250.x * r1.x)));
    o0 = _264;
    float3 _278 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_278.x, _278.y, _278.z, r0.w);
    float4 _283 = r0;
    _283.w = asfloat(3212836864u);
    r0 = _283;
    float3 _297 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_297.x, _297.y, _297.z, r1.w);
    float3 _309 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _319 = r1;
    _319.w = mad(r1.xyz.z, _309.z, mad(r1.xyz.y, _309.y, r1.xyz.x * _309.x));
    r1 = _319;
    float4 _328 = r1;
    _328.w = r1.w * cb5_m[5].y;
    r1 = _328;
    float4 _336 = r2;
    _336.y = r0.w * r1.w;
    r2 = _336;
    float3 _347 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _358 = r3;
    _358.x = mad(r1.xyz.z, _347.z, mad(r1.xyz.y, _347.y, r1.xyz.x * _347.x));
    r3 = _358;
    float3 _369 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _379 = r3;
    _379.z = mad(r1.xyz.z, _369.z, mad(r1.xyz.y, _369.y, r1.xyz.x * _369.x));
    r3 = _379;
    float2 _389 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_389.x, r2.y, _389.y, r2.w);
    o1 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _401 = o3;
    _401.w = r2.z;
    o3 = _401;
    float3 _413 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_413.x, _413.y, _413.z, r1.w);
    float3 _427 = r1.yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r2 = float4(_427.x, _427.y, _427.z, r2.w);
    float3 _445 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r1.zxy) + (-r2.xyz);
    r2 = float4(_445.x, _445.y, _445.z, r2.w);
    float4 _461 = r0;
    _461.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _461;
    float4 _466 = r0;
    _466.w = rsqrt(r0.w);
    r0 = _466;
    float3 _472 = r0.www * r2.xyz;
    r2 = float4(_472.x, _472.y, _472.z, r2.w);
    float3 _479 = r1.zxy * r2.yzx;
    r3 = float4(_479.x, _479.y, _479.z, r3.w);
    float3 _490 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_490.x, _490.y, _490.z, r3.w);
    float3 _500 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _512 = o3;
    _512.y = mad(_500.z, r2.xyz.z, mad(_500.y, r2.xyz.y, _500.x * r2.xyz.x));
    o3 = _512;
    float4 _527 = r0;
    _527.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _527;
    float4 _532 = r0;
    _532.w = rsqrt(r0.w);
    r0 = _532;
    float3 _538 = r0.www * r3.xyz;
    r2 = float4(_538.x, _538.y, _538.z, r2.w);
    float3 _548 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _560 = r3;
    _560.x = mad(_548.z, r2.xyz.z, mad(_548.y, r2.xyz.y, _548.x * r2.xyz.x));
    r3 = _560;
    float3 _569 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _581 = r3;
    _581.y = mad(_569.z, r2.xyz.z, mad(_569.y, r2.xyz.y, _569.x * r2.xyz.x));
    r3 = _581;
    float3 _590 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _602 = r3;
    _602.z = mad(_590.z, r2.xyz.z, mad(_590.y, r2.xyz.y, _590.x * r2.xyz.x));
    r3 = _602;
    float3 _611 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _623 = o3;
    _623.x = mad(_611.z, r2.xyz.z, mad(_611.y, r2.xyz.y, _611.x * r2.xyz.x));
    o3 = _623;
    float4 _638 = r0;
    _638.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _638;
    float4 _643 = r0;
    _643.w = rsqrt(r0.w);
    r0 = _643;
    float3 _649 = r0.www * r3.xyz;
    r2 = float4(_649.x, _649.y, _649.z, r2.w);
    float3 _659 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_659.x, _659.y, _659.z, r3.w);
    float3 _670 = (shader_in[3].xxx * r3.xyz) + r1.xyz;
    r3 = float4(_670.x, _670.y, _670.z, r3.w);
    float3 _680 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _692 = o3;
    _692.z = mad(_680.z, r1.xyz.z, mad(_680.y, r1.xyz.y, _680.x * r1.xyz.x));
    o3 = _692;
    float3 _701 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _713 = r1;
    _713.x = mad(_701.z, r3.xyz.z, mad(_701.y, r3.xyz.y, _701.x * r3.xyz.x));
    r1 = _713;
    float3 _722 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _734 = r1;
    _734.y = mad(_722.z, r3.xyz.z, mad(_722.y, r3.xyz.y, _722.x * r3.xyz.x));
    r1 = _734;
    float3 _743 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _755 = r1;
    _755.z = mad(_743.z, r3.xyz.z, mad(_743.y, r3.xyz.y, _743.x * r3.xyz.x));
    r1 = _755;
    float4 _770 = r0;
    _770.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _770;
    float4 _775 = r0;
    _775.w = rsqrt(r0.w);
    r0 = _775;
    float3 _781 = r0.www * r1.xyz;
    r1 = float4(_781.x, _781.y, _781.z, r1.w);
    float3 _788 = r2.yzx * r1.zxy;
    r3 = float4(_788.x, _788.y, _788.z, r3.w);
    float3 _799 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_799.x, _799.y, _799.z, r3.w);
    float3 _809 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _812 = -r3.xyz;
    float3 _822 = o2;
    _822.y = mad(_809.z, _812.z, mad(_809.y, _812.y, _809.x * _812.x));
    o2 = _822;
    float4 _827 = o6;
    _827.y = -r3.y;
    o6 = _827;
    float3 _836 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _848 = o2;
    _848.x = mad(_836.z, r2.xyz.z, mad(_836.y, r2.xyz.y, _836.x * r2.xyz.x));
    o2 = _848;
    float4 _852 = o6;
    _852.x = r2.y;
    o6 = _852;
    float3 _861 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _873 = o2;
    _873.z = mad(_861.z, r1.xyz.z, mad(_861.y, r1.xyz.y, _861.x * r1.xyz.x));
    o2 = _873;
    float4 _877 = o6;
    _877.z = r1.y;
    o6 = _877;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _907 = r0;
    _907.w = r0.y * cb0_m[13].x;
    r0 = _907;
    float4 _914 = r1;
    _914.x = r0.w * asfloat(3216550459u);
    r1 = _914;
    float4 _919 = r1;
    _919.x = exp2(r1.x);
    r1 = _919;
    float4 _926 = r1;
    _926.x = (-r1.x) + asfloat(1065353216u);
    r1 = _926;
    float4 _933 = r0;
    _933.w = r1.x / r0.w;
    r0 = _933;
    float4 _945 = r1;
    _945.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _945;
    float4 _960 = r0;
    _960.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _960;
    float4 _965 = r0;
    _965.x = sqrt(r0.x);
    r0 = _965;
    float4 _973 = r0;
    _973.x = r0.x * cb0_m[13].y;
    r0 = _973;
    float4 _983 = r0;
    _983.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _983;
    float4 _995 = r0;
    _995.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _995;
    float4 _1001 = r0;
    _1001.x = exp2(-r0.x);
    r0 = _1001;
    float4 _1007 = r0;
    _1007.x = min(r0.x, asfloat(1065353216u));
    r0 = _1007;
    float4 _1014 = o6;
    _1014.w = (-r0.x) + asfloat(1065353216u);
    o6 = _1014;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
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
