cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[5] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[15] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float4 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float2 _57 = float2(asint(shader_in[0].xy));
    r0 = float4(_57.x, _57.y, r0.z, r0.w);
    float4 _66 = r0;
    _66.y = r0.y + asfloat(1191182336u);
    r0 = _66;
    float4 _74 = r1;
    _74.y = r0.x * asfloat(1015021568u);
    r1 = _74;
    float4 _81 = r0;
    _81.x = r0.y * asfloat(998244352u);
    r0 = _81;
    float4 _86 = r1;
    _86.z = trunc(r0.x);
    r1 = _86;
    float4 _97 = r1;
    _97.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _97;
    float4 _101 = r1;
    _101.w = asfloat(1065353216u);
    r1 = _101;
    float4 _117 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _131 = r0;
    _131.x = mad(_117.w, r1.w, mad(_117.z, r1.z, mad(_117.y, r1.y, _117.x * r1.x)));
    r0 = _131;
    float4 _143 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _157 = r0;
    _157.y = mad(_143.w, r1.w, mad(_143.z, r1.z, mad(_143.y, r1.y, _143.x * r1.x)));
    r0 = _157;
    float4 _169 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _183 = r0;
    _183.z = mad(_169.w, r1.w, mad(_169.z, r1.z, mad(_169.y, r1.y, _169.x * r1.x)));
    r0 = _183;
    float4 _186 = r0;
    _186.w = asfloat(1065353216u);
    r0 = _186;
    float4 _197 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _211 = o0;
    _211.x = mad(_197.w, r0.w, mad(_197.z, r0.z, mad(_197.y, r0.y, _197.x * r0.x)));
    o0 = _211;
    float4 _222 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _236 = o0;
    _236.y = mad(_222.w, r0.w, mad(_222.z, r0.z, mad(_222.y, r0.y, _222.x * r0.x)));
    o0 = _236;
    float4 _247 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _261 = o0;
    _261.z = mad(_247.w, r0.w, mad(_247.z, r0.z, mad(_247.y, r0.y, _247.x * r0.x)));
    o0 = _261;
    float4 _273 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _287 = o0;
    _287.w = mad(_273.w, r0.w, mad(_273.z, r0.z, mad(_273.y, r0.y, _273.x * r0.x)));
    o0 = _287;
    float3 _300 = r0.xyz + float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z);
    r1 = float4(_300.x, _300.y, _300.z, r1.w);
    float3 _315 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_315.x, _315.y, _315.z, r0.w);
    float4 _319 = r1;
    _319.w = asfloat(1065353216u);
    r1 = _319;
    float4 _331 = float4(cb2_m[8].x, cb2_m[8].y, cb2_m[8].z, cb2_m[8].w);
    float2 _345 = o1;
    _345.x = mad(_331.w, r1.w, mad(_331.z, r1.z, mad(_331.y, r1.y, _331.x * r1.x)));
    o1 = _345;
    float4 _357 = float4(cb2_m[10].x, cb2_m[10].y, cb2_m[10].z, cb2_m[10].w);
    float2 _371 = o1;
    _371.y = mad(_357.w, r1.w, mad(_357.z, r1.z, mad(_357.y, r1.y, _357.x * r1.x)));
    o1 = _371;
    float4 _375 = r2;
    _375.y = asfloat(0u);
    r2 = _375;
    float3 _388 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_388.x, _388.y, _388.z, r3.w);
    float3 _399 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _412 = r4;
    _412.x = mad(_399.z, r3.xyz.z, mad(_399.y, r3.xyz.y, _399.x * r3.xyz.x));
    r4 = _412;
    float3 _421 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _433 = r4;
    _433.y = mad(_421.z, r3.xyz.z, mad(_421.y, r3.xyz.y, _421.x * r3.xyz.x));
    r4 = _433;
    float3 _442 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _454 = r4;
    _454.z = mad(_442.z, r3.xyz.z, mad(_442.y, r3.xyz.y, _442.x * r3.xyz.x));
    r4 = _454;
    float4 _469 = r0;
    _469.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _469;
    float4 _474 = r0;
    _474.w = rsqrt(r0.w);
    r0 = _474;
    float3 _480 = r0.www * r4.xyz;
    r3 = float4(_480.x, _480.y, _480.z, r3.w);
    float4 _485 = r4;
    _485.z = r3.y;
    r4 = _485;
    float2 _489 = abs(r3.zx);
    r4 = float4(_489.x, _489.y, r4.z, r4.w);
    float2 _498 = r4.yx * asfloat(uint2(2147483648u, 3212836864u));
    r2 = float4(_498.x, r2.y, _498.y, r2.w);
    float3 _509 = ((-r4.xyz) * asfloat(uint3(2147483648u, 3212836864u, 0u))) + r2.xyz;
    r2 = float4(_509.x, _509.y, _509.z, r2.w);
    float3 _516 = r4.xyz * asfloat(uint3(3212836864u, 3212836864u, 1065353216u));
    r4 = float4(_516.x, _516.y, _516.z, r4.w);
    float3 _523 = r2.xyz * r4.xyz;
    r5 = float4(_523.x, _523.y, _523.z, r5.w);
    float3 _535 = (r4.zxy * r2.yzx) + (-r5.xyz);
    r4 = float4(_535.x, _535.y, _535.z, r4.w);
    float3 _545 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _557 = o2;
    _557.y = mad(_545.z, r4.xyz.z, mad(_545.y, r4.xyz.y, _545.x * r4.xyz.x));
    o2 = _557;
    float3 _566 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _578 = o2;
    _578.z = mad(_566.z, r3.xyz.z, mad(_566.y, r3.xyz.y, _566.x * r3.xyz.x));
    o2 = _578;
    float2 _585 = float2(cb1_m[0].z, cb1_m[0].x);
    float3 _594 = o2;
    _594.x = mad(_585.y, r2.yz.y, _585.x * r2.yz.x);
    o2 = _594;
    float4 _609 = r0;
    _609.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _609;
    float4 _614 = r0;
    _614.w = rsqrt(r0.w);
    r0 = _614;
    float3 _620 = r0.www * r0.xyz;
    r0 = float4(_620.x, _620.y, _620.z, r0.w);
    float3 _636 = o3;
    _636.z = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _636;
    o4 = float4(r3.xyz.x, r3.xyz.y, r3.xyz.z, o4.w);
    float3 _652 = o3;
    _652.x = mad(r0.zx.y, r2.yz.y, r0.zx.x * r2.yz.x);
    o3 = _652;
    float3 _667 = o3;
    _667.y = mad(r0.xyz.z, r4.xyz.z, mad(r0.xyz.y, r4.xyz.y, r0.xyz.x * r4.xyz.x));
    o3 = _667;
    float4 _676 = o4;
    _676.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o4 = _676;
    float4 _687 = float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _701 = o5;
    _701.x = mad(_687.w, r1.w, mad(_687.z, r1.z, mad(_687.y, r1.y, _687.x * r1.x)));
    o5 = _701;
    float4 _712 = float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    float4 _726 = o5;
    _726.y = mad(_712.w, r1.w, mad(_712.z, r1.z, mad(_712.y, r1.y, _712.x * r1.x)));
    o5 = _726;
    float4 _738 = float4(cb2_m[12].x, cb2_m[12].y, cb2_m[12].z, cb2_m[12].w);
    float4 _752 = o5;
    _752.z = mad(_738.w, r1.w, mad(_738.z, r1.z, mad(_738.y, r1.y, _738.x * r1.x)));
    o5 = _752;
    float4 _763 = float4(cb2_m[14].x, cb2_m[14].y, cb2_m[14].z, cb2_m[14].w);
    float4 _777 = o5;
    _777.w = mad(_763.w, r1.w, mad(_763.z, r1.z, mad(_763.y, r1.y, _763.x * r1.x)));
    o5 = _777;
    float2 _788 = (r1.xz * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_788.x, _788.y, r0.z, r0.w);
    float2 _801 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_801.x, _801.y, r0.z, r0.w);
    float2 _813 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o6 = float4(_813.x, _813.y, o6.z, o6.w);
    float4 _825 = float4(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z, cb2_m[4].w);
    float4 _839 = o6;
    _839.z = mad(_825.w, r1.w, mad(_825.z, r1.z, mad(_825.y, r1.y, _825.x * r1.x)));
    o6 = _839;
    float4 _851 = float4(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z, cb2_m[6].w);
    float4 _865 = o6;
    _865.w = mad(_851.w, r1.w, mad(_851.z, r1.z, mad(_851.y, r1.y, _851.x * r1.x)));
    o6 = _865;
}

void vert_main()
{
    float2 _869 = asfloat(v0);
    shader_in[0] = float4(_869.x, _869.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = v1;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
