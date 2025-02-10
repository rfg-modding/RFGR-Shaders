cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int4 v0;
static int2 v1;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float4 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float2 _46 = float2(asint(shader_in[1].xy));
    r0 = float4(_46.x, _46.y, r0.z, r0.w);
    float2 _60 = (r0.xy * asfloat(uint2(964689920u, 964689920u))) + asfloat(uint2(3204448256u, 3204448256u));
    r0 = float4(r0.x, r0.y, _60.x, _60.y);
    float2 _66 = r0.xy * asfloat(uint2(964689920u, 964689920u));
    r0 = float4(_66.x, _66.y, r0.z, r0.w);
    o1 = float4(r0.xy.x, r0.xy.y, o1.z, o1.w);
    float2 _78 = r0.zw * asfloat(uint2(1063675494u, 1063675494u));
    r0 = float4(_78.x, _78.y, r0.z, r0.w);
    float3 _98 = r0.xxx * float3(cb0_m[8].x, cb0_m[8].y, cb0_m[8].z);
    r0 = float4(_98.x, r0.y, _98.y, _98.z);
    r1 = float4(asint(shader_in[0]));
    float3 _111 = r1.xyz * asfloat(uint3(964689920u, 964689920u, 964689920u));
    r1 = float4(_111.x, _111.y, _111.z, r1.w);
    float4 _123 = r1;
    _123.w = (r1.w * asfloat(964689920u)) + cb0_m[12].x;
    r1 = _123;
    float2 _131 = r1.ww * asfloat(uint2(1095307216u, 1100401628u));
    r2 = float4(_131.x, _131.y, r2.z, r2.w);
    float2 _138 = sin(r2.xyxx.xy);
    r2 = float4(_138.x, _138.y, r2.z, r2.w);
    float4 _141 = r1;
    float2 _144 = sin(_141.xyxx.xy);
    r1 = float4(_144.x, _144.y, r1.z, r1.w);
    float2 _148 = cos(_141.xyxx.xy);
    r3 = float4(_148.x, _148.y, r3.z, r3.w);
    float4 _154 = o1;
    _154.z = r1.z;
    o1 = _154;
    float4 _162 = r4;
    _162.x = r1.y * r3.x;
    r4 = _162;
    float4 _167 = r4;
    _167.y = -r1.x;
    r4 = _167;
    float4 _174 = r4;
    _174.z = r3.x * r3.y;
    r4 = _174;
    float3 _185 = (r4.xyz * cb2_m[0].x.xxx) + r0.xzw;
    r0 = float4(_185.x, r0.y, _185.y, _185.z);
    float3 _202 = (r0.yyy * float3(cb0_m[9].x, cb0_m[9].y, cb0_m[9].z)) + r0.xzw;
    r0 = float4(_202.x, _202.y, _202.z, r0.w);
    float4 _207 = r0;
    _207.w = asfloat(1065353216u);
    r0 = _207;
    float4 _218 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _232 = r1;
    _232.x = mad(_218.w, r0.w, mad(_218.z, r0.z, mad(_218.y, r0.y, _218.x * r0.x)));
    r1 = _232;
    float4 _243 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _257 = r1;
    _257.y = mad(_243.w, r0.w, mad(_243.z, r0.z, mad(_243.y, r0.y, _243.x * r0.x)));
    r1 = _257;
    float4 _269 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _283 = r1;
    _283.z = mad(_269.w, r0.w, mad(_269.z, r0.z, mad(_269.y, r0.y, _269.x * r0.x)));
    r1 = _283;
    float4 _286 = r1;
    _286.w = asfloat(1065353216u);
    r1 = _286;
    float4 _297 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _311 = r0;
    _311.x = mad(_297.w, r1.w, mad(_297.z, r1.z, mad(_297.y, r1.y, _297.x * r1.x)));
    r0 = _311;
    float4 _322 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _336 = r0;
    _336.y = mad(_322.w, r1.w, mad(_322.z, r1.z, mad(_322.y, r1.y, _322.x * r1.x)));
    r0 = _336;
    float4 _348 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _362 = r0;
    _362.z = mad(_348.w, r1.w, mad(_348.z, r1.z, mad(_348.y, r1.y, _348.x * r1.x)));
    r0 = _362;
    o0 = r0.xyzz;
    float4 _375 = r0;
    _375.x = asfloat((asfloat(1056964608u) >= r2.y) ? 4294967295u : 0u);
    r0 = _375;
    float4 _382 = r0;
    _382.x = asfloat(asuint(r0.x) & 1065353216u);
    r0 = _382;
    float4 _389 = r0;
    _389.x = r0.x * r2.x;
    r0 = _389;
    float4 _399 = o1;
    _399.w = ((-r0.x) * asfloat(1045220557u)) + asfloat(1065353216u);
    o1 = _399;
}

void vert_main()
{
    shader_in[0] = asfloat(v0);
    float2 _406 = asfloat(v1);
    shader_in[1] = float4(_406.x, _406.y, shader_in[1].z, shader_in[1].w);
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
