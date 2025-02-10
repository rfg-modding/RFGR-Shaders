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
    float4 cb6_m[5] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
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
static float4 r0;
static float4 r1;

void vs_main()
{
    float2 _50 = float2(asint(shader_in[0].xy));
    r0 = float4(_50.x, _50.y, r0.z, r0.w);
    float4 _59 = r0;
    _59.y = r0.y + asfloat(1191182336u);
    r0 = _59;
    float4 _67 = r1;
    _67.y = r0.x * asfloat(1015021568u);
    r1 = _67;
    float4 _74 = r0;
    _74.x = r0.y * asfloat(998244352u);
    r0 = _74;
    float4 _79 = r1;
    _79.z = trunc(r0.x);
    r1 = _79;
    float4 _90 = r1;
    _90.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _90;
    float4 _94 = r1;
    _94.w = asfloat(1065353216u);
    r1 = _94;
    float4 _111 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _125 = r0;
    _125.y = mad(_111.w, r1.w, mad(_111.z, r1.z, mad(_111.y, r1.y, _111.x * r1.x)));
    r0 = _125;
    float4 _136 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _150 = r0;
    _150.x = mad(_136.w, r1.w, mad(_136.z, r1.z, mad(_136.y, r1.y, _136.x * r1.x)));
    r0 = _150;
    float4 _162 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _176 = r0;
    _176.z = mad(_162.w, r1.w, mad(_162.z, r1.z, mad(_162.y, r1.y, _162.x * r1.x)));
    r0 = _176;
    float4 _179 = r0;
    _179.w = asfloat(1065353216u);
    r0 = _179;
    float4 _190 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _204 = o0;
    _204.x = mad(_190.w, r0.w, mad(_190.z, r0.z, mad(_190.y, r0.y, _190.x * r0.x)));
    o0 = _204;
    float4 _215 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _229 = o0;
    _229.y = mad(_215.w, r0.w, mad(_215.z, r0.z, mad(_215.y, r0.y, _215.x * r0.x)));
    o0 = _229;
    float4 _240 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _254 = o0;
    _254.z = mad(_240.w, r0.w, mad(_240.z, r0.z, mad(_240.y, r0.y, _240.x * r0.x)));
    o0 = _254;
    float4 _266 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _280 = o0;
    _280.w = mad(_266.w, r0.w, mad(_266.z, r0.z, mad(_266.y, r0.y, _266.x * r0.x)));
    o0 = _280;
    float2 _291 = r0.xz + float2(cb0_m[14].x, cb0_m[14].z);
    r0 = float4(_291.x, _291.y, r0.z, r0.w);
    float2 _304 = (r0.xy * asfloat(uint2(989872160u, 989872160u))) + asfloat(uint2(1090519040u, 1090519040u));
    r0 = float4(_304.x, _304.y, r0.z, r0.w);
    float2 _317 = r0.xy + (-float2(cb6_m[4].x, cb6_m[4].z));
    r0 = float4(_317.x, _317.y, r0.z, r0.w);
    o1 = (r0.xy * asfloat(uint2(1065320448u, 1065320448u))) + asfloat(uint2(981467136u, 981467136u));
    o2 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _349 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_349.x, _349.y, _349.z, r0.w);
    float3 _359 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _371 = r1;
    _371.x = mad(_359.z, r0.xyz.z, mad(_359.y, r0.xyz.y, _359.x * r0.xyz.x));
    r1 = _371;
    float3 _380 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _392 = r1;
    _392.y = mad(_380.z, r0.xyz.z, mad(_380.y, r0.xyz.y, _380.x * r0.xyz.x));
    r1 = _392;
    float3 _401 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _413 = r1;
    _413.z = mad(_401.z, r0.xyz.z, mad(_401.y, r0.xyz.y, _401.x * r0.xyz.x));
    r1 = _413;
    float4 _428 = r0;
    _428.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _428;
    float4 _433 = r0;
    _433.x = rsqrt(r0.x);
    r0 = _433;
    o3 = r0.xxx * r1.xyz;
}

void vert_main()
{
    float2 _442 = asfloat(v0);
    shader_in[0] = float4(_442.x, _442.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
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
