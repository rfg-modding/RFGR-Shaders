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
    float4 _56 = r0;
    _56.w = asfloat(1065353216u);
    r0 = _56;
    float4 _75 = r1;
    _75.x = mad(shader_in[2].w, r0.w, mad(shader_in[2].z, r0.z, mad(shader_in[2].y, r0.y, shader_in[2].x * r0.x)));
    r1 = _75;
    float4 _93 = r1;
    _93.y = mad(shader_in[3].w, r0.w, mad(shader_in[3].z, r0.z, mad(shader_in[3].y, r0.y, shader_in[3].x * r0.x)));
    r1 = _93;
    float4 _111 = r1;
    _111.z = mad(shader_in[4].w, r0.w, mad(shader_in[4].z, r0.z, mad(shader_in[4].y, r0.y, shader_in[4].x * r0.x)));
    r1 = _111;
    float4 _114 = r1;
    _114.w = asfloat(1065353216u);
    r1 = _114;
    float4 _130 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _144 = o0;
    _144.x = mad(_130.w, r1.w, mad(_130.z, r1.z, mad(_130.y, r1.y, _130.x * r1.x)));
    o0 = _144;
    float4 _156 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _170 = o0;
    _170.y = mad(_156.w, r1.w, mad(_156.z, r1.z, mad(_156.y, r1.y, _156.x * r1.x)));
    o0 = _170;
    float4 _181 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _195 = o0;
    _195.z = mad(_181.w, r1.w, mad(_181.z, r1.z, mad(_181.y, r1.y, _181.x * r1.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _220 = o0;
    _220.w = mad(_206.w, r1.w, mad(_206.z, r1.z, mad(_206.y, r1.y, _206.x * r1.x)));
    o0 = _220;
    float3 _234 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r0 = float4(_234.x, _234.y, _234.z, r0.w);
    float3 _253 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r0.xyz);
    r0 = float4(_253.x, _253.y, _253.z, r0.w);
    float4 _269 = r0;
    _269.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _269;
    float4 _274 = r0;
    _274.w = rsqrt(r0.w);
    r0 = _274;
    float3 _280 = r0.www * r0.xyz;
    r0 = float4(_280.x, _280.y, _280.z, r0.w);
    float3 _288 = r0.yzx * shader_in[1].zxy;
    r1 = float4(_288.x, _288.y, _288.z, r1.w);
    float3 _300 = (shader_in[1].yzx * r0.zxy) + (-r1.xyz);
    r1 = float4(_300.x, _300.y, _300.z, r1.w);
    float3 _310 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _322 = o2;
    _322.y = mad(_310.z, r0.xyz.z, mad(_310.y, r0.xyz.y, _310.x * r0.xyz.x));
    o2 = _322;
    float4 _337 = r0;
    _337.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _337;
    float4 _342 = r0;
    _342.x = rsqrt(r0.x);
    r0 = _342;
    float3 _348 = r0.xxx * r1.xyz;
    r0 = float4(_348.x, _348.y, _348.z, r0.w);
    float4 _365 = r1;
    _365.x = mad(shader_in[2].xyz.z, r0.xyz.z, mad(shader_in[2].xyz.y, r0.xyz.y, shader_in[2].xyz.x * r0.xyz.x));
    r1 = _365;
    float4 _381 = r1;
    _381.y = mad(shader_in[3].xyz.z, r0.xyz.z, mad(shader_in[3].xyz.y, r0.xyz.y, shader_in[3].xyz.x * r0.xyz.x));
    r1 = _381;
    float4 _397 = r1;
    _397.z = mad(shader_in[4].xyz.z, r0.xyz.z, mad(shader_in[4].xyz.y, r0.xyz.y, shader_in[4].xyz.x * r0.xyz.x));
    r1 = _397;
    float3 _406 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _418 = o2;
    _418.x = mad(_406.z, r0.xyz.z, mad(_406.y, r0.xyz.y, _406.x * r0.xyz.x));
    o2 = _418;
    float4 _433 = r0;
    _433.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _433;
    float4 _438 = r0;
    _438.x = rsqrt(r0.x);
    r0 = _438;
    float3 _444 = r0.xxx * r1.xyz;
    r0 = float4(_444.x, _444.y, _444.z, r0.w);
    float4 _462 = r1;
    _462.x = mad(shader_in[2].xyz.z, shader_in[1].xyz.z, mad(shader_in[2].xyz.y, shader_in[1].xyz.y, shader_in[2].xyz.x * shader_in[1].xyz.x));
    r1 = _462;
    float4 _479 = r1;
    _479.y = mad(shader_in[3].xyz.z, shader_in[1].xyz.z, mad(shader_in[3].xyz.y, shader_in[1].xyz.y, shader_in[3].xyz.x * shader_in[1].xyz.x));
    r1 = _479;
    float4 _496 = r1;
    _496.z = mad(shader_in[4].xyz.z, shader_in[1].xyz.z, mad(shader_in[4].xyz.y, shader_in[1].xyz.y, shader_in[4].xyz.x * shader_in[1].xyz.x));
    r1 = _496;
    float4 _511 = r0;
    _511.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _511;
    float4 _516 = r0;
    _516.w = rsqrt(r0.w);
    r0 = _516;
    float3 _522 = r0.www * r1.xyz;
    r1 = float4(_522.x, _522.y, _522.z, r1.w);
    float3 _529 = r0.yzx * r1.zxy;
    r2 = float4(_529.x, _529.y, _529.z, r2.w);
    float3 _541 = (r1.yzx * r0.zxy) + (-r2.xyz);
    r2 = float4(_541.x, _541.y, _541.z, r2.w);
    float3 _551 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _563 = o1;
    _563.x = mad(_551.z, r0.xyz.z, mad(_551.y, r0.xyz.y, _551.x * r0.xyz.x));
    o1 = _563;
    float3 _572 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _584 = o1;
    _584.z = mad(_572.z, r1.xyz.z, mad(_572.y, r1.xyz.y, _572.x * r1.xyz.x));
    o1 = _584;
    float3 _593 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _596 = -r2.xyz;
    float3 _606 = o1;
    _606.y = mad(_593.z, _596.z, mad(_593.y, _596.y, _593.x * _596.x));
    o1 = _606;
    float3 _615 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _628 = o2;
    _628.z = mad(_615.z, shader_in[1].xyz.z, mad(_615.y, shader_in[1].xyz.y, _615.x * shader_in[1].xyz.x));
    o2 = _628;
    float3 _642 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_642.x, _642.y, _642.z, r0.w);
    float3 _654 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _664 = r1;
    _664.x = mad(r0.xyz.z, _654.z, mad(r0.xyz.y, _654.y, r0.xyz.x * _654.x));
    r1 = _664;
    float3 _675 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _685 = r1;
    _685.z = mad(r0.xyz.z, _675.z, mad(r0.xyz.y, _675.y, r0.xyz.x * _675.x));
    r1 = _685;
    float3 _696 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _706 = r0;
    _706.x = mad(r0.xyz.z, _696.z, mad(r0.xyz.y, _696.y, r0.xyz.x * _696.x));
    r0 = _706;
    float4 _715 = r0;
    _715.x = r0.x * cb5_m[5].y;
    r0 = _715;
    float2 _726 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_726.x, r1.y, _726.y, r1.w);
    float4 _731 = o2;
    _731.w = r1.z;
    o2 = _731;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _756 = r0;
    _756.y = asfloat(3212836864u);
    r0 = _756;
    float4 _763 = r1;
    _763.y = r0.x * r0.y;
    r1 = _763;
    float2 _771 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o5 = float4(_771.x, _771.y, o5.z, o5.w);
    float2 _777 = cb5_m[5].w.xx;
    o5 = float4(o5.x, o5.y, _777.x, _777.y);
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
