cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
};

cbuffer cb4_t : register(b164)
{
    float4 cb4_m[4096] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static float4 v2;
static int4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float3 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void vs_main()
{
    float4 _58 = r0;
    _58.x = shader_in[2].y + shader_in[2].x;
    r0 = _58;
    float4 _66 = r0;
    _66.x = r0.x + shader_in[2].z;
    r0 = _66;
    float4 _74 = r0;
    _74.x = r0.x + shader_in[2].w;
    r0 = _74;
    float4 _81 = r0;
    _81.x = asfloat(1065353216u) / r0.x;
    r0 = _81;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _91 = r1;
    _91.w = asfloat(1065353216u);
    r1 = _91;
    r2 = asfloat(asint(shader_in[3]) * int4(uint4(3u, 3u, 3u, 3u)));
    int _108 = asint(r2.y);
    r3 = shader_in[2].yyyy * float4(cb4_m[_108].x, cb4_m[_108].y, cb4_m[_108].z, cb4_m[_108].w);
    int _131 = asint(r2.x);
    r3 = (shader_in[2].xxxx * float4(cb4_m[_131].x, cb4_m[_131].y, cb4_m[_131].z, cb4_m[_131].w)) + r3;
    int _150 = asint(r2.z);
    r3 = (shader_in[2].zzzz * float4(cb4_m[_150].x, cb4_m[_150].y, cb4_m[_150].z, cb4_m[_150].w)) + r3;
    int _169 = asint(r2.w);
    r3 = (shader_in[2].wwww * float4(cb4_m[_169].x, cb4_m[_169].y, cb4_m[_169].z, cb4_m[_169].w)) + r3;
    float4 _198 = r4;
    _198.x = mad(r3.w, r1.w, mad(r3.z, r1.z, mad(r3.y, r1.y, r3.x * r1.x)));
    r4 = _198;
    int _207 = asint(r2.y) + 1;
    r5 = shader_in[2].yyyy * float4(cb4_m[_207].x, cb4_m[_207].y, cb4_m[_207].z, cb4_m[_207].w);
    int _226 = asint(r2.x) + 1;
    r5 = (shader_in[2].xxxx * float4(cb4_m[_226].x, cb4_m[_226].y, cb4_m[_226].z, cb4_m[_226].w)) + r5;
    int _246 = asint(r2.z) + 1;
    r5 = (shader_in[2].zzzz * float4(cb4_m[_246].x, cb4_m[_246].y, cb4_m[_246].z, cb4_m[_246].w)) + r5;
    int _266 = asint(r2.w) + 1;
    r5 = (shader_in[2].wwww * float4(cb4_m[_266].x, cb4_m[_266].y, cb4_m[_266].z, cb4_m[_266].w)) + r5;
    float4 _294 = r4;
    _294.y = mad(r5.w, r1.w, mad(r5.z, r1.z, mad(r5.y, r1.y, r5.x * r1.x)));
    r4 = _294;
    int _302 = asint(r2.y) + 2;
    r6 = shader_in[2].yyyy * float4(cb4_m[_302].x, cb4_m[_302].y, cb4_m[_302].z, cb4_m[_302].w);
    int _321 = asint(r2.x) + 2;
    r6 = (shader_in[2].xxxx * float4(cb4_m[_321].x, cb4_m[_321].y, cb4_m[_321].z, cb4_m[_321].w)) + r6;
    int _341 = asint(r2.z) + 2;
    r6 = (shader_in[2].zzzz * float4(cb4_m[_341].x, cb4_m[_341].y, cb4_m[_341].z, cb4_m[_341].w)) + r6;
    int _361 = asint(r2.w) + 2;
    r2 = (shader_in[2].wwww * float4(cb4_m[_361].x, cb4_m[_361].y, cb4_m[_361].z, cb4_m[_361].w)) + r6;
    float4 _389 = r4;
    _389.z = mad(r2.w, r1.w, mad(r2.z, r1.z, mad(r2.y, r1.y, r2.x * r1.x)));
    r4 = _389;
    float3 _395 = r0.xxx * r4.xyz;
    r1 = float4(_395.x, _395.y, _395.z, r1.w);
    float4 _399 = r1;
    _399.w = asfloat(1065353216u);
    r1 = _399;
    float4 _410 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _424 = r4;
    _424.x = mad(_410.w, r1.w, mad(_410.z, r1.z, mad(_410.y, r1.y, _410.x * r1.x)));
    r4 = _424;
    float4 _435 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _449 = r4;
    _449.y = mad(_435.w, r1.w, mad(_435.z, r1.z, mad(_435.y, r1.y, _435.x * r1.x)));
    r4 = _449;
    float4 _460 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _474 = r4;
    _474.z = mad(_460.w, r1.w, mad(_460.z, r1.z, mad(_460.y, r1.y, _460.x * r1.x)));
    r4 = _474;
    float4 _477 = r4;
    _477.w = asfloat(1065353216u);
    r4 = _477;
    float4 _488 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _502 = o0;
    _502.x = mad(_488.w, r4.w, mad(_488.z, r4.z, mad(_488.y, r4.y, _488.x * r4.x)));
    o0 = _502;
    float4 _513 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _527 = o0;
    _527.y = mad(_513.w, r4.w, mad(_513.z, r4.z, mad(_513.y, r4.y, _513.x * r4.x)));
    o0 = _527;
    float4 _538 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _552 = o0;
    _552.z = mad(_538.w, r4.w, mad(_538.z, r4.z, mad(_538.y, r4.y, _538.x * r4.x)));
    o0 = _552;
    float4 _563 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _577 = o0;
    _577.w = mad(_563.w, r4.w, mad(_563.z, r4.z, mad(_563.y, r4.y, _563.x * r4.x)));
    o0 = _577;
    float3 _591 = (-r4.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(r0.x, _591.x, _591.y, _591.z);
    float3 _605 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_605.x, _605.y, _605.z, r1.w);
    float4 _621 = r3;
    _621.x = mad(r3.xyz.z, r1.xyz.z, mad(r3.xyz.y, r1.xyz.y, r3.xyz.x * r1.xyz.x));
    r3 = _621;
    float4 _636 = r3;
    _636.y = mad(r5.xyz.z, r1.xyz.z, mad(r5.xyz.y, r1.xyz.y, r5.xyz.x * r1.xyz.x));
    r3 = _636;
    float4 _651 = r3;
    _651.z = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r3 = _651;
    float3 _657 = r0.xxx * r3.xyz;
    r1 = float4(_657.x, _657.y, _657.z, r1.w);
    float4 _673 = r0;
    _673.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _673;
    float4 _678 = r0;
    _678.x = rsqrt(r0.x);
    r0 = _678;
    float3 _684 = r0.xxx * r1.xyz;
    r1 = float4(_684.x, _684.y, _684.z, r1.w);
    float3 _694 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _706 = r2;
    _706.x = mad(_694.z, r1.xyz.z, mad(_694.y, r1.xyz.y, _694.x * r1.xyz.x));
    r2 = _706;
    float3 _715 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _727 = r2;
    _727.y = mad(_715.z, r1.xyz.z, mad(_715.y, r1.xyz.y, _715.x * r1.xyz.x));
    r2 = _727;
    float3 _736 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _748 = r2;
    _748.z = mad(_736.z, r1.xyz.z, mad(_736.y, r1.xyz.y, _736.x * r1.xyz.x));
    r2 = _748;
    float4 _763 = r0;
    _763.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _763;
    float4 _768 = r0;
    _768.x = rsqrt(r0.x);
    r0 = _768;
    float3 _774 = r0.xxx * r2.xyz;
    r1 = float4(_774.x, _774.y, _774.z, r1.w);
    float4 _790 = r0;
    _790.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _790;
    float4 _795 = r0;
    _795.x = rsqrt(r0.x);
    r0 = _795;
    float3 _801 = r0.xxx * r0.yzw;
    r0 = float4(_801.x, _801.y, _801.z, r0.w);
    float3 _808 = r0.xyz * asfloat(uint3(0u, 1065353216u, 0u));
    r2 = float4(_808.x, _808.y, _808.z, r2.w);
    float3 _819 = (r0.yzx * asfloat(uint3(0u, 0u, 1065353216u))) + (-r2.xyz);
    r2 = float4(_819.x, _819.y, _819.z, r2.w);
    float4 _833 = r0;
    _833.w = mad(r2.yz.y, r2.yz.y, r2.yz.x * r2.yz.x);
    r0 = _833;
    float4 _838 = r0;
    _838.w = rsqrt(r0.w);
    r0 = _838;
    float3 _844 = r0.www * r2.xyz;
    r2 = float4(_844.x, _844.y, _844.z, r2.w);
    float3 _851 = r0.yzx * r2.xyz;
    r3 = float4(_851.x, _851.y, _851.z, r3.w);
    float3 _862 = (r2.zxy * r0.zxy) + (-r3.xyz);
    r2 = float4(_862.x, _862.y, _862.z, r2.w);
    float4 _878 = r0;
    _878.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _878;
    float4 _884 = r0;
    _884.x = max(r0.x, asfloat(0u));
    r0 = _884;
    float4 _899 = r0;
    _899.y = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _899;
    float4 _904 = r0;
    _904.y = rsqrt(r0.y);
    r0 = _904;
    float3 _910 = r0.yyy * r2.xyz;
    r0 = float4(r0.x, _910.x, _910.y, _910.z);
    float4 _926 = r0;
    _926.y = mad(r0.yzw.z, r1.xyz.z, mad(r0.yzw.y, r1.xyz.y, r0.yzw.x * r1.xyz.x));
    r0 = _926;
    float4 _935 = r0;
    _935.y = (r0.y * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _935;
    float2 _945 = r0.xy * float2(cb2_m[2].z, cb2_m[2].w);
    r1 = float4(_945.x, _945.y, r1.z, r1.w);
    float4 _953 = r0;
    _953.x = (-r0.x) + asfloat(1065353216u);
    r0 = _953;
    float4 _958 = r0;
    _958.x = log2(r0.x);
    r0 = _958;
    float2 _968 = r0.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(_968.x, _968.y, r0.z, r0.w);
    float2 _973 = exp2(r0.xy);
    r0 = float4(_973.x, _973.y, r0.z, r0.w);
    float2 _990 = (cb0_m[12].x.xx * float2(cb2_m[3].x, cb2_m[3].y)) + r1.xy;
    o1 = float3(_990.x, _990.y, o1.z);
    float4 _999 = r0;
    _999.y = (-r0.x) + r0.y;
    r0 = _999;
    float4 _1007 = r0;
    _1007.z = cb2_m[3].z + asfloat(1008981770u);
    r0 = _1007;
    float4 _1013 = r0;
    _1013.z = asfloat(1073741824u) / r0.z;
    r0 = _1013;
    float4 _1021 = r0;
    _1021.z = r0.z * cb0_m[12].z;
    r0 = _1021;
    float4 _1027 = r0;
    _1027.z = cos(r0.zzzz.z);
    r0 = _1027;
    float4 _1033 = r0;
    _1033.z = r0.z + asfloat(1065353216u);
    r0 = _1033;
    float4 _1039 = r0;
    _1039.z = r0.z * asfloat(1056964608u);
    r0 = _1039;
    float3 _1049 = o1;
    _1049.z = (r0.z * r0.y) + r0.x;
    o1 = _1049;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = asfloat(v3);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
