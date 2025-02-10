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
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float4 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
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
static float2 o1;
static float3 o2;
static float4 o3;
static float4 r0;
static float4 r1;

void vs_main()
{
    float4 _51 = r0;
    _51.w = asfloat(1065353216u);
    r0 = _51;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _61 = r1;
    _61.w = asfloat(1065353216u);
    r1 = _61;
    float4 _79 = r0;
    _79.x = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _79;
    float4 _97 = r0;
    _97.y = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
    r0 = _97;
    float4 _115 = r0;
    _115.z = mad(shader_in[7].w, r1.w, mad(shader_in[7].z, r1.z, mad(shader_in[7].y, r1.y, shader_in[7].x * r1.x)));
    r0 = _115;
    float4 _131 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _145 = o0;
    _145.x = mad(_131.w, r0.w, mad(_131.z, r0.z, mad(_131.y, r0.y, _131.x * r0.x)));
    o0 = _145;
    float4 _157 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _171 = o0;
    _171.y = mad(_157.w, r0.w, mad(_157.z, r0.z, mad(_157.y, r0.y, _157.x * r0.x)));
    o0 = _171;
    float4 _183 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _197 = o0;
    _197.z = mad(_183.w, r0.w, mad(_183.z, r0.z, mad(_183.y, r0.y, _183.x * r0.x)));
    o0 = _197;
    float4 _209 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _223 = o0;
    _223.w = mad(_209.w, r0.w, mad(_209.z, r0.z, mad(_209.y, r0.y, _209.x * r0.x)));
    o0 = _223;
    float2 _229 = float2(asint(shader_in[1].xy));
    r1 = float4(_229.x, _229.y, r1.z, r1.w);
    float2 _240 = r1.xy * float2(cb2_m[0].x, cb2_m[0].y);
    r1 = float4(_240.x, _240.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _270 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_270.x, _270.y, _270.z, r1.w);
    float3 _284 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_284.x, _284.y, _284.z, r0.w);
    float4 _294 = r0;
    _294.w = r1.y * cb0_m[13].x;
    r0 = _294;
    float4 _301 = r1;
    _301.w = r0.w * asfloat(3216550459u);
    r1 = _301;
    float4 _306 = r1;
    _306.w = exp2(r1.w);
    r1 = _306;
    float4 _313 = r1;
    _313.w = (-r1.w) + asfloat(1065353216u);
    r1 = _313;
    float4 _320 = r0;
    _320.w = r1.w / r0.w;
    r0 = _320;
    float4 _332 = r1;
    _332.w = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r1 = _332;
    float4 _347 = r1;
    _347.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _347;
    float4 _352 = r1;
    _352.x = sqrt(r1.x);
    r1 = _352;
    float4 _360 = r1;
    _360.x = r1.x * cb0_m[13].y;
    r1 = _360;
    float4 _370 = r0;
    _370.w = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _370;
    float4 _382 = r0;
    _382.w = (r0.w * r1.x) + (-cb0_m[13].w);
    r0 = _382;
    float4 _388 = r0;
    _388.w = exp2(-r0.w);
    r0 = _388;
    float4 _394 = r0;
    _394.w = min(r0.w, asfloat(1065353216u));
    r0 = _394;
    float4 _401 = o3;
    _401.w = (-r0.w) + asfloat(1065353216u);
    o3 = _401;
    float4 _416 = r0;
    _416.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _416;
    float4 _421 = r0;
    _421.w = rsqrt(r0.w);
    r0 = _421;
    float3 _427 = r0.www * r0.xyz;
    o3 = float4(_427.x, _427.y, _427.z, o3.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _436 = asfloat(v1);
    shader_in[1] = float4(_436.x, _436.y, shader_in[1].z, shader_in[1].w);
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
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
