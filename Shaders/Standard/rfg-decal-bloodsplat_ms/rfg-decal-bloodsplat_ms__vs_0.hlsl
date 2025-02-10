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
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 o7;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

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
    float3 _277 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r0 = float4(_277.x, _277.y, _277.z, r0.w);
    float3 _296 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r0.xyz);
    r0 = float4(_296.x, _296.y, _296.z, r0.w);
    float4 _312 = r0;
    _312.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _312;
    float4 _317 = r0;
    _317.w = rsqrt(r0.w);
    r0 = _317;
    float3 _323 = r0.www * r0.xyz;
    r0 = float4(_323.x, _323.y, _323.z, r0.w);
    float3 _331 = r0.yzx * shader_in[1].zxy;
    r2 = float4(_331.x, _331.y, _331.z, r2.w);
    float3 _344 = (shader_in[1].yzx * r0.zxy) + (-r2.xyz);
    r2 = float4(_344.x, _344.y, _344.z, r2.w);
    float3 _354 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _366 = o3;
    _366.y = mad(_354.z, r0.xyz.z, mad(_354.y, r0.xyz.y, _354.x * r0.xyz.x));
    o3 = _366;
    float4 _381 = r0;
    _381.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _381;
    float4 _386 = r0;
    _386.x = rsqrt(r0.x);
    r0 = _386;
    float3 _392 = r0.xxx * r2.xyz;
    r0 = float4(_392.x, _392.y, _392.z, r0.w);
    float3 _402 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _414 = r2;
    _414.x = mad(_402.z, r0.xyz.z, mad(_402.y, r0.xyz.y, _402.x * r0.xyz.x));
    r2 = _414;
    float3 _423 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _435 = r2;
    _435.y = mad(_423.z, r0.xyz.z, mad(_423.y, r0.xyz.y, _423.x * r0.xyz.x));
    r2 = _435;
    float3 _444 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _456 = r2;
    _456.z = mad(_444.z, r0.xyz.z, mad(_444.y, r0.xyz.y, _444.x * r0.xyz.x));
    r2 = _456;
    float3 _465 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _477 = o3;
    _477.x = mad(_465.z, r0.xyz.z, mad(_465.y, r0.xyz.y, _465.x * r0.xyz.x));
    o3 = _477;
    float4 _492 = r0;
    _492.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _492;
    float4 _497 = r0;
    _497.x = rsqrt(r0.x);
    r0 = _497;
    float3 _503 = r0.xxx * r2.xyz;
    r0 = float4(_503.x, _503.y, _503.z, r0.w);
    float3 _513 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _525 = o1;
    _525.x = mad(_513.z, r0.xyz.z, mad(_513.y, r0.xyz.y, _513.x * r0.xyz.x));
    o1 = _525;
    float3 _538 = (shader_in[3].xxx * shader_in[4].xyz) + shader_in[1].xyz;
    r2 = float4(_538.x, _538.y, _538.z, r2.w);
    float3 _548 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _561 = r3;
    _561.x = mad(_548.z, r2.xyz.z, mad(_548.y, r2.xyz.y, _548.x * r2.xyz.x));
    r3 = _561;
    float3 _570 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _582 = r3;
    _582.y = mad(_570.z, r2.xyz.z, mad(_570.y, r2.xyz.y, _570.x * r2.xyz.x));
    r3 = _582;
    float3 _591 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _603 = r3;
    _603.z = mad(_591.z, r2.xyz.z, mad(_591.y, r2.xyz.y, _591.x * r2.xyz.x));
    r3 = _603;
    float4 _618 = r0;
    _618.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _618;
    float4 _623 = r0;
    _623.w = rsqrt(r0.w);
    r0 = _623;
    float3 _629 = r0.www * r3.xyz;
    r2 = float4(_629.x, _629.y, _629.z, r2.w);
    float3 _636 = r0.yzx * r2.zxy;
    r3 = float4(_636.x, _636.y, _636.z, r3.w);
    float3 _647 = (r2.yzx * r0.zxy) + (-r3.xyz);
    r3 = float4(_647.x, _647.y, _647.z, r3.w);
    float3 _657 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _660 = -r3.xyz;
    float3 _670 = o1;
    _670.y = mad(_657.z, _660.z, mad(_657.y, _660.y, _657.x * _660.x));
    o1 = _670;
    float3 _679 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _691 = o1;
    _691.z = mad(_679.z, r2.xyz.z, mad(_679.y, r2.xyz.y, _679.x * r2.xyz.x));
    o1 = _691;
    float3 _705 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_705.x, _705.y, _705.z, r4.w);
    float3 _720 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_720.x, _720.y, _720.z, r1.w);
    float3 _736 = o2;
    _736.x = mad(r4.xyz.z, r0.xyz.z, mad(r4.xyz.y, r0.xyz.y, r4.xyz.x * r0.xyz.x));
    o2 = _736;
    float4 _740 = o6;
    _740.x = r0.y;
    o6 = _740;
    float3 _755 = o2;
    _755.z = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _755;
    float4 _759 = o6;
    _759.z = r2.y;
    o6 = _759;
    float3 _765 = -r3.xyz;
    float3 _775 = o2;
    _775.y = mad(r4.xyz.z, _765.z, mad(r4.xyz.y, _765.y, r4.xyz.x * _765.x));
    o2 = _775;
    float4 _780 = o6;
    _780.y = -r3.y;
    o6 = _780;
    float3 _789 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _802 = o3;
    _802.z = mad(_789.z, shader_in[1].xyz.z, mad(_789.y, shader_in[1].xyz.y, _789.x * shader_in[1].xyz.x));
    o3 = _802;
    float3 _816 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_816.x, _816.y, _816.z, r0.w);
    float3 _828 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _838 = r2;
    _838.x = mad(r0.xyz.z, _828.z, mad(r0.xyz.y, _828.y, r0.xyz.x * _828.x));
    r2 = _838;
    float3 _849 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _859 = r2;
    _859.z = mad(r0.xyz.z, _849.z, mad(r0.xyz.y, _849.y, r0.xyz.x * _849.x));
    r2 = _859;
    float3 _870 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _880 = r0;
    _880.x = mad(r0.xyz.z, _870.z, mad(r0.xyz.y, _870.y, r0.xyz.x * _870.x));
    r0 = _880;
    float4 _889 = r0;
    _889.x = r0.x * cb5_m[5].y;
    r0 = _889;
    float2 _900 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_900.x, r2.y, _900.y, r2.w);
    float4 _905 = o3;
    _905.w = r2.z;
    o3 = _905;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _935 = r0;
    _935.y = r1.y * cb0_m[13].x;
    r0 = _935;
    float4 _942 = r0;
    _942.z = r0.y * asfloat(3216550459u);
    r0 = _942;
    float4 _947 = r0;
    _947.z = exp2(r0.z);
    r0 = _947;
    float4 _954 = r0;
    _954.z = (-r0.z) + asfloat(1065353216u);
    r0 = _954;
    float4 _961 = r0;
    _961.y = r0.z / r0.y;
    r0 = _961;
    float4 _973 = r0;
    _973.z = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _973;
    float4 _988 = r0;
    _988.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _988;
    float4 _993 = r0;
    _993.w = sqrt(r0.w);
    r0 = _993;
    float4 _1001 = r0;
    _1001.w = r0.w * cb0_m[13].y;
    r0 = _1001;
    float4 _1011 = r0;
    _1011.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _1011;
    float4 _1023 = r0;
    _1023.y = (r0.y * r0.w) + (-cb0_m[13].w);
    r0 = _1023;
    float4 _1029 = r0;
    _1029.y = exp2(-r0.y);
    r0 = _1029;
    float4 _1035 = r0;
    _1035.y = min(r0.y, asfloat(1065353216u));
    r0 = _1035;
    float4 _1042 = o6;
    _1042.w = (-r0.y) + asfloat(1065353216u);
    o6 = _1042;
    float4 _1046 = r0;
    _1046.y = asfloat(3212836864u);
    r0 = _1046;
    float4 _1053 = r2;
    _1053.y = r0.x * r0.y;
    r2 = _1053;
    float2 _1061 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    o7 = float4(_1061.x, _1061.y, o7.z, o7.w);
    float2 _1067 = cb5_m[5].w.xx;
    o7 = float4(o7.x, o7.y, _1067.x, _1067.y);
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
