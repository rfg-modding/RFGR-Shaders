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

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
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
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _63 = r1;
    _63.w = asfloat(1065353216u);
    r1 = _63;
    float4 _81 = r0;
    _81.x = mad(shader_in[2].w, r1.w, mad(shader_in[2].z, r1.z, mad(shader_in[2].y, r1.y, shader_in[2].x * r1.x)));
    r0 = _81;
    float4 _99 = r0;
    _99.y = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _99;
    float4 _117 = r0;
    _117.z = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _117;
    float4 _133 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _147 = o0;
    _147.x = mad(_133.w, r0.w, mad(_133.z, r0.z, mad(_133.y, r0.y, _133.x * r0.x)));
    o0 = _147;
    float4 _159 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _173 = o0;
    _173.y = mad(_159.w, r0.w, mad(_159.z, r0.z, mad(_159.y, r0.y, _159.x * r0.x)));
    o0 = _173;
    float4 _184 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _198 = o0;
    _198.z = mad(_184.w, r0.w, mad(_184.z, r0.z, mad(_184.y, r0.y, _184.x * r0.x)));
    o0 = _198;
    float4 _209 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _223 = o0;
    _223.w = mad(_209.w, r0.w, mad(_209.z, r0.z, mad(_209.y, r0.y, _209.x * r0.x)));
    o0 = _223;
    float3 _237 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_237.x, _237.y, _237.z, r0.w);
    float4 _242 = r0;
    _242.w = asfloat(3212836864u);
    r0 = _242;
    float3 _256 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_256.x, _256.y, _256.z, r1.w);
    float3 _268 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _278 = r1;
    _278.w = mad(r1.xyz.z, _268.z, mad(r1.xyz.y, _268.y, r1.xyz.x * _268.x));
    r1 = _278;
    float4 _287 = r1;
    _287.w = r1.w * cb5_m[5].y;
    r1 = _287;
    float4 _295 = r2;
    _295.y = r0.w * r1.w;
    r2 = _295;
    float3 _306 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _317 = r3;
    _317.x = mad(r1.xyz.z, _306.z, mad(r1.xyz.y, _306.y, r1.xyz.x * _306.x));
    r3 = _317;
    float3 _328 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _338 = r3;
    _338.z = mad(r1.xyz.z, _328.z, mad(r1.xyz.y, _328.y, r1.xyz.x * _328.x));
    r3 = _338;
    float2 _348 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_348.x, r2.y, _348.y, r2.w);
    o1 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _360 = o3;
    _360.w = r2.z;
    o3 = _360;
    float3 _372 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_372.x, _372.y, _372.z, r1.w);
    float3 _386 = r1.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r2 = float4(_386.x, _386.y, _386.z, r2.w);
    float3 _404 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r1.xyz) + (-r2.xyz);
    r2 = float4(_404.x, _404.y, _404.z, r2.w);
    float4 _420 = r0;
    _420.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _420;
    float4 _425 = r0;
    _425.w = rsqrt(r0.w);
    r0 = _425;
    float3 _431 = r0.www * r2.xyz;
    r2 = float4(_431.x, _431.y, _431.z, r2.w);
    float3 _438 = r1.zxy * r2.xyz;
    r3 = float4(_438.x, _438.y, _438.z, r3.w);
    float3 _449 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_449.x, _449.y, _449.z, r2.w);
    float4 _465 = r0;
    _465.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _465;
    float4 _470 = r0;
    _470.w = rsqrt(r0.w);
    r0 = _470;
    float3 _476 = r0.www * r2.xyz;
    r2 = float4(_476.x, _476.y, _476.z, r2.w);
    float4 _493 = r3;
    _493.x = mad(shader_in[2].xyz.z, r2.xyz.z, mad(shader_in[2].xyz.y, r2.xyz.y, shader_in[2].xyz.x * r2.xyz.x));
    r3 = _493;
    float4 _509 = r3;
    _509.y = mad(shader_in[3].xyz.z, r2.xyz.z, mad(shader_in[3].xyz.y, r2.xyz.y, shader_in[3].xyz.x * r2.xyz.x));
    r3 = _509;
    float4 _525 = r3;
    _525.z = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _525;
    float3 _534 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _546 = o3;
    _546.x = mad(_534.z, r2.xyz.z, mad(_534.y, r2.xyz.y, _534.x * r2.xyz.x));
    o3 = _546;
    float4 _561 = r0;
    _561.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _561;
    float4 _566 = r0;
    _566.w = rsqrt(r0.w);
    r0 = _566;
    float3 _572 = r0.www * r3.xyz;
    r2 = float4(_572.x, _572.y, _572.z, r2.w);
    float4 _589 = r3;
    _589.x = mad(shader_in[2].xyz.z, r1.xyz.z, mad(shader_in[2].xyz.y, r1.xyz.y, shader_in[2].xyz.x * r1.xyz.x));
    r3 = _589;
    float4 _605 = r3;
    _605.y = mad(shader_in[3].xyz.z, r1.xyz.z, mad(shader_in[3].xyz.y, r1.xyz.y, shader_in[3].xyz.x * r1.xyz.x));
    r3 = _605;
    float4 _621 = r3;
    _621.z = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r3 = _621;
    float3 _630 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _642 = o3;
    _642.z = mad(_630.z, r1.xyz.z, mad(_630.y, r1.xyz.y, _630.x * r1.xyz.x));
    o3 = _642;
    float4 _657 = r0;
    _657.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _657;
    float4 _662 = r0;
    _662.w = rsqrt(r0.w);
    r0 = _662;
    float3 _668 = r0.www * r3.xyz;
    r1 = float4(_668.x, _668.y, _668.z, r1.w);
    float3 _675 = r2.yzx * r1.zxy;
    r3 = float4(_675.x, _675.y, _675.z, r3.w);
    float3 _686 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_686.x, _686.y, _686.z, r3.w);
    float3 _696 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _699 = -r3.xyz;
    float3 _709 = o2;
    _709.y = mad(_696.z, _699.z, mad(_696.y, _699.y, _696.x * _699.x));
    o2 = _709;
    float3 _718 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _730 = o2;
    _730.x = mad(_718.z, r2.xyz.z, mad(_718.y, r2.xyz.y, _718.x * r2.xyz.x));
    o2 = _730;
    float4 _734 = o6;
    _734.x = r2.y;
    o6 = _734;
    float3 _743 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _755 = o2;
    _755.z = mad(_743.z, r1.xyz.z, mad(_743.y, r1.xyz.y, _743.x * r1.xyz.x));
    o2 = _755;
    float4 _759 = o6;
    _759.z = r1.y;
    o6 = _759;
    float3 _768 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _780 = o3;
    _780.y = mad(_768.z, r3.xyz.z, mad(_768.y, r3.xyz.y, _768.x * r3.xyz.x));
    o3 = _780;
    float4 _785 = o6;
    _785.y = -r3.y;
    o6 = _785;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _815 = r0;
    _815.w = r0.y * cb0_m[13].x;
    r0 = _815;
    float4 _822 = r1;
    _822.x = r0.w * asfloat(3216550459u);
    r1 = _822;
    float4 _827 = r1;
    _827.x = exp2(r1.x);
    r1 = _827;
    float4 _834 = r1;
    _834.x = (-r1.x) + asfloat(1065353216u);
    r1 = _834;
    float4 _841 = r0;
    _841.w = r1.x / r0.w;
    r0 = _841;
    float4 _853 = r1;
    _853.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _853;
    float4 _868 = r0;
    _868.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _868;
    float4 _873 = r0;
    _873.x = sqrt(r0.x);
    r0 = _873;
    float4 _881 = r0;
    _881.x = r0.x * cb0_m[13].y;
    r0 = _881;
    float4 _891 = r0;
    _891.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _891;
    float4 _903 = r0;
    _903.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _903;
    float4 _909 = r0;
    _909.x = exp2(-r0.x);
    r0 = _909;
    float4 _915 = r0;
    _915.x = min(r0.x, asfloat(1065353216u));
    r0 = _915;
    float4 _922 = o6;
    _922.w = (-r0.x) + asfloat(1065353216u);
    o6 = _922;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
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
