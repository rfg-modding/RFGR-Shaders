cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[7];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

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
    _82.x = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _82;
    float4 _100 = r0;
    _100.y = mad(shader_in[5].w, r1.w, mad(shader_in[5].z, r1.z, mad(shader_in[5].y, r1.y, shader_in[5].x * r1.x)));
    r0 = _100;
    float4 _118 = r0;
    _118.z = mad(shader_in[6].w, r1.w, mad(shader_in[6].z, r1.z, mad(shader_in[6].y, r1.y, shader_in[6].x * r1.x)));
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
    float3 _239 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_239.x, _239.y, _239.z, r0.w);
    float2 _246 = float2(asint(shader_in[1].xy));
    r1 = float4(_246.x, _246.y, r1.z, r1.w);
    float2 _257 = r1.xy * float2(cb2_m[2].x, cb2_m[2].y);
    r1 = float4(_257.x, _257.y, r1.z, r1.w);
    o1 = r1.xy * asfloat(uint2(981467136u, 981467136u));
    float3 _278 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float4 _296 = r2;
    _296.x = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _296;
    float4 _312 = r2;
    _312.y = mad(shader_in[5].xyz.z, r1.xyz.z, mad(shader_in[5].xyz.y, r1.xyz.y, shader_in[5].xyz.x * r1.xyz.x));
    r2 = _312;
    float4 _328 = r2;
    _328.z = mad(shader_in[6].xyz.z, r1.xyz.z, mad(shader_in[6].xyz.y, r1.xyz.y, shader_in[6].xyz.x * r1.xyz.x));
    r2 = _328;
    float4 _343 = r0;
    _343.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _343;
    float4 _348 = r0;
    _348.w = rsqrt(r0.w);
    r0 = _348;
    float3 _354 = r0.www * r2.xyz;
    r1 = float4(_354.x, _354.y, _354.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float4 _381 = r3;
    _381.x = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _381;
    float4 _397 = r3;
    _397.y = mad(shader_in[5].xyz.z, r2.xyz.z, mad(shader_in[5].xyz.y, r2.xyz.y, shader_in[5].xyz.x * r2.xyz.x));
    r3 = _397;
    float4 _413 = r3;
    _413.z = mad(shader_in[6].xyz.z, r2.xyz.z, mad(shader_in[6].xyz.y, r2.xyz.y, shader_in[6].xyz.x * r2.xyz.x));
    r3 = _413;
    float4 _428 = r0;
    _428.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _428;
    float4 _433 = r0;
    _433.w = rsqrt(r0.w);
    r0 = _433;
    float3 _439 = r0.www * r3.xyz;
    r2 = float4(_439.x, _439.y, _439.z, r2.w);
    float3 _446 = r1.zxy * r2.yzx;
    r3 = float4(_446.x, _446.y, _446.z, r3.w);
    float3 _457 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_457.x, _457.y, _457.z, r3.w);
    float3 _464 = r2.www * r3.xyz;
    r3 = float4(_464.x, _464.y, _464.z, r3.w);
    float3 _474 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _486 = o2;
    _486.y = mad(_474.z, r3.xyz.z, mad(_474.y, r3.xyz.y, _474.x * r3.xyz.x));
    o2 = _486;
    float3 _495 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _507 = o2;
    _507.z = mad(_495.z, r1.xyz.z, mad(_495.y, r1.xyz.y, _495.x * r1.xyz.x));
    o2 = _507;
    float3 _516 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _528 = o2;
    _528.x = mad(_516.z, r2.xyz.z, mad(_516.y, r2.xyz.y, _516.x * r2.xyz.x));
    o2 = _528;
    float4 _543 = r0;
    _543.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _543;
    float4 _548 = r0;
    _548.w = rsqrt(r0.w);
    r0 = _548;
    float3 _554 = r0.www * r0.xyz;
    r0 = float4(_554.x, _554.y, _554.z, r0.w);
    float3 _570 = o3;
    _570.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _570;
    float3 _585 = o3;
    _585.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _585;
    float3 _600 = o3;
    _600.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _600;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _608 = asfloat(v1);
    shader_in[1] = float4(_608.x, _608.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
