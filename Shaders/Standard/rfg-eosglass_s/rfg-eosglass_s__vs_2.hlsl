cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float4 v3;
static int2 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
static float4 o0;
static float3 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _51 = r0;
    _51.w = asfloat(1065353216u);
    r0 = _51;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _61 = r1;
    _61.w = asfloat(1065353216u);
    r1 = _61;
    float4 _76 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _90 = r0;
    _90.x = mad(_76.w, r1.w, mad(_76.z, r1.z, mad(_76.y, r1.y, _76.x * r1.x)));
    r0 = _90;
    float4 _102 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _116 = r0;
    _116.y = mad(_102.w, r1.w, mad(_102.z, r1.z, mad(_102.y, r1.y, _102.x * r1.x)));
    r0 = _116;
    float4 _128 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _142 = r0;
    _142.z = mad(_128.w, r1.w, mad(_128.z, r1.z, mad(_128.y, r1.y, _128.x * r1.x)));
    r0 = _142;
    float4 _153 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _167 = o0;
    _167.x = mad(_153.w, r0.w, mad(_153.z, r0.z, mad(_153.y, r0.y, _153.x * r0.x)));
    o0 = _167;
    float4 _178 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _192 = o0;
    _192.y = mad(_178.w, r0.w, mad(_178.z, r0.z, mad(_178.y, r0.y, _178.x * r0.x)));
    o0 = _192;
    float4 _203 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _217 = o0;
    _217.z = mad(_203.w, r0.w, mad(_203.z, r0.z, mad(_203.y, r0.y, _203.x * r0.x)));
    o0 = _217;
    float4 _229 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _243 = o0;
    _243.w = mad(_229.w, r0.w, mad(_229.z, r0.z, mad(_229.y, r0.y, _229.x * r0.x)));
    o0 = _243;
    float3 _257 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_257.x, _257.y, _257.z, r0.w);
    float4 _273 = r0;
    _273.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _273;
    float4 _278 = r0;
    _278.w = rsqrt(r0.w);
    r0 = _278;
    float3 _284 = r0.www * r0.xyz;
    r0 = float4(_284.x, _284.y, _284.z, r0.w);
    float3 _298 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_298.x, _298.y, _298.z, r1.w);
    float3 _308 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _321 = r2;
    _321.x = mad(_308.z, r1.xyz.z, mad(_308.y, r1.xyz.y, _308.x * r1.xyz.x));
    r2 = _321;
    float3 _330 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _342 = r2;
    _342.y = mad(_330.z, r1.xyz.z, mad(_330.y, r1.xyz.y, _330.x * r1.xyz.x));
    r2 = _342;
    float3 _351 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _363 = r2;
    _363.z = mad(_351.z, r1.xyz.z, mad(_351.y, r1.xyz.y, _351.x * r1.xyz.x));
    r2 = _363;
    float4 _378 = r0;
    _378.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _378;
    float4 _383 = r0;
    _383.w = rsqrt(r0.w);
    r0 = _383;
    float3 _389 = r0.www * r2.xyz;
    r1 = float4(_389.x, _389.y, _389.z, r1.w);
    r2 = (shader_in[3] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _408 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _421 = r3;
    _421.x = mad(_408.z, r2.xyz.z, mad(_408.y, r2.xyz.y, _408.x * r2.xyz.x));
    r3 = _421;
    float3 _430 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _442 = r3;
    _442.y = mad(_430.z, r2.xyz.z, mad(_430.y, r2.xyz.y, _430.x * r2.xyz.x));
    r3 = _442;
    float3 _451 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _463 = r3;
    _463.z = mad(_451.z, r2.xyz.z, mad(_451.y, r2.xyz.y, _451.x * r2.xyz.x));
    r3 = _463;
    float4 _478 = r0;
    _478.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _478;
    float4 _483 = r0;
    _483.w = rsqrt(r0.w);
    r0 = _483;
    float3 _489 = r0.www * r3.xyz;
    r2 = float4(_489.x, _489.y, _489.z, r2.w);
    float3 _496 = r1.zxy * r2.yzx;
    r3 = float4(_496.x, _496.y, _496.z, r3.w);
    float3 _507 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_507.x, _507.y, _507.z, r3.w);
    float3 _514 = r2.www * r3.xyz;
    r3 = float4(_514.x, _514.y, _514.z, r3.w);
    float3 _530 = o1;
    _530.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o1 = _530;
    float3 _539 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _551 = o2;
    _551.y = mad(_539.z, r3.xyz.z, mad(_539.y, r3.xyz.y, _539.x * r3.xyz.x));
    o2 = _551;
    float3 _566 = o1;
    _566.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o1 = _566;
    float3 _575 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _587 = o2;
    _587.x = mad(_575.z, r2.xyz.z, mad(_575.y, r2.xyz.y, _575.x * r2.xyz.x));
    o2 = _587;
    float4 _602 = r0;
    _602.w = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r0 = _602;
    float3 _606 = o1;
    _606.z = r0.w;
    o1 = _606;
    float4 _613 = r0;
    _613.w = r0.w + r0.w;
    r0 = _613;
    float3 _623 = (r1.xyz * (-r0.www)) + r0.xyz;
    r0 = float4(_623.x, _623.y, _623.z, r0.w);
    float3 _633 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _645 = o2;
    _645.z = mad(_633.z, r1.xyz.z, mad(_633.y, r1.xyz.y, _633.x * r1.xyz.x));
    o2 = _645;
    o3 = r0.xyz * asfloat(uint3(1065353216u, 3212836864u, 3212836864u));
    float2 _657 = float2(asint(shader_in[1].xy));
    r0 = float4(_657.x, _657.y, r0.z, r0.w);
    float2 _666 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(_666.x, _666.y, o4.z, o4.w);
    float2 _674 = float2(asint(shader_in[4].xy));
    r0 = float4(_674.x, _674.y, r0.z, r0.w);
    float2 _680 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o4 = float4(o4.x, o4.y, _680.x, _680.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _689 = asfloat(v1);
    shader_in[1] = float4(_689.x, _689.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    float2 _700 = asfloat(v4);
    shader_in[4] = float4(_700.x, _700.y, shader_in[4].z, shader_in[4].w);
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
