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
    float4 cb2_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float4 v2;
static float3 v3;
static float4 v4;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[8];
static float4 o0;
static float4 o1;
static float4 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _53 = r0;
    _53.w = asfloat(1065353216u);
    r0 = _53;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _63 = r1;
    _63.w = asfloat(1065353216u);
    r1 = _63;
    float4 _81 = r0;
    _81.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _81;
    float4 _99 = r0;
    _99.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _99;
    float4 _117 = r0;
    _117.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _117;
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
    float3 _239 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_239.x, _239.y, _239.z, r1.w);
    float3 _253 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_253.x, _253.y, _253.z, r0.w);
    float4 _269 = r0;
    _269.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _269;
    float4 _274 = r0;
    _274.w = rsqrt(r0.w);
    r0 = _274;
    float3 _280 = r0.www * r1.xyz;
    r1 = float4(_280.x, _280.y, _280.z, r1.w);
    float3 _294 = (shader_in[3].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_294.x, _294.y, _294.z, r2.w);
    float4 _313 = r3;
    _313.x = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _313;
    float4 _329 = r3;
    _329.y = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _329;
    float4 _345 = r3;
    _345.z = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _345;
    float4 _360 = r0;
    _360.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _360;
    float4 _365 = r0;
    _365.w = rsqrt(r0.w);
    r0 = _365;
    float3 _371 = r0.www * r3.xyz;
    r2 = float4(_371.x, _371.y, _371.z, r2.w);
    float4 _387 = r0;
    _387.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _387;
    float4 _396 = r1;
    _396.x = abs(r0.w) * abs(r0.w);
    r1 = _396;
    float4 _408 = r1;
    _408.y = asfloat((asfloat(1056964608u) < cb2_m[3].y) ? 4294967295u : 0u);
    r1 = _408;
    float4 _417 = r1;
    _417.y = (asuint(r1.y) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r1 = _417;
    float4 _428 = r0;
    _428.w = (abs(r0.w) * r1.x) + r1.y;
    r0 = _428;
    float4 _434 = o1;
    _434.z = min(r0.w, asfloat(1065353216u));
    o1 = _434;
    float3 _443 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _451 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _461 = r0;
    _461.w = mad(_443.z, _451.z, mad(_443.y, _451.y, _443.x * _451.x));
    r0 = _461;
    float4 _466 = r0;
    _466.w = rsqrt(r0.w);
    r0 = _466;
    float3 _478 = r0.www * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_478.x, _478.y, _478.z, r1.w);
    float4 _494 = r0;
    _494.w = mad(r2.xyz.z, r1.xyz.z, mad(r2.xyz.y, r1.xyz.y, r2.xyz.x * r1.xyz.x));
    r0 = _494;
    float4 _502 = o1;
    _502.w = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    o1 = _502;
    float4 _508 = o2;
    _508.w = max(r0.w, asfloat(0u));
    o2 = _508;
    float4 _523 = r0;
    _523.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _523;
    float4 _528 = r0;
    _528.x = sqrt(r0.x);
    r0 = _528;
    float2 _546 = clamp((r0.xx * shader_in[7].zx) + shader_in[7].yw, 0.0f.xx, 1.0f.xx);
    o1 = float4(_546.x, _546.y, o1.z, o1.w);
    float4 _556 = r0;
    _556.x = r0.x * cb0_m[13].y;
    r0 = _556;
    float3 _569 = shader_in[2].zyx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    o2 = float4(_569.x, _569.y, _569.z, o2.w);
    float4 _578 = r0;
    _578.z = r0.y * cb0_m[13].x;
    r0 = _578;
    float4 _588 = r0;
    _588.y = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r0 = _588;
    float4 _595 = r0;
    _595.w = r0.z * asfloat(3216550459u);
    r0 = _595;
    float4 _600 = r0;
    _600.w = exp2(r0.w);
    r0 = _600;
    float4 _607 = r0;
    _607.w = (-r0.w) + asfloat(1065353216u);
    r0 = _607;
    float4 _614 = r0;
    _614.z = r0.w / r0.z;
    r0 = _614;
    float4 _624 = r0;
    _624.y = (asuint(r0.y) != 0u) ? r0.z : asfloat(1065353216u);
    r0 = _624;
    float4 _636 = r0;
    _636.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _636;
    float4 _642 = r0;
    _642.x = exp2(-r0.x);
    r0 = _642;
    float4 _648 = r0;
    _648.x = min(r0.x, asfloat(1065353216u));
    r0 = _648;
    float3 _655 = o3;
    _655.z = (-r0.x) + asfloat(1065353216u);
    o3 = _655;
    float2 _661 = float2(asint(shader_in[1].xy));
    r0 = float4(_661.x, _661.y, r0.z, r0.w);
    float2 _670 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o3 = float3(_670.x, _670.y, o3.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _679 = asfloat(v1);
    shader_in[1] = float4(_679.x, _679.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = v7;
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
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
