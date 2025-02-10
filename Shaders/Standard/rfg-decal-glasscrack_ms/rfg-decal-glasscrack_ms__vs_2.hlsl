cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
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
static float3 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _59 = r0;
    _59.x = shader_in[3].x * asfloat(1082130432u);
    r0 = _59;
    float3 _72 = (r0.xxx * shader_in[2].xyz) + shader_in[0].xyz;
    r0 = float4(_72.x, _72.y, _72.z, r0.w);
    float4 _77 = r0;
    _77.w = asfloat(1065353216u);
    r0 = _77;
    float4 _92 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _107 = r1;
    _107.x = mad(_92.w, r0.w, mad(_92.z, r0.z, mad(_92.y, r0.y, _92.x * r0.x)));
    r1 = _107;
    float4 _119 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _133 = r1;
    _133.y = mad(_119.w, r0.w, mad(_119.z, r0.z, mad(_119.y, r0.y, _119.x * r0.x)));
    r1 = _133;
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
    float3 _275 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r0 = float4(_275.x, _275.y, _275.z, r0.w);
    float3 _294 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r0.xyz);
    r0 = float4(_294.x, _294.y, _294.z, r0.w);
    float4 _310 = r0;
    _310.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _310;
    float4 _315 = r0;
    _315.w = rsqrt(r0.w);
    r0 = _315;
    float3 _321 = r0.www * r0.xyz;
    r0 = float4(_321.x, _321.y, _321.z, r0.w);
    float3 _329 = r0.yzx * shader_in[1].zxy;
    r1 = float4(_329.x, _329.y, _329.z, r1.w);
    float3 _341 = (shader_in[1].yzx * r0.zxy) + (-r1.xyz);
    r1 = float4(_341.x, _341.y, _341.z, r1.w);
    float3 _351 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _363 = o2;
    _363.y = mad(_351.z, r0.xyz.z, mad(_351.y, r0.xyz.y, _351.x * r0.xyz.x));
    o2 = _363;
    float4 _378 = r0;
    _378.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _378;
    float4 _383 = r0;
    _383.x = rsqrt(r0.x);
    r0 = _383;
    float3 _389 = r0.xxx * r1.xyz;
    r0 = float4(_389.x, _389.y, _389.z, r0.w);
    float3 _399 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _411 = r1;
    _411.x = mad(_399.z, r0.xyz.z, mad(_399.y, r0.xyz.y, _399.x * r0.xyz.x));
    r1 = _411;
    float3 _420 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _432 = r1;
    _432.y = mad(_420.z, r0.xyz.z, mad(_420.y, r0.xyz.y, _420.x * r0.xyz.x));
    r1 = _432;
    float3 _441 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _453 = r1;
    _453.z = mad(_441.z, r0.xyz.z, mad(_441.y, r0.xyz.y, _441.x * r0.xyz.x));
    r1 = _453;
    float3 _462 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _474 = o2;
    _474.x = mad(_462.z, r0.xyz.z, mad(_462.y, r0.xyz.y, _462.x * r0.xyz.x));
    o2 = _474;
    float4 _489 = r0;
    _489.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _489;
    float4 _494 = r0;
    _494.x = rsqrt(r0.x);
    r0 = _494;
    float3 _500 = r0.xxx * r1.xyz;
    r0 = float4(_500.x, _500.y, _500.z, r0.w);
    float3 _514 = (shader_in[3].xxx * shader_in[4].xyz) + shader_in[1].xyz;
    r1 = float4(_514.x, _514.y, _514.z, r1.w);
    float3 _524 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _537 = r2;
    _537.x = mad(_524.z, r1.xyz.z, mad(_524.y, r1.xyz.y, _524.x * r1.xyz.x));
    r2 = _537;
    float3 _546 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _558 = r2;
    _558.y = mad(_546.z, r1.xyz.z, mad(_546.y, r1.xyz.y, _546.x * r1.xyz.x));
    r2 = _558;
    float3 _567 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _579 = r2;
    _579.z = mad(_567.z, r1.xyz.z, mad(_567.y, r1.xyz.y, _567.x * r1.xyz.x));
    r2 = _579;
    float4 _594 = r0;
    _594.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _594;
    float4 _599 = r0;
    _599.w = rsqrt(r0.w);
    r0 = _599;
    float3 _605 = r0.www * r2.xyz;
    r1 = float4(_605.x, _605.y, _605.z, r1.w);
    float3 _612 = r0.yzx * r1.zxy;
    r2 = float4(_612.x, _612.y, _612.z, r2.w);
    float3 _623 = (r1.yzx * r0.zxy) + (-r2.xyz);
    r2 = float4(_623.x, _623.y, _623.z, r2.w);
    float3 _633 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _645 = o1;
    _645.x = mad(_633.z, r0.xyz.z, mad(_633.y, r0.xyz.y, _633.x * r0.xyz.x));
    o1 = _645;
    float3 _654 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _666 = o1;
    _666.z = mad(_654.z, r1.xyz.z, mad(_654.y, r1.xyz.y, _654.x * r1.xyz.x));
    o1 = _666;
    float3 _675 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _678 = -r2.xyz;
    float3 _688 = o1;
    _688.y = mad(_675.z, _678.z, mad(_675.y, _678.y, _675.x * _678.x));
    o1 = _688;
    float3 _697 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _710 = o2;
    _710.z = mad(_697.z, shader_in[1].xyz.z, mad(_697.y, shader_in[1].xyz.y, _697.x * shader_in[1].xyz.x));
    o2 = _710;
    float3 _724 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_724.x, _724.y, _724.z, r0.w);
    float3 _736 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _746 = r1;
    _746.x = mad(r0.xyz.z, _736.z, mad(r0.xyz.y, _736.y, r0.xyz.x * _736.x));
    r1 = _746;
    float3 _757 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _767 = r1;
    _767.z = mad(r0.xyz.z, _757.z, mad(r0.xyz.y, _757.y, r0.xyz.x * _757.x));
    r1 = _767;
    float3 _778 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _788 = r0;
    _788.x = mad(r0.xyz.z, _778.z, mad(r0.xyz.y, _778.y, r0.xyz.x * _778.x));
    r0 = _788;
    float4 _797 = r0;
    _797.x = r0.x * cb5_m[5].y;
    r0 = _797;
    float2 _808 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_808.x, r1.y, _808.y, r1.w);
    float4 _813 = o2;
    _813.w = r1.z;
    o2 = _813;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _838 = r0;
    _838.y = asfloat(3212836864u);
    r0 = _838;
    float4 _845 = r1;
    _845.y = r0.x * r0.y;
    r1 = _845;
    float2 _853 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o5 = float4(_853.x, _853.y, o5.z, o5.w);
    float2 _859 = cb5_m[5].w.xx;
    o5 = float4(o5.x, o5.y, _859.x, _859.y);
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
