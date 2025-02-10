cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static float3 v4;
static float4 v5;
static float4 v6;
static float4 v7;
static float4 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _54 = r0;
    _54.w = asfloat(1065353216u);
    r0 = _54;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _64 = r1;
    _64.w = asfloat(1065353216u);
    r1 = _64;
    float4 _82 = r0;
    _82.x = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _82;
    float4 _100 = r0;
    _100.y = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _100;
    float4 _118 = r0;
    _118.z = mad(shader_in[8].w, r1.w, mad(shader_in[8].z, r1.z, mad(shader_in[8].y, r1.y, shader_in[8].x * r1.x)));
    r0 = _118;
    float4 _133 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _147 = o0;
    _147.x = mad(_133.w, r0.w, mad(_133.z, r0.z, mad(_133.y, r0.y, _133.x * r0.x)));
    o0 = _147;
    float4 _159 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _173 = o0;
    _173.y = mad(_159.w, r0.w, mad(_159.z, r0.z, mad(_159.y, r0.y, _159.x * r0.x)));
    o0 = _173;
    float4 _185 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _199 = o0;
    _199.z = mad(_185.w, r0.w, mad(_185.z, r0.z, mad(_185.y, r0.y, _185.x * r0.x)));
    o0 = _199;
    float4 _211 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _225 = o0;
    _225.w = mad(_211.w, r0.w, mad(_211.z, r0.z, mad(_211.y, r0.y, _211.x * r0.x)));
    o0 = _225;
    float3 _239 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_239.x, _239.y, _239.z, r1.w);
    float4 _257 = r2;
    _257.x = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _257;
    float4 _273 = r2;
    _273.y = mad(shader_in[7].xyz.z, r1.xyz.z, mad(shader_in[7].xyz.y, r1.xyz.y, shader_in[7].xyz.x * r1.xyz.x));
    r2 = _273;
    float4 _289 = r2;
    _289.z = mad(shader_in[8].xyz.z, r1.xyz.z, mad(shader_in[8].xyz.y, r1.xyz.y, shader_in[8].xyz.x * r1.xyz.x));
    r2 = _289;
    float4 _304 = r0;
    _304.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _304;
    float4 _309 = r0;
    _309.w = rsqrt(r0.w);
    r0 = _309;
    float3 _315 = r0.www * r2.xyz;
    r1 = float4(_315.x, _315.y, _315.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _343 = r3;
    _343.x = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _343;
    float4 _359 = r3;
    _359.y = mad(shader_in[7].xyz.z, r2.xyz.z, mad(shader_in[7].xyz.y, r2.xyz.y, shader_in[7].xyz.x * r2.xyz.x));
    r3 = _359;
    float4 _375 = r3;
    _375.z = mad(shader_in[8].xyz.z, r2.xyz.z, mad(shader_in[8].xyz.y, r2.xyz.y, shader_in[8].xyz.x * r2.xyz.x));
    r3 = _375;
    float4 _390 = r0;
    _390.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _390;
    float4 _395 = r0;
    _395.w = rsqrt(r0.w);
    r0 = _395;
    float3 _401 = r0.www * r3.xyz;
    r2 = float4(_401.x, _401.y, _401.z, r2.w);
    float3 _408 = r1.zxy * r2.yzx;
    r3 = float4(_408.x, _408.y, _408.z, r3.w);
    float3 _419 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_419.x, _419.y, _419.z, r3.w);
    float3 _426 = r2.www * r3.xyz;
    r3 = float4(_426.x, _426.y, _426.z, r3.w);
    float3 _436 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _448 = o1;
    _448.y = mad(_436.z, r3.xyz.z, mad(_436.y, r3.xyz.y, _436.x * r3.xyz.x));
    o1 = _448;
    float3 _457 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _469 = o1;
    _469.z = mad(_457.z, r1.xyz.z, mad(_457.y, r1.xyz.y, _457.x * r1.xyz.x));
    o1 = _469;
    float3 _478 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _490 = o1;
    _490.x = mad(_478.z, r2.xyz.z, mad(_478.y, r2.xyz.y, _478.x * r2.xyz.x));
    o1 = _490;
    float3 _504 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_504.x, _504.y, _504.z, r4.w);
    float3 _519 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_519.x, _519.y, _519.z, r0.w);
    float4 _535 = r0;
    _535.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _535;
    float4 _540 = r0;
    _540.w = rsqrt(r0.w);
    r0 = _540;
    float3 _546 = r0.www * r4.xyz;
    r4 = float4(_546.x, _546.y, _546.z, r4.w);
    float3 _562 = o2;
    _562.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _562;
    float4 _566 = o3;
    _566.x = r2.y;
    o3 = _566;
    float3 _581 = o2;
    _581.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _581;
    float4 _585 = o3;
    _585.z = r1.y;
    o3 = _585;
    float3 _600 = o2;
    _600.y = mad(r4.xyz.z, r3.xyz.z, mad(r4.xyz.y, r3.xyz.y, r4.xyz.x * r3.xyz.x));
    o2 = _600;
    float4 _604 = o3;
    _604.y = r3.y;
    o3 = _604;
    float4 _613 = r0;
    _613.w = r0.y * cb0_m[13].x;
    r0 = _613;
    float4 _620 = r1;
    _620.x = r0.w * asfloat(3216550459u);
    r1 = _620;
    float4 _625 = r1;
    _625.x = exp2(r1.x);
    r1 = _625;
    float4 _632 = r1;
    _632.x = (-r1.x) + asfloat(1065353216u);
    r1 = _632;
    float4 _639 = r0;
    _639.w = r1.x / r0.w;
    r0 = _639;
    float4 _651 = r1;
    _651.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _651;
    float4 _666 = r0;
    _666.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _666;
    float4 _671 = r0;
    _671.x = sqrt(r0.x);
    r0 = _671;
    float4 _679 = r0;
    _679.x = r0.x * cb0_m[13].y;
    r0 = _679;
    float4 _689 = r0;
    _689.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _689;
    float4 _701 = r0;
    _701.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _701;
    float4 _707 = r0;
    _707.x = exp2(-r0.x);
    r0 = _707;
    float4 _713 = r0;
    _713.x = min(r0.x, asfloat(1065353216u));
    r0 = _713;
    float4 _720 = o3;
    _720.w = (-r0.x) + asfloat(1065353216u);
    o3 = _720;
    float2 _727 = float2(asint(shader_in[2].xy));
    r0 = float4(_727.x, _727.y, r0.z, r0.w);
    float2 _738 = r0.xy * float2(cb2_m[2].y, cb2_m[2].z);
    r0 = float4(_738.x, _738.y, r0.z, r0.w);
    float2 _747 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _747.x, _747.y);
    float2 _754 = float2(asint(shader_in[1].xy));
    r0 = float4(_754.x, _754.y, r0.z, r0.w);
    float2 _760 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_760.x, _760.y, o4.z, o4.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _769 = asfloat(v1);
    shader_in[1] = float4(_769.x, _769.y, shader_in[1].z, shader_in[1].w);
    float2 _774 = asfloat(v2);
    shader_in[2] = float4(_774.x, _774.y, shader_in[2].z, shader_in[2].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
    shader_in[8] = v8;
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
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
