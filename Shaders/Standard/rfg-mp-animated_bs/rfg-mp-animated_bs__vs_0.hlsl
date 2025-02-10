cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[4] : packoffset(c0);
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
static float4 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _39 = r0;
    _39.w = asfloat(1065353216u);
    r0 = _39;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _50 = r1;
    _50.w = asfloat(1065353216u);
    r1 = _50;
    float4 _68 = r0;
    _68.x = mad(shader_in[2].w, r1.w, mad(shader_in[2].z, r1.z, mad(shader_in[2].y, r1.y, shader_in[2].x * r1.x)));
    r0 = _68;
    float4 _86 = r0;
    _86.y = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _86;
    float4 _104 = r0;
    _104.z = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _104;
    float4 _121 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _135 = o0;
    _135.x = mad(_121.w, r0.w, mad(_121.z, r0.z, mad(_121.y, r0.y, _121.x * r0.x)));
    o0 = _135;
    float4 _147 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _161 = o0;
    _161.y = mad(_147.w, r0.w, mad(_147.z, r0.z, mad(_147.y, r0.y, _147.x * r0.x)));
    o0 = _161;
    float4 _172 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _186 = o0;
    _186.z = mad(_172.w, r0.w, mad(_172.z, r0.z, mad(_172.y, r0.y, _172.x * r0.x)));
    o0 = _186;
    float4 _197 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _211 = o0;
    _211.w = mad(_197.w, r0.w, mad(_197.z, r0.z, mad(_197.y, r0.y, _197.x * r0.x)));
    o0 = _211;
    float3 _225 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_225.x, _225.y, _225.z, r1.w);
    float3 _239 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_239.x, _239.y, _239.z, r0.w);
    float4 _249 = r0;
    _249.w = r1.y * cb0_m[13].x;
    r0 = _249;
    float4 _256 = r1;
    _256.w = r0.w * asfloat(3216550459u);
    r1 = _256;
    float4 _261 = r1;
    _261.w = exp2(r1.w);
    r1 = _261;
    float4 _268 = r1;
    _268.w = (-r1.w) + asfloat(1065353216u);
    r1 = _268;
    float4 _275 = r0;
    _275.w = r1.w / r0.w;
    r0 = _275;
    float4 _287 = r1;
    _287.w = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r1 = _287;
    float4 _302 = r1;
    _302.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _302;
    float4 _307 = r1;
    _307.x = sqrt(r1.x);
    r1 = _307;
    float4 _315 = r1;
    _315.x = r1.x * cb0_m[13].y;
    r1 = _315;
    float4 _325 = r0;
    _325.w = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _325;
    float4 _337 = r0;
    _337.w = (r0.w * r1.x) + (-cb0_m[13].w);
    r0 = _337;
    float4 _343 = r0;
    _343.w = exp2(-r0.w);
    r0 = _343;
    float4 _349 = r0;
    _349.w = min(r0.w, asfloat(1065353216u));
    r0 = _349;
    float4 _356 = o1;
    _356.w = (-r0.w) + asfloat(1065353216u);
    o1 = _356;
    float4 _371 = r0;
    _371.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _371;
    float4 _376 = r0;
    _376.w = rsqrt(r0.w);
    r0 = _376;
    float3 _382 = r0.www * r0.xyz;
    r0 = float4(_382.x, _382.y, _382.z, r0.w);
    float3 _390 = r0.xyz * asfloat(uint3(0u, 1065353216u, 0u));
    r1 = float4(_390.x, _390.y, _390.z, r1.w);
    float3 _401 = (r0.yzx * asfloat(uint3(0u, 0u, 1065353216u))) + (-r1.xyz);
    r1 = float4(_401.x, _401.y, _401.z, r1.w);
    float4 _415 = r0;
    _415.w = mad(r1.yz.y, r1.yz.y, r1.yz.x * r1.yz.x);
    r0 = _415;
    float4 _420 = r0;
    _420.w = rsqrt(r0.w);
    r0 = _420;
    float3 _426 = r0.www * r1.xyz;
    r1 = float4(_426.x, _426.y, _426.z, r1.w);
    float3 _433 = r0.yzx * r1.xyz;
    r2 = float4(_433.x, _433.y, _433.z, r2.w);
    float3 _445 = (r1.zxy * r0.zxy) + (-r2.xyz);
    r1 = float4(_445.x, _445.y, _445.z, r1.w);
    float4 _461 = r0;
    _461.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _461;
    float4 _466 = r0;
    _466.w = rsqrt(r0.w);
    r0 = _466;
    float3 _472 = r0.www * r1.xyz;
    r1 = float4(_472.x, _472.y, _472.z, r1.w);
    float3 _485 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_485.x, _485.y, _485.z, r2.w);
    float4 _503 = r3;
    _503.x = mad(shader_in[2].xyz.z, r2.xyz.z, mad(shader_in[2].xyz.y, r2.xyz.y, shader_in[2].xyz.x * r2.xyz.x));
    r3 = _503;
    float4 _519 = r3;
    _519.y = mad(shader_in[3].xyz.z, r2.xyz.z, mad(shader_in[3].xyz.y, r2.xyz.y, shader_in[3].xyz.x * r2.xyz.x));
    r3 = _519;
    float4 _535 = r3;
    _535.z = mad(shader_in[4].xyz.z, r2.xyz.z, mad(shader_in[4].xyz.y, r2.xyz.y, shader_in[4].xyz.x * r2.xyz.x));
    r3 = _535;
    float4 _550 = r0;
    _550.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _550;
    float4 _555 = r0;
    _555.w = rsqrt(r0.w);
    r0 = _555;
    float3 _561 = r0.www * r3.xyz;
    r2 = float4(_561.x, _561.y, _561.z, r2.w);
    float4 _577 = r0;
    _577.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _577;
    float4 _592 = r0;
    _592.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _592;
    float4 _598 = r0;
    _598.x = max(r0.x, asfloat(0u));
    r0 = _598;
    float4 _607 = r0;
    _607.y = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _607;
    float2 _617 = r0.xy * float2(cb2_m[2].z, cb2_m[2].w);
    r1 = float4(_617.x, _617.y, r1.z, r1.w);
    float4 _625 = r0;
    _625.x = (-r0.x) + asfloat(1065353216u);
    r0 = _625;
    float4 _630 = r0;
    _630.x = log2(r0.x);
    r0 = _630;
    float2 _640 = r0.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(_640.x, _640.y, r0.z, r0.w);
    float2 _645 = exp2(r0.xy);
    r0 = float4(_645.x, _645.y, r0.z, r0.w);
    float2 _662 = (cb0_m[12].x.xx * float2(cb2_m[3].x, cb2_m[3].y)) + r1.xy;
    o1 = float4(_662.x, _662.y, o1.z, o1.w);
    float4 _671 = r0;
    _671.y = (-r0.x) + r0.y;
    r0 = _671;
    float4 _678 = r0;
    _678.z = cb2_m[3].z + asfloat(1008981770u);
    r0 = _678;
    float4 _684 = r0;
    _684.z = asfloat(1073741824u) / r0.z;
    r0 = _684;
    float4 _692 = r0;
    _692.z = r0.z * cb0_m[12].z;
    r0 = _692;
    float4 _698 = r0;
    _698.z = cos(r0.zzzz.z);
    r0 = _698;
    float4 _704 = r0;
    _704.z = r0.z + asfloat(1065353216u);
    r0 = _704;
    float4 _710 = r0;
    _710.z = r0.z * asfloat(1056964608u);
    r0 = _710;
    float4 _720 = o1;
    _720.z = (r0.z * r0.y) + r0.x;
    o1 = _720;
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
