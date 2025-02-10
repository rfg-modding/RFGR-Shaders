cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v3;
static float3 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float4 o1;
static float3 o2;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _47 = r0;
    _47.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _47;
    float3 _60 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_60.x, _60.y, _60.z, r0.w);
    float4 _65 = r0;
    _65.w = asfloat(1065353216u);
    r0 = _65;
    float4 _82 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _97 = r1;
    _97.x = mad(_82.w, r0.w, mad(_82.z, r0.z, mad(_82.y, r0.y, _82.x * r0.x)));
    r1 = _97;
    float4 _109 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _123 = r1;
    _123.y = mad(_109.w, r0.w, mad(_109.z, r0.z, mad(_109.y, r0.y, _109.x * r0.x)));
    r1 = _123;
    float4 _135 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _149 = r1;
    _149.z = mad(_135.w, r0.w, mad(_135.z, r0.z, mad(_135.y, r0.y, _135.x * r0.x)));
    r1 = _149;
    float4 _152 = r1;
    _152.w = asfloat(1065353216u);
    r1 = _152;
    float4 _163 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _177 = o0;
    _177.x = mad(_163.w, r1.w, mad(_163.z, r1.z, mad(_163.y, r1.y, _163.x * r1.x)));
    o0 = _177;
    float4 _188 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _202 = o0;
    _202.y = mad(_188.w, r1.w, mad(_188.z, r1.z, mad(_188.y, r1.y, _188.x * r1.x)));
    o0 = _202;
    float4 _213 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _227 = o0;
    _227.z = mad(_213.w, r1.w, mad(_213.z, r1.z, mad(_213.y, r1.y, _213.x * r1.x)));
    o0 = _227;
    float4 _238 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _252 = o0;
    _252.w = mad(_238.w, r1.w, mad(_238.z, r1.z, mad(_238.y, r1.y, _238.x * r1.x)));
    o0 = _252;
    float3 _266 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_266.x, _266.y, _266.z, r0.w);
    o1 = float4(cb6_m[3].x, cb6_m[3].y, cb6_m[3].z, cb6_m[3].w);
    float4 _286 = r0;
    _286.w = r0.y * cb0_m[13].x;
    r0 = _286;
    float4 _293 = r1;
    _293.x = r0.w * asfloat(3216550459u);
    r1 = _293;
    float4 _298 = r1;
    _298.x = exp2(r1.x);
    r1 = _298;
    float4 _305 = r1;
    _305.x = (-r1.x) + asfloat(1065353216u);
    r1 = _305;
    float4 _312 = r0;
    _312.w = r1.x / r0.w;
    r0 = _312;
    float4 _324 = r1;
    _324.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _324;
    float4 _339 = r0;
    _339.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _339;
    float4 _344 = r0;
    _344.x = sqrt(r0.x);
    r0 = _344;
    float4 _352 = r0;
    _352.x = r0.x * cb0_m[13].y;
    r0 = _352;
    float4 _362 = r0;
    _362.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _362;
    float4 _374 = r0;
    _374.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _374;
    float4 _380 = r0;
    _380.x = exp2(-r0.x);
    r0 = _380;
    float4 _386 = r0;
    _386.x = min(r0.x, asfloat(1065353216u));
    r0 = _386;
    float3 _393 = o2;
    _393.z = (-r0.x) + asfloat(1065353216u);
    o2 = _393;
    float2 _400 = float2(asint(shader_in[1].xy));
    r0 = float4(_400.x, _400.y, r0.z, r0.w);
    float2 _409 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(_409.x, _409.y, o2.z);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _418 = asfloat(v1);
    shader_in[1] = float4(_418.x, _418.y, shader_in[1].z, shader_in[1].w);
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
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
