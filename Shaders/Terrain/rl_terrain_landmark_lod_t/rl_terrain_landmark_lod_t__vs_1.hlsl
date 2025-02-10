cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int4 v0;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[1];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(asint(shader_in[0]));
    r1 = r0 * asfloat(uint4(1065353216u, 1048576000u, 1031798784u, 1015021568u));
    r1 = frac(r1);
    float3 _59 = (r0.xyz * asfloat(uint3(1065353216u, 1048576000u, 1031798784u))) + (-r1.xyz);
    r0 = float4(_59.x, _59.y, _59.z, r0.w);
    float3 _70 = (r1.yzw * asfloat(uint3(1149239296u, 1149239296u, 1149239296u))) + r0.xyz;
    r0 = float4(_70.x, _70.y, _70.z, r0.w);
    float3 _78 = r0.xyz + asfloat(uint3(3296722944u, 3296722944u, 3296722944u));
    r1 = float4(_78.x, _78.y, _78.z, r1.w);
    float3 _91 = (r1.xyz * asfloat(uint3(1056931840u, 1056931840u, 1056931840u))) + asfloat(uint3(1132429312u, 0u, 1132429312u));
    r1 = float4(_91.x, _91.y, _91.z, r1.w);
    float3 _96 = asfloat(uint3(1140834304u, 1140834304u, 1140834304u));
    bool3 _101 = bool3(_96.x < r0.xyz.x, _96.y < r0.xyz.y, _96.z < r0.xyz.z);
    float3 _107 = asfloat(uint3(_101.x ? uint3(4294967295u, 4294967295u, 4294967295u).x : uint3(0u, 0u, 0u).x, _101.y ? uint3(4294967295u, 4294967295u, 4294967295u).y : uint3(0u, 0u, 0u).y, _101.z ? uint3(4294967295u, 4294967295u, 4294967295u).z : uint3(0u, 0u, 0u).z));
    r2 = float4(_107.x, _107.y, _107.z, r2.w);
    float3 _117 = (r0.xyz * asfloat(uint3(1056964608u, 1056964608u, 1056964608u))) + asfloat(uint3(1132429312u, 0u, 1132429312u));
    r0 = float4(_117.x, _117.y, _117.z, r0.w);
    uint3 _122 = asuint(r2.xyz);
    bool3 _127 = bool3(_122.x != uint3(0u, 0u, 0u).x, _122.y != uint3(0u, 0u, 0u).y, _122.z != uint3(0u, 0u, 0u).z);
    float3 _128 = float3(_127.x ? r1.xyz.x : r0.xyz.x, _127.y ? r1.xyz.y : r0.xyz.y, _127.z ? r1.xyz.z : r0.xyz.z);
    r0 = float4(_128.x, _128.y, _128.z, r0.w);
    float4 _132 = r0;
    _132.w = asfloat(1065353216u);
    r0 = _132;
    float4 _147 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _161 = r1;
    _161.x = mad(_147.w, r0.w, mad(_147.z, r0.z, mad(_147.y, r0.y, _147.x * r0.x)));
    r1 = _161;
    float4 _173 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _187 = r1;
    _187.y = mad(_173.w, r0.w, mad(_173.z, r0.z, mad(_173.y, r0.y, _173.x * r0.x)));
    r1 = _187;
    float4 _199 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _213 = r1;
    _213.z = mad(_199.w, r0.w, mad(_199.z, r0.z, mad(_199.y, r0.y, _199.x * r0.x)));
    r1 = _213;
    float4 _216 = r1;
    _216.w = asfloat(1065353216u);
    r1 = _216;
    float4 _227 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _241 = o0;
    _241.x = mad(_227.w, r1.w, mad(_227.z, r1.z, mad(_227.y, r1.y, _227.x * r1.x)));
    o0 = _241;
    float4 _252 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _266 = o0;
    _266.y = mad(_252.w, r1.w, mad(_252.z, r1.z, mad(_252.y, r1.y, _252.x * r1.x)));
    o0 = _266;
    float4 _277 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _291 = o0;
    _291.z = mad(_277.w, r1.w, mad(_277.z, r1.z, mad(_277.y, r1.y, _277.x * r1.x)));
    o0 = _291;
    float4 _303 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _317 = o0;
    _317.w = mad(_303.w, r1.w, mad(_303.z, r1.z, mad(_303.y, r1.y, _303.x * r1.x)));
    o0 = _317;
}

void vert_main()
{
    shader_in[0] = asfloat(v0);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
