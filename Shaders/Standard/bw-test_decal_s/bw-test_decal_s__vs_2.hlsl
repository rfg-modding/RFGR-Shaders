cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _57 = r0;
    _57.w = asfloat(1065353216u);
    r0 = _57;
    float4 _72 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _87 = r1;
    _87.x = mad(_72.w, r0.w, mad(_72.z, r0.z, mad(_72.y, r0.y, _72.x * r0.x)));
    r1 = _87;
    float4 _99 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _113 = r1;
    _113.y = mad(_99.w, r0.w, mad(_99.z, r0.z, mad(_99.y, r0.y, _99.x * r0.x)));
    r1 = _113;
    float4 _125 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _139 = r1;
    _139.z = mad(_125.w, r0.w, mad(_125.z, r0.z, mad(_125.y, r0.y, _125.x * r0.x)));
    r1 = _139;
    float4 _142 = r1;
    _142.w = asfloat(1065353216u);
    r1 = _142;
    float4 _153 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _167 = o0;
    _167.x = mad(_153.w, r1.w, mad(_153.z, r1.z, mad(_153.y, r1.y, _153.x * r1.x)));
    o0 = _167;
    float4 _178 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _192 = o0;
    _192.y = mad(_178.w, r1.w, mad(_178.z, r1.z, mad(_178.y, r1.y, _178.x * r1.x)));
    o0 = _192;
    float4 _203 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _217 = o0;
    _217.z = mad(_203.w, r1.w, mad(_203.z, r1.z, mad(_203.y, r1.y, _203.x * r1.x)));
    o0 = _217;
    float4 _229 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _243 = o0;
    _243.w = mad(_229.w, r1.w, mad(_229.z, r1.z, mad(_229.y, r1.y, _229.x * r1.x)));
    o0 = _243;
    float3 _256 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_256.x, _256.y, _256.z, r0.w);
    float3 _270 = r0.yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_270.x, _270.y, _270.z, r1.w);
    float3 _288 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r0.zxy) + (-r1.xyz);
    r1 = float4(_288.x, _288.y, _288.z, r1.w);
    float4 _304 = r0;
    _304.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _304;
    float4 _309 = r0;
    _309.w = rsqrt(r0.w);
    r0 = _309;
    float3 _315 = r0.www * r1.xyz;
    r1 = float4(_315.x, _315.y, _315.z, r1.w);
    float3 _322 = r0.zxy * r1.yzx;
    r2 = float4(_322.x, _322.y, _322.z, r2.w);
    float3 _334 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_334.x, _334.y, _334.z, r2.w);
    float3 _344 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _356 = o2;
    _356.y = mad(_344.z, r1.xyz.z, mad(_344.y, r1.xyz.y, _344.x * r1.xyz.x));
    o2 = _356;
    float4 _371 = r0;
    _371.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _371;
    float4 _376 = r0;
    _376.w = rsqrt(r0.w);
    r0 = _376;
    float3 _382 = r0.www * r2.xyz;
    r1 = float4(_382.x, _382.y, _382.z, r1.w);
    float3 _392 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _404 = r2;
    _404.x = mad(_392.z, r1.xyz.z, mad(_392.y, r1.xyz.y, _392.x * r1.xyz.x));
    r2 = _404;
    float3 _413 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _425 = r2;
    _425.y = mad(_413.z, r1.xyz.z, mad(_413.y, r1.xyz.y, _413.x * r1.xyz.x));
    r2 = _425;
    float3 _434 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _446 = r2;
    _446.z = mad(_434.z, r1.xyz.z, mad(_434.y, r1.xyz.y, _434.x * r1.xyz.x));
    r2 = _446;
    float3 _455 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _467 = o2;
    _467.x = mad(_455.z, r1.xyz.z, mad(_455.y, r1.xyz.y, _455.x * r1.xyz.x));
    o2 = _467;
    float4 _482 = r0;
    _482.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _482;
    float4 _487 = r0;
    _487.w = rsqrt(r0.w);
    r0 = _487;
    float3 _493 = r0.www * r2.xyz;
    r1 = float4(_493.x, _493.y, _493.z, r1.w);
    float3 _503 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _515 = r2;
    _515.x = mad(_503.z, r0.xyz.z, mad(_503.y, r0.xyz.y, _503.x * r0.xyz.x));
    r2 = _515;
    float3 _524 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _536 = r2;
    _536.y = mad(_524.z, r0.xyz.z, mad(_524.y, r0.xyz.y, _524.x * r0.xyz.x));
    r2 = _536;
    float3 _545 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _557 = r2;
    _557.z = mad(_545.z, r0.xyz.z, mad(_545.y, r0.xyz.y, _545.x * r0.xyz.x));
    r2 = _557;
    float3 _566 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _578 = o2;
    _578.z = mad(_566.z, r0.xyz.z, mad(_566.y, r0.xyz.y, _566.x * r0.xyz.x));
    o2 = _578;
    float4 _593 = r0;
    _593.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _593;
    float4 _598 = r0;
    _598.x = rsqrt(r0.x);
    r0 = _598;
    float3 _604 = r0.xxx * r2.xyz;
    r0 = float4(_604.x, _604.y, _604.z, r0.w);
    float3 _611 = r1.yzx * r0.zxy;
    r2 = float4(_611.x, _611.y, _611.z, r2.w);
    float3 _622 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_622.x, _622.y, _622.z, r2.w);
    float3 _632 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _644 = o1;
    _644.x = mad(_632.z, r1.xyz.z, mad(_632.y, r1.xyz.y, _632.x * r1.xyz.x));
    o1 = _644;
    float3 _653 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _665 = o1;
    _665.z = mad(_653.z, r0.xyz.z, mad(_653.y, r0.xyz.y, _653.x * r0.xyz.x));
    o1 = _665;
    float3 _674 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _677 = -r2.xyz;
    float3 _687 = o1;
    _687.y = mad(_674.z, _677.z, mad(_674.y, _677.y, _674.x * _677.x));
    o1 = _687;
    float3 _701 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_701.x, _701.y, _701.z, r0.w);
    float3 _713 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _723 = r1;
    _723.x = mad(r0.xyz.z, _713.z, mad(r0.xyz.y, _713.y, r0.xyz.x * _713.x));
    r1 = _723;
    float3 _734 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _744 = r1;
    _744.z = mad(r0.xyz.z, _734.z, mad(r0.xyz.y, _734.y, r0.xyz.x * _734.x));
    r1 = _744;
    float3 _755 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _765 = r0;
    _765.x = mad(r0.xyz.z, _755.z, mad(r0.xyz.y, _755.y, r0.xyz.x * _755.x));
    r0 = _765;
    float4 _774 = r0;
    _774.x = r0.x * cb5_m[5].y;
    r0 = _774;
    float2 _785 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_785.x, r1.y, _785.y, r1.w);
    float4 _790 = o2;
    _790.w = r1.z;
    o2 = _790;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _815 = r0;
    _815.y = asfloat(3212836864u);
    r0 = _815;
    float4 _822 = r1;
    _822.y = r0.x * r0.y;
    r1 = _822;
    float2 _830 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o5 = float4(_830.x, _830.y, o5.z, o5.w);
    float2 _836 = cb5_m[5].w.xx;
    o5 = float4(o5.x, o5.y, _836.x, _836.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
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
