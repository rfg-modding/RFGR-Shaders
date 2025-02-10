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
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
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
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _58 = r0;
    _58.w = asfloat(1065353216u);
    r0 = _58;
    float4 _73 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _88 = r1;
    _88.x = mad(_73.w, r0.w, mad(_73.z, r0.z, mad(_73.y, r0.y, _73.x * r0.x)));
    r1 = _88;
    float4 _100 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _114 = r1;
    _114.y = mad(_100.w, r0.w, mad(_100.z, r0.z, mad(_100.y, r0.y, _100.x * r0.x)));
    r1 = _114;
    float4 _126 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _140 = r1;
    _140.z = mad(_126.w, r0.w, mad(_126.z, r0.z, mad(_126.y, r0.y, _126.x * r0.x)));
    r1 = _140;
    float4 _143 = r1;
    _143.w = asfloat(1065353216u);
    r1 = _143;
    float4 _154 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _168 = o0;
    _168.x = mad(_154.w, r1.w, mad(_154.z, r1.z, mad(_154.y, r1.y, _154.x * r1.x)));
    o0 = _168;
    float4 _179 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _193 = o0;
    _193.y = mad(_179.w, r1.w, mad(_179.z, r1.z, mad(_179.y, r1.y, _179.x * r1.x)));
    o0 = _193;
    float4 _204 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _218 = o0;
    _218.z = mad(_204.w, r1.w, mad(_204.z, r1.z, mad(_204.y, r1.y, _204.x * r1.x)));
    o0 = _218;
    float4 _230 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _244 = o0;
    _244.w = mad(_230.w, r1.w, mad(_230.z, r1.z, mad(_230.y, r1.y, _230.x * r1.x)));
    o0 = _244;
    float3 _258 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r0 = float4(_258.x, _258.y, _258.z, r0.w);
    float3 _277 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r0.xyz);
    r0 = float4(_277.x, _277.y, _277.z, r0.w);
    float4 _293 = r0;
    _293.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _293;
    float4 _298 = r0;
    _298.w = rsqrt(r0.w);
    r0 = _298;
    float3 _304 = r0.www * r0.xyz;
    r0 = float4(_304.x, _304.y, _304.z, r0.w);
    float3 _312 = r0.yzx * shader_in[1].zxy;
    r1 = float4(_312.x, _312.y, _312.z, r1.w);
    float3 _324 = (shader_in[1].yzx * r0.zxy) + (-r1.xyz);
    r1 = float4(_324.x, _324.y, _324.z, r1.w);
    float3 _334 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _346 = o1;
    _346.y = mad(_334.z, r0.xyz.z, mad(_334.y, r0.xyz.y, _334.x * r0.xyz.x));
    o1 = _346;
    float4 _361 = r0;
    _361.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _361;
    float4 _366 = r0;
    _366.x = rsqrt(r0.x);
    r0 = _366;
    float3 _372 = r0.xxx * r1.xyz;
    r0 = float4(_372.x, _372.y, _372.z, r0.w);
    float3 _382 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _394 = o1;
    _394.x = mad(_382.z, r0.xyz.z, mad(_382.y, r0.xyz.y, _382.x * r0.xyz.x));
    o1 = _394;
    float3 _403 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _416 = o1;
    _416.z = mad(_403.z, shader_in[1].xyz.z, mad(_403.y, shader_in[1].xyz.y, _403.x * shader_in[1].xyz.x));
    o1 = _416;
    float3 _430 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_430.x, _430.y, _430.z, r1.w);
    float3 _442 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _453 = r2;
    _453.x = mad(r1.xyz.z, _442.z, mad(r1.xyz.y, _442.y, r1.xyz.x * _442.x));
    r2 = _453;
    float3 _464 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _474 = r2;
    _474.z = mad(r1.xyz.z, _464.z, mad(r1.xyz.y, _464.y, r1.xyz.x * _464.x));
    r2 = _474;
    float3 _485 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _495 = r0;
    _495.w = mad(r1.xyz.z, _485.z, mad(r1.xyz.y, _485.y, r1.xyz.x * _485.x));
    r0 = _495;
    float4 _504 = r0;
    _504.w = r0.w * cb5_m[5].y;
    r0 = _504;
    float2 _515 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_515.x, r1.y, _515.y, r1.w);
    float4 _520 = o1;
    _520.w = r1.z;
    o1 = _520;
    o2 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o3 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float3 _551 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _563 = r2;
    _563.x = mad(_551.z, r0.xyz.z, mad(_551.y, r0.xyz.y, _551.x * r0.xyz.x));
    r2 = _563;
    float3 _572 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _584 = r2;
    _584.y = mad(_572.z, r0.xyz.z, mad(_572.y, r0.xyz.y, _572.x * r0.xyz.x));
    r2 = _584;
    float3 _593 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _605 = r2;
    _605.z = mad(_593.z, r0.xyz.z, mad(_593.y, r0.xyz.y, _593.x * r0.xyz.x));
    r2 = _605;
    float4 _620 = r0;
    _620.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _620;
    float4 _625 = r0;
    _625.x = rsqrt(r0.x);
    r0 = _625;
    float3 _631 = r0.xxx * r2.xyz;
    r0 = float4(_631.x, _631.y, _631.z, r0.w);
    float3 _641 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _653 = o4;
    _653.x = mad(_641.z, r0.xyz.z, mad(_641.y, r0.xyz.y, _641.x * r0.xyz.x));
    o4 = _653;
    float3 _662 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _675 = r2;
    _675.x = mad(_662.z, shader_in[1].xyz.z, mad(_662.y, shader_in[1].xyz.y, _662.x * shader_in[1].xyz.x));
    r2 = _675;
    float3 _684 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _697 = r2;
    _697.y = mad(_684.z, shader_in[1].xyz.z, mad(_684.y, shader_in[1].xyz.y, _684.x * shader_in[1].xyz.x));
    r2 = _697;
    float3 _706 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _719 = r2;
    _719.z = mad(_706.z, shader_in[1].xyz.z, mad(_706.y, shader_in[1].xyz.y, _706.x * shader_in[1].xyz.x));
    r2 = _719;
    float4 _734 = r1;
    _734.z = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _734;
    float4 _739 = r1;
    _739.z = rsqrt(r1.z);
    r1 = _739;
    float3 _745 = r1.zzz * r2.xyz;
    r2 = float4(_745.x, _745.y, _745.z, r2.w);
    float3 _752 = r0.yzx * r2.zxy;
    r3 = float4(_752.x, _752.y, _752.z, r3.w);
    float3 _764 = (r2.yzx * r0.zxy) + (-r3.xyz);
    r0 = float4(_764.x, _764.y, _764.z, r0.w);
    float3 _774 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _786 = o4;
    _786.z = mad(_774.z, r2.xyz.z, mad(_774.y, r2.xyz.y, _774.x * r2.xyz.x));
    o4 = _786;
    float3 _795 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _798 = -r0.xyz;
    float4 _808 = o4;
    _808.y = mad(_795.z, _798.z, mad(_795.y, _798.y, _795.x * _798.x));
    o4 = _808;
    float4 _815 = r0;
    _815.x = float(asint(shader_in[2].x));
    r0 = _815;
    float4 _822 = o4;
    _822.w = r0.x * asfloat(981467136u);
    o4 = _822;
    float4 _826 = r0;
    _826.x = asfloat(3212836864u);
    r0 = _826;
    float4 _833 = r1;
    _833.y = r0.w * r0.x;
    r1 = _833;
    float2 _841 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o5 = float4(_841.x, _841.y, o5.z, o5.w);
    float2 _847 = cb5_m[5].w.xx;
    o5 = float4(o5.x, o5.y, _847.x, _847.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _862 = shader_in[2];
    _862.x = asfloat(v2);
    shader_in[2] = _862;
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
