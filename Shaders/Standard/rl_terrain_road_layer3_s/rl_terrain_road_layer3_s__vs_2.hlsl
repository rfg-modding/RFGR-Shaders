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
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[12] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float4 v1;
static int2 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[4];
static float4 o0;
static float2 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
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
    _58.w = asfloat(1065353216u);
    r0 = _58;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _68 = r1;
    _68.w = asfloat(1065353216u);
    r1 = _68;
    float4 _84 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _98 = r0;
    _98.y = mad(_84.w, r1.w, mad(_84.z, r1.z, mad(_84.y, r1.y, _84.x * r1.x)));
    r0 = _98;
    float4 _109 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _123 = r0;
    _123.x = mad(_109.w, r1.w, mad(_109.z, r1.z, mad(_109.y, r1.y, _109.x * r1.x)));
    r0 = _123;
    float4 _135 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _149 = r0;
    _149.z = mad(_135.w, r1.w, mad(_135.z, r1.z, mad(_135.y, r1.y, _135.x * r1.x)));
    r0 = _149;
    float4 _160 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _174 = o0;
    _174.x = mad(_160.w, r0.w, mad(_160.z, r0.z, mad(_160.y, r0.y, _160.x * r0.x)));
    o0 = _174;
    float4 _185 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _199 = o0;
    _199.y = mad(_185.w, r0.w, mad(_185.z, r0.z, mad(_185.y, r0.y, _185.x * r0.x)));
    o0 = _199;
    float4 _210 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _224 = o0;
    _224.z = mad(_210.w, r0.w, mad(_210.z, r0.z, mad(_210.y, r0.y, _210.x * r0.x)));
    o0 = _224;
    float4 _236 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _250 = o0;
    _250.w = mad(_236.w, r0.w, mad(_236.z, r0.z, mad(_236.y, r0.y, _236.x * r0.x)));
    o0 = _250;
    float3 _264 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_264.x, _264.y, _264.z, r1.w);
    float2 _276 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_276.x, _276.y, r0.z, r0.w);
    float3 _290 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_290.x, _290.y, _290.z, r2.w);
    float3 _301 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _314 = r3;
    _314.x = mad(_301.z, r2.xyz.z, mad(_301.y, r2.xyz.y, _301.x * r2.xyz.x));
    r3 = _314;
    float3 _323 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _335 = r3;
    _335.y = mad(_323.z, r2.xyz.z, mad(_323.y, r2.xyz.y, _323.x * r2.xyz.x));
    r3 = _335;
    float3 _344 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _356 = r3;
    _356.z = mad(_344.z, r2.xyz.z, mad(_344.y, r2.xyz.y, _344.x * r2.xyz.x));
    r3 = _356;
    float4 _371 = r0;
    _371.z = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _371;
    float4 _376 = r0;
    _376.z = rsqrt(r0.z);
    r0 = _376;
    float3 _382 = r0.zzz * r3.xyz;
    r2 = float4(_382.x, _382.y, _382.z, r2.w);
    float3 _391 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(_391.x, _391.y, _391.z, r3.w);
    float3 _401 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _414 = r4;
    _414.x = mad(_401.z, r3.xyz.z, mad(_401.y, r3.xyz.y, _401.x * r3.xyz.x));
    r4 = _414;
    float3 _423 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _435 = r4;
    _435.y = mad(_423.z, r3.xyz.z, mad(_423.y, r3.xyz.y, _423.x * r3.xyz.x));
    r4 = _435;
    float3 _444 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _456 = r4;
    _456.z = mad(_444.z, r3.xyz.z, mad(_444.y, r3.xyz.y, _444.x * r3.xyz.x));
    r4 = _456;
    float4 _471 = r0;
    _471.z = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _471;
    float4 _476 = r0;
    _476.z = rsqrt(r0.z);
    r0 = _476;
    float3 _482 = r0.zzz * r4.xyz;
    r3 = float4(_482.x, _482.y, _482.z, r3.w);
    float3 _489 = r2.yzx * r3.zxy;
    r4 = float4(_489.x, _489.y, _489.z, r4.w);
    float3 _500 = (r3.yzx * r2.zxy) + (-r4.xyz);
    r4 = float4(_500.x, _500.y, _500.z, r4.w);
    float3 _507 = r3.yzx * asfloat(uint3(1065353216u, 0u, 0u));
    r5 = float4(_507.x, _507.y, _507.z, r5.w);
    float3 _519 = (r3.xyz * asfloat(uint3(0u, 0u, 1065353216u))) + (-r5.xyz);
    r5 = float4(_519.x, _519.y, _519.z, r5.w);
    float4 _532 = r0;
    _532.z = mad(r5.xz.y, r5.xz.y, r5.xz.x * r5.xz.x);
    r0 = _532;
    float4 _537 = r0;
    _537.z = rsqrt(r0.z);
    r0 = _537;
    float3 _543 = r0.zzz * r5.xyz;
    r5 = float4(_543.x, _543.y, _543.z, r5.w);
    float3 _551 = r3.yzx * (-r5.xyz);
    r6 = float4(_551.x, _551.y, _551.z, r6.w);
    float3 _564 = ((-r5.zxy) * r3.zxy) + (-r6.xyz);
    r6 = float4(_564.x, _564.y, _564.z, r6.w);
    float2 _580 = o1;
    _580.x = mad(r4.xyz.z, r6.xyz.z, mad(r4.xyz.y, r6.xyz.y, r4.xyz.x * r6.xyz.x));
    o1 = _580;
    float2 _586 = -r5.xz;
    float2 _593 = o1;
    _593.y = mad(r4.zy.y, _586.y, r4.zy.x * _586.x);
    o1 = _593;
    float4 _608 = r0;
    _608.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _608;
    float4 _613 = r0;
    _613.z = rsqrt(r0.z);
    r0 = _613;
    float3 _619 = r0.zzz * r1.xyz;
    r1 = float4(_619.x, _619.y, _619.z, r1.w);
    float4 _635 = o2;
    _635.z = mad(r1.xyz.z, r3.xyz.z, mad(r1.xyz.y, r3.xyz.y, r1.xyz.x * r3.xyz.x));
    o2 = _635;
    float3 _644 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _656 = o3;
    _656.z = mad(_644.z, r3.xyz.z, mad(_644.y, r3.xyz.y, _644.x * r3.xyz.x));
    o3 = _656;
    float2 _662 = -r5.xz;
    float4 _669 = o2;
    _669.y = mad(r1.zy.y, _662.y, r1.zy.x * _662.x);
    o2 = _669;
    float4 _684 = o2;
    _684.x = mad(r1.xyz.z, r6.xyz.z, mad(r1.xyz.y, r6.xyz.y, r1.xyz.x * r6.xyz.x));
    o2 = _684;
    float4 _693 = o2;
    _693.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o2 = _693;
    float2 _700 = float2(cb1_m[0].z, cb1_m[0].y);
    float2 _703 = -r5.xz;
    float4 _710 = o3;
    _710.y = mad(_700.y, _703.y, _700.x * _703.x);
    o3 = _710;
    float2 _716 = -r5.xz;
    float4 _723 = o6;
    _723.w = mad(r2.zy.y, _716.y, r2.zy.x * _716.x);
    o6 = _723;
    float4 _738 = o6;
    _738.z = mad(r2.xyz.z, r6.xyz.z, mad(r2.xyz.y, r6.xyz.y, r2.xyz.x * r6.xyz.x));
    o6 = _738;
    float3 _747 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _759 = o3;
    _759.x = mad(_747.z, r6.xyz.z, mad(_747.y, r6.xyz.y, _747.x * r6.xyz.x));
    o3 = _759;
    float2 _765 = float2(asint(shader_in[2].xy));
    r0 = float4(r0.x, r0.y, _765.x, _765.y);
    float2 _774 = r0.zw * asfloat(uint2(981467136u, 981467136u));
    r0 = float4(r0.x, r0.y, _774.x, _774.y);
    float4 _787 = o3;
    _787.w = (r0.z * cb2_m[11].x) + cb2_m[11].y;
    o3 = _787;
    o4 = float4(o4.x, o4.y, r0.zw.x, r0.zw.y);
    float2 _806 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[4].z, cb2_m[4].w);
    r0 = float4(r0.x, r0.y, _806.x, _806.y);
    float2 _817 = r0.zw * float2(cb2_m[4].x, cb2_m[4].y);
    o4 = float4(_817.x, _817.y, o4.z, o4.w);
    float2 _827 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(r0.x, r0.y, _827.x, _827.y);
    float2 _840 = (float2(cb2_m[10].x, cb2_m[10].z) * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r1 = float4(_840.x, _840.y, r1.z, r1.w);
    float2 _845 = floor(r1.xy);
    r1 = float4(_845.x, _845.y, r1.z, r1.w);
    float2 _853 = r0.zw + (-r1.xy);
    r0 = float4(r0.x, r0.y, _853.x, _853.y);
    float2 _863 = (r0.zw * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_863.x, _863.y, o5.z, o5.w);
    float2 _877 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[5].z, cb2_m[5].w);
    r0 = float4(r0.x, r0.y, _877.x, _877.y);
    float2 _891 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + float2(cb2_m[6].z, cb2_m[6].w);
    r0 = float4(_891.x, _891.y, r0.z, r0.w);
    float2 _902 = r0.xy * float2(cb2_m[6].x, cb2_m[6].y);
    o6 = float4(_902.x, _902.y, o6.z, o6.w);
    float2 _913 = r0.zw * float2(cb2_m[5].x, cb2_m[5].y);
    o5 = float4(o5.x, o5.y, _913.x, _913.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = v1;
    float2 _924 = asfloat(v2);
    shader_in[2] = float4(_924.x, _924.y, shader_in[2].z, shader_in[2].w);
    shader_in[3] = v3;
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
