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
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _61 = r0;
    _61.x = shader_in[3].x * asfloat(1082130432u);
    r0 = _61;
    float3 _74 = (r0.xxx * shader_in[2].xyz) + shader_in[0].xyz;
    r0 = float4(_74.x, _74.y, _74.z, r0.w);
    float4 _79 = r0;
    _79.w = asfloat(1065353216u);
    r0 = _79;
    float4 _94 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _109 = r1;
    _109.x = mad(_94.w, r0.w, mad(_94.z, r0.z, mad(_94.y, r0.y, _94.x * r0.x)));
    r1 = _109;
    float4 _121 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _135 = r1;
    _135.y = mad(_121.w, r0.w, mad(_121.z, r0.z, mad(_121.y, r0.y, _121.x * r0.x)));
    r1 = _135;
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
    float4 _249 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _263 = o0;
    _263.w = mad(_249.w, r1.w, mad(_249.z, r1.z, mad(_249.y, r1.y, _249.x * r1.x)));
    o0 = _263;
    float4 _267 = r0;
    _267.x = asfloat(3212836864u);
    r0 = _267;
    float3 _281 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(r0.x, _281.x, _281.y, _281.z);
    float3 _293 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _303 = r1;
    _303.x = mad(r0.yzw.z, _293.z, mad(r0.yzw.y, _293.y, r0.yzw.x * _293.x));
    r1 = _303;
    float4 _312 = r1;
    _312.x = r1.x * cb5_m[5].y;
    r1 = _312;
    float4 _319 = r1;
    _319.y = r0.x * r1.x;
    r1 = _319;
    float3 _330 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _341 = r2;
    _341.x = mad(r0.yzw.z, _330.z, mad(r0.yzw.y, _330.y, r0.yzw.x * _330.x));
    r2 = _341;
    float3 _352 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _362 = r2;
    _362.z = mad(r0.yzw.z, _352.z, mad(r0.yzw.y, _352.y, r0.yzw.x * _352.x));
    r2 = _362;
    float2 _372 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_372.x, r1.y, _372.y, r1.w);
    o1 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _384 = o3;
    _384.w = r1.z;
    o3 = _384;
    float3 _396 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_396.x, _396.y, _396.z, r0.w);
    float3 _410 = r0.yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_410.x, _410.y, _410.z, r1.w);
    float3 _428 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r0.zxy) + (-r1.xyz);
    r1 = float4(_428.x, _428.y, _428.z, r1.w);
    float4 _444 = r0;
    _444.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _444;
    float4 _449 = r0;
    _449.w = rsqrt(r0.w);
    r0 = _449;
    float3 _455 = r0.www * r1.xyz;
    r1 = float4(_455.x, _455.y, _455.z, r1.w);
    float3 _462 = r0.zxy * r1.yzx;
    r2 = float4(_462.x, _462.y, _462.z, r2.w);
    float3 _473 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_473.x, _473.y, _473.z, r2.w);
    float3 _483 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _495 = o3;
    _495.y = mad(_483.z, r1.xyz.z, mad(_483.y, r1.xyz.y, _483.x * r1.xyz.x));
    o3 = _495;
    float4 _510 = r0;
    _510.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _510;
    float4 _515 = r0;
    _515.w = rsqrt(r0.w);
    r0 = _515;
    float3 _521 = r0.www * r2.xyz;
    r1 = float4(_521.x, _521.y, _521.z, r1.w);
    float3 _531 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _543 = r2;
    _543.x = mad(_531.z, r1.xyz.z, mad(_531.y, r1.xyz.y, _531.x * r1.xyz.x));
    r2 = _543;
    float3 _552 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _564 = r2;
    _564.y = mad(_552.z, r1.xyz.z, mad(_552.y, r1.xyz.y, _552.x * r1.xyz.x));
    r2 = _564;
    float3 _573 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _585 = r2;
    _585.z = mad(_573.z, r1.xyz.z, mad(_573.y, r1.xyz.y, _573.x * r1.xyz.x));
    r2 = _585;
    float3 _594 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _606 = o3;
    _606.x = mad(_594.z, r1.xyz.z, mad(_594.y, r1.xyz.y, _594.x * r1.xyz.x));
    o3 = _606;
    float4 _621 = r0;
    _621.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _621;
    float4 _626 = r0;
    _626.w = rsqrt(r0.w);
    r0 = _626;
    float3 _632 = r0.www * r2.xyz;
    r1 = float4(_632.x, _632.y, _632.z, r1.w);
    float3 _642 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_642.x, _642.y, _642.z, r2.w);
    float3 _653 = (shader_in[3].xxx * r2.xyz) + r0.xyz;
    r2 = float4(_653.x, _653.y, _653.z, r2.w);
    float3 _663 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _675 = o3;
    _675.z = mad(_663.z, r0.xyz.z, mad(_663.y, r0.xyz.y, _663.x * r0.xyz.x));
    o3 = _675;
    float3 _684 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _696 = r0;
    _696.x = mad(_684.z, r2.xyz.z, mad(_684.y, r2.xyz.y, _684.x * r2.xyz.x));
    r0 = _696;
    float3 _705 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _717 = r0;
    _717.y = mad(_705.z, r2.xyz.z, mad(_705.y, r2.xyz.y, _705.x * r2.xyz.x));
    r0 = _717;
    float3 _726 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _738 = r0;
    _738.z = mad(_726.z, r2.xyz.z, mad(_726.y, r2.xyz.y, _726.x * r2.xyz.x));
    r0 = _738;
    float4 _753 = r0;
    _753.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _753;
    float4 _758 = r0;
    _758.w = rsqrt(r0.w);
    r0 = _758;
    float3 _764 = r0.www * r0.xyz;
    r0 = float4(_764.x, _764.y, _764.z, r0.w);
    float3 _771 = r1.yzx * r0.zxy;
    r2 = float4(_771.x, _771.y, _771.z, r2.w);
    float3 _782 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_782.x, _782.y, _782.z, r2.w);
    float3 _792 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _804 = o2;
    _804.x = mad(_792.z, r1.xyz.z, mad(_792.y, r1.xyz.y, _792.x * r1.xyz.x));
    o2 = _804;
    float3 _813 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _825 = o2;
    _825.z = mad(_813.z, r0.xyz.z, mad(_813.y, r0.xyz.y, _813.x * r0.xyz.x));
    o2 = _825;
    float3 _834 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _837 = -r2.xyz;
    float3 _847 = o2;
    _847.y = mad(_834.z, _837.z, mad(_834.y, _837.y, _834.x * _837.x));
    o2 = _847;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
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
