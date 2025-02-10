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
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float2 _57 = float2(asint(shader_in[0].xy));
    r0 = float4(_57.x, _57.y, r0.z, r0.w);
    float4 _66 = r0;
    _66.y = r0.y + asfloat(1191182336u);
    r0 = _66;
    float4 _74 = r1;
    _74.y = r0.x * asfloat(1015021568u);
    r1 = _74;
    float4 _81 = r0;
    _81.x = r0.y * asfloat(998244352u);
    r0 = _81;
    float4 _86 = r1;
    _86.z = trunc(r0.x);
    r1 = _86;
    float4 _97 = r1;
    _97.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _97;
    float4 _101 = r1;
    _101.w = asfloat(1065353216u);
    r1 = _101;
    float4 _116 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _130 = r0;
    _130.x = mad(_116.w, r1.w, mad(_116.z, r1.z, mad(_116.y, r1.y, _116.x * r1.x)));
    r0 = _130;
    float4 _142 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _156 = r0;
    _156.y = mad(_142.w, r1.w, mad(_142.z, r1.z, mad(_142.y, r1.y, _142.x * r1.x)));
    r0 = _156;
    float4 _168 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _182 = r0;
    _182.z = mad(_168.w, r1.w, mad(_168.z, r1.z, mad(_168.y, r1.y, _168.x * r1.x)));
    r0 = _182;
    float3 _196 = r1.xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_196.x, _196.y, _196.z, r1.w);
    float4 _200 = r0;
    _200.w = asfloat(1065353216u);
    r0 = _200;
    float4 _211 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _225 = o0;
    _225.x = mad(_211.w, r0.w, mad(_211.z, r0.z, mad(_211.y, r0.y, _211.x * r0.x)));
    o0 = _225;
    float4 _236 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _250 = o0;
    _250.y = mad(_236.w, r0.w, mad(_236.z, r0.z, mad(_236.y, r0.y, _236.x * r0.x)));
    o0 = _250;
    float4 _261 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _275 = o0;
    _275.z = mad(_261.w, r0.w, mad(_261.z, r0.z, mad(_261.y, r0.y, _261.x * r0.x)));
    o0 = _275;
    float4 _286 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _300 = o0;
    _300.w = mad(_286.w, r0.w, mad(_286.z, r0.z, mad(_286.y, r0.y, _286.x * r0.x)));
    o0 = _300;
    float3 _311 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _321 = r0;
    _321.x = mad(r1.xyz.z, _311.z, mad(r1.xyz.y, _311.y, r1.xyz.x * _311.x));
    r0 = _321;
    float3 _332 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _342 = r0;
    _342.z = mad(r1.xyz.z, _332.z, mad(r1.xyz.y, _332.y, r1.xyz.x * _332.x));
    r0 = _342;
    float3 _353 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _363 = r0;
    _363.y = mad(r1.xyz.z, _353.z, mad(r1.xyz.y, _353.y, r1.xyz.x * _353.x));
    r0 = _363;
    float4 _372 = r0;
    _372.y = r0.y * cb5_m[5].y;
    r0 = _372;
    float2 _382 = r0.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_382.x, r1.y, _382.y, r1.w);
    float4 _387 = r0;
    _387.x = asfloat(3212836864u);
    r0 = _387;
    float4 _394 = r1;
    _394.y = r0.y * r0.x;
    r1 = _394;
    o1 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _405 = o3;
    _405.w = r1.z;
    o3 = _405;
    float3 _417 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_417.x, _417.y, _417.z, r0.w);
    float3 _431 = r0.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r1 = float4(_431.x, _431.y, _431.z, r1.w);
    float3 _449 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r0.xyz) + (-r1.xyz);
    r1 = float4(_449.x, _449.y, _449.z, r1.w);
    float4 _465 = r0;
    _465.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _465;
    float4 _470 = r0;
    _470.w = rsqrt(r0.w);
    r0 = _470;
    float3 _476 = r0.www * r1.xyz;
    r1 = float4(_476.x, _476.y, _476.z, r1.w);
    float3 _483 = r0.zxy * r1.xyz;
    r2 = float4(_483.x, _483.y, _483.z, r2.w);
    float3 _495 = (r0.yzx * r1.yzx) + (-r2.xyz);
    r1 = float4(_495.x, _495.y, _495.z, r1.w);
    float4 _511 = r0;
    _511.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _511;
    float4 _516 = r0;
    _516.w = rsqrt(r0.w);
    r0 = _516;
    float3 _522 = r0.www * r1.xyz;
    r1 = float4(_522.x, _522.y, _522.z, r1.w);
    float3 _532 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _544 = r2;
    _544.x = mad(_532.z, r1.xyz.z, mad(_532.y, r1.xyz.y, _532.x * r1.xyz.x));
    r2 = _544;
    float3 _553 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _565 = r2;
    _565.y = mad(_553.z, r1.xyz.z, mad(_553.y, r1.xyz.y, _553.x * r1.xyz.x));
    r2 = _565;
    float3 _574 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _586 = r2;
    _586.z = mad(_574.z, r1.xyz.z, mad(_574.y, r1.xyz.y, _574.x * r1.xyz.x));
    r2 = _586;
    float3 _595 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _607 = o3;
    _607.x = mad(_595.z, r1.xyz.z, mad(_595.y, r1.xyz.y, _595.x * r1.xyz.x));
    o3 = _607;
    float4 _622 = r0;
    _622.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _622;
    float4 _627 = r0;
    _627.w = rsqrt(r0.w);
    r0 = _627;
    float3 _633 = r0.www * r2.xyz;
    r1 = float4(_633.x, _633.y, _633.z, r1.w);
    float3 _643 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _655 = r2;
    _655.x = mad(_643.z, r0.xyz.z, mad(_643.y, r0.xyz.y, _643.x * r0.xyz.x));
    r2 = _655;
    float3 _664 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _676 = r2;
    _676.y = mad(_664.z, r0.xyz.z, mad(_664.y, r0.xyz.y, _664.x * r0.xyz.x));
    r2 = _676;
    float3 _685 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _697 = r2;
    _697.z = mad(_685.z, r0.xyz.z, mad(_685.y, r0.xyz.y, _685.x * r0.xyz.x));
    r2 = _697;
    float3 _706 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _718 = o3;
    _718.z = mad(_706.z, r0.xyz.z, mad(_706.y, r0.xyz.y, _706.x * r0.xyz.x));
    o3 = _718;
    float4 _733 = r0;
    _733.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _733;
    float4 _738 = r0;
    _738.x = rsqrt(r0.x);
    r0 = _738;
    float3 _744 = r0.xxx * r2.xyz;
    r0 = float4(_744.x, _744.y, _744.z, r0.w);
    float3 _751 = r1.yzx * r0.zxy;
    r2 = float4(_751.x, _751.y, _751.z, r2.w);
    float3 _762 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_762.x, _762.y, _762.z, r2.w);
    float3 _772 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _784 = o2;
    _784.x = mad(_772.z, r1.xyz.z, mad(_772.y, r1.xyz.y, _772.x * r1.xyz.x));
    o2 = _784;
    float3 _793 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _805 = o2;
    _805.z = mad(_793.z, r0.xyz.z, mad(_793.y, r0.xyz.y, _793.x * r0.xyz.x));
    o2 = _805;
    float3 _814 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _817 = -r2.xyz;
    float3 _827 = o2;
    _827.y = mad(_814.z, _817.z, mad(_814.y, _817.y, _814.x * _817.x));
    o2 = _827;
    float3 _836 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _848 = o3;
    _848.y = mad(_836.z, r2.xyz.z, mad(_836.y, r2.xyz.y, _836.x * r2.xyz.x));
    o3 = _848;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
}

void vert_main()
{
    float2 _874 = asfloat(v0);
    shader_in[0] = float4(_874.x, _874.y, shader_in[0].z, shader_in[0].w);
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
