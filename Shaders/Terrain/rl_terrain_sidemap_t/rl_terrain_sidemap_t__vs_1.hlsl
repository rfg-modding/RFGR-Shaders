cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static float4 o7;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float2 _58 = float2(asint(shader_in[0].xy));
    r0 = float4(_58.x, _58.y, r0.z, r0.w);
    float4 _67 = r0;
    _67.y = r0.y + asfloat(1191182336u);
    r0 = _67;
    float4 _75 = r1;
    _75.y = r0.x * asfloat(1015021568u);
    r1 = _75;
    float4 _82 = r0;
    _82.x = r0.y * asfloat(998244352u);
    r0 = _82;
    float4 _87 = r1;
    _87.z = trunc(r0.x);
    r1 = _87;
    float4 _98 = r1;
    _98.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _98;
    float4 _102 = r1;
    _102.w = asfloat(1065353216u);
    r1 = _102;
    float4 _118 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _132 = r0;
    _132.x = mad(_118.w, r1.w, mad(_118.z, r1.z, mad(_118.y, r1.y, _118.x * r1.x)));
    r0 = _132;
    float4 _144 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _158 = r0;
    _158.y = mad(_144.w, r1.w, mad(_144.z, r1.z, mad(_144.y, r1.y, _144.x * r1.x)));
    r0 = _158;
    float4 _170 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _184 = r0;
    _184.z = mad(_170.w, r1.w, mad(_170.z, r1.z, mad(_170.y, r1.y, _170.x * r1.x)));
    r0 = _184;
    float4 _187 = r0;
    _187.w = asfloat(1065353216u);
    r0 = _187;
    float4 _198 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _212 = o0;
    _212.x = mad(_198.w, r0.w, mad(_198.z, r0.z, mad(_198.y, r0.y, _198.x * r0.x)));
    o0 = _212;
    float4 _223 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _237 = o0;
    _237.y = mad(_223.w, r0.w, mad(_223.z, r0.z, mad(_223.y, r0.y, _223.x * r0.x)));
    o0 = _237;
    float4 _248 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _262 = o0;
    _262.z = mad(_248.w, r0.w, mad(_248.z, r0.z, mad(_248.y, r0.y, _248.x * r0.x)));
    o0 = _262;
    float4 _274 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _288 = o0;
    _288.w = mad(_274.w, r0.w, mad(_274.z, r0.z, mad(_274.y, r0.y, _274.x * r0.x)));
    o0 = _288;
    float3 _301 = r0.xyz + float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z);
    r1 = float4(_301.x, _301.y, _301.z, r1.w);
    float4 _305 = r1;
    _305.w = asfloat(1065353216u);
    r1 = _305;
    float4 _317 = float4(cb2_m[12].x, cb2_m[12].y, cb2_m[12].z, cb2_m[12].w);
    float2 _331 = o1;
    _331.x = mad(_317.w, r1.w, mad(_317.z, r1.z, mad(_317.y, r1.y, _317.x * r1.x)));
    o1 = _331;
    float4 _342 = float4(cb2_m[14].x, cb2_m[14].y, cb2_m[14].z, cb2_m[14].w);
    float2 _356 = o1;
    _356.y = mad(_342.w, r1.w, mad(_342.z, r1.z, mad(_342.y, r1.y, _342.x * r1.x)));
    o1 = _356;
    float3 _369 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_369.x, _369.y, _369.z, r2.w);
    float3 _384 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_384.x, _384.y, _384.z, r3.w);
    float3 _395 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _408 = r4;
    _408.x = mad(_395.z, r3.xyz.z, mad(_395.y, r3.xyz.y, _395.x * r3.xyz.x));
    r4 = _408;
    float3 _417 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _429 = r4;
    _429.y = mad(_417.z, r3.xyz.z, mad(_417.y, r3.xyz.y, _417.x * r3.xyz.x));
    r4 = _429;
    float3 _438 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _450 = r4;
    _450.z = mad(_438.z, r3.xyz.z, mad(_438.y, r3.xyz.y, _438.x * r3.xyz.x));
    r4 = _450;
    float4 _465 = r0;
    _465.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _465;
    float4 _470 = r0;
    _470.w = rsqrt(r0.w);
    r0 = _470;
    float3 _476 = r0.www * r4.xyz;
    r3 = float4(_476.x, _476.y, _476.z, r3.w);
    float4 _481 = r4;
    _481.z = r3.y;
    r4 = _481;
    float2 _485 = abs(r3.zx);
    r4 = float4(_485.x, _485.y, r4.z, r4.w);
    float3 _492 = r4.xyz * asfloat(uint3(3212836864u, 3212836864u, 1065353216u));
    r5 = float4(_492.x, _492.y, _492.z, r5.w);
    float2 _502 = r4.yx * asfloat(uint2(2147483648u, 3212836864u));
    r6 = float4(_502.x, r6.y, _502.y, r6.w);
    float4 _507 = r6;
    _507.y = asfloat(0u);
    r6 = _507;
    float3 _517 = ((-r4.xyz) * asfloat(uint3(2147483648u, 3212836864u, 0u))) + r6.xyz;
    r4 = float4(_517.x, _517.y, _517.z, r4.w);
    float3 _524 = r4.xyz * r5.xyz;
    r6 = float4(_524.x, _524.y, _524.z, r6.w);
    float3 _535 = (r5.zxy * r4.yzx) + (-r6.xyz);
    r5 = float4(_535.x, _535.y, _535.z, r5.w);
    float3 _551 = o2;
    _551.y = mad(r2.xyz.z, r5.xyz.z, mad(r2.xyz.y, r5.xyz.y, r2.xyz.x * r5.xyz.x));
    o2 = _551;
    float3 _566 = o2;
    _566.z = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o2 = _566;
    float3 _578 = o2;
    _578.x = mad(r2.zx.y, r4.yz.y, r2.zx.x * r4.yz.x);
    o2 = _578;
    float3 _592 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r2 = float4(_592.x, _592.y, _592.z, r2.w);
    float3 _606 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_606.x, _606.y, _606.z, r0.w);
    float4 _622 = r0;
    _622.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _622;
    float4 _627 = r0;
    _627.w = rsqrt(r0.w);
    r0 = _627;
    float3 _633 = r0.www * r2.xyz;
    r2 = float4(_633.x, _633.y, _633.z, r2.w);
    float3 _649 = o3;
    _649.z = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    o3 = _649;
    float3 _661 = o3;
    _661.x = mad(r2.zx.y, r4.yz.y, r2.zx.x * r4.yz.x);
    o3 = _661;
    float2 _668 = float2(cb1_m[1].z, cb1_m[1].x);
    float4 _677 = o5;
    _677.x = mad(_668.y, r4.yz.y, _668.x * r4.yz.x);
    o5 = _677;
    float3 _692 = o3;
    _692.y = mad(r2.xyz.z, r5.xyz.z, mad(r2.xyz.y, r5.xyz.y, r2.xyz.x * r5.xyz.x));
    o3 = _692;
    float3 _701 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _713 = o5;
    _713.y = mad(_701.z, r5.xyz.z, mad(_701.y, r5.xyz.y, _701.x * r5.xyz.x));
    o5 = _713;
    o4 = float4(r3.xyz.x, r3.xyz.y, r3.xyz.z, o4.w);
    float3 _726 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _738 = o5;
    _738.z = mad(_726.z, r3.xyz.z, mad(_726.y, r3.xyz.y, _726.x * r3.xyz.x));
    o5 = _738;
    float4 _747 = o4;
    _747.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o4 = _747;
    float4 _756 = r0;
    _756.w = r0.y * cb0_m[13].x;
    r0 = _756;
    float4 _763 = r2;
    _763.x = r0.w * asfloat(3216550459u);
    r2 = _763;
    float4 _768 = r2;
    _768.x = exp2(r2.x);
    r2 = _768;
    float4 _775 = r2;
    _775.x = (-r2.x) + asfloat(1065353216u);
    r2 = _775;
    float4 _782 = r0;
    _782.w = r2.x / r0.w;
    r0 = _782;
    float4 _794 = r2;
    _794.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r2 = _794;
    float4 _809 = r0;
    _809.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _809;
    float4 _814 = r0;
    _814.x = sqrt(r0.x);
    r0 = _814;
    float4 _822 = r0;
    _822.x = r0.x * cb0_m[13].y;
    r0 = _822;
    float4 _832 = r0;
    _832.y = (asuint(r2.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _832;
    float4 _844 = r0;
    _844.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _844;
    float4 _850 = r0;
    _850.x = exp2(-r0.x);
    r0 = _850;
    float4 _856 = r0;
    _856.x = min(r0.x, asfloat(1065353216u));
    r0 = _856;
    float4 _863 = o5;
    _863.w = (-r0.x) + asfloat(1065353216u);
    o5 = _863;
    float2 _874 = (r1.xz * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_874.x, _874.y, r0.z, r0.w);
    float2 _887 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_887.x, _887.y, r0.z, r0.w);
    float2 _899 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o6 = float4(o6.x, o6.y, _899.x, _899.y);
    float4 _911 = float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _925 = o6;
    _925.x = mad(_911.w, r1.w, mad(_911.z, r1.z, mad(_911.y, r1.y, _911.x * r1.x)));
    o6 = _925;
    float4 _936 = float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    float4 _950 = o6;
    _950.y = mad(_936.w, r1.w, mad(_936.z, r1.z, mad(_936.y, r1.y, _936.x * r1.x)));
    o6 = _950;
    float4 _961 = float4(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z, cb2_m[4].w);
    float4 _975 = o7;
    _975.x = mad(_961.w, r1.w, mad(_961.z, r1.z, mad(_961.y, r1.y, _961.x * r1.x)));
    o7 = _975;
    float4 _987 = float4(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z, cb2_m[6].w);
    float4 _1001 = o7;
    _1001.y = mad(_987.w, r1.w, mad(_987.z, r1.z, mad(_987.y, r1.y, _987.x * r1.x)));
    o7 = _1001;
    float4 _1013 = float4(cb2_m[8].x, cb2_m[8].y, cb2_m[8].z, cb2_m[8].w);
    float4 _1027 = o7;
    _1027.z = mad(_1013.w, r1.w, mad(_1013.z, r1.z, mad(_1013.y, r1.y, _1013.x * r1.x)));
    o7 = _1027;
    float4 _1039 = float4(cb2_m[10].x, cb2_m[10].y, cb2_m[10].z, cb2_m[10].w);
    float4 _1053 = o7;
    _1053.w = mad(_1039.w, r1.w, mad(_1039.z, r1.z, mad(_1039.y, r1.y, _1039.x * r1.x)));
    o7 = _1053;
}

void vert_main()
{
    float2 _1057 = asfloat(v0);
    shader_in[0] = float4(_1057.x, _1057.y, shader_in[0].z, shader_in[0].w);
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
