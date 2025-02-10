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
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[7] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float4 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float4 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float3 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float2 _56 = float2(asint(shader_in[0].xy));
    r0 = float4(_56.x, _56.y, r0.z, r0.w);
    float4 _65 = r0;
    _65.y = r0.y + asfloat(1191182336u);
    r0 = _65;
    float4 _73 = r1;
    _73.y = r0.x * asfloat(1015021568u);
    r1 = _73;
    float4 _80 = r0;
    _80.x = r0.y * asfloat(998244352u);
    r0 = _80;
    float4 _85 = r1;
    _85.z = trunc(r0.x);
    r1 = _85;
    float4 _96 = r1;
    _96.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _96;
    float4 _100 = r1;
    _100.w = asfloat(1065353216u);
    r1 = _100;
    float4 _115 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _129 = r0;
    _129.x = mad(_115.w, r1.w, mad(_115.z, r1.z, mad(_115.y, r1.y, _115.x * r1.x)));
    r0 = _129;
    float4 _141 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _155 = r0;
    _155.y = mad(_141.w, r1.w, mad(_141.z, r1.z, mad(_141.y, r1.y, _141.x * r1.x)));
    r0 = _155;
    float4 _167 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _181 = r0;
    _181.z = mad(_167.w, r1.w, mad(_167.z, r1.z, mad(_167.y, r1.y, _167.x * r1.x)));
    r0 = _181;
    float4 _184 = r0;
    _184.w = asfloat(1065353216u);
    r0 = _184;
    float4 _195 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _209 = o0;
    _209.x = mad(_195.w, r0.w, mad(_195.z, r0.z, mad(_195.y, r0.y, _195.x * r0.x)));
    o0 = _209;
    float4 _220 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _234 = o0;
    _234.y = mad(_220.w, r0.w, mad(_220.z, r0.z, mad(_220.y, r0.y, _220.x * r0.x)));
    o0 = _234;
    float4 _245 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _259 = o0;
    _259.z = mad(_245.w, r0.w, mad(_245.z, r0.z, mad(_245.y, r0.y, _245.x * r0.x)));
    o0 = _259;
    float4 _271 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _285 = o0;
    _285.w = mad(_271.w, r0.w, mad(_271.z, r0.z, mad(_271.y, r0.y, _271.x * r0.x)));
    o0 = _285;
    float4 _288 = r1;
    _288.y = asfloat(0u);
    r1 = _288;
    float3 _301 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_301.x, _301.y, _301.z, r2.w);
    float3 _312 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _325 = r3;
    _325.x = mad(_312.z, r2.xyz.z, mad(_312.y, r2.xyz.y, _312.x * r2.xyz.x));
    r3 = _325;
    float3 _334 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _346 = r3;
    _346.y = mad(_334.z, r2.xyz.z, mad(_334.y, r2.xyz.y, _334.x * r2.xyz.x));
    r3 = _346;
    float3 _355 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _367 = r3;
    _367.z = mad(_355.z, r2.xyz.z, mad(_355.y, r2.xyz.y, _355.x * r2.xyz.x));
    r3 = _367;
    float4 _382 = r0;
    _382.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _382;
    float4 _387 = r0;
    _387.w = rsqrt(r0.w);
    r0 = _387;
    float3 _393 = r0.www * r3.xyz;
    r2 = float4(_393.x, _393.y, _393.z, r2.w);
    float4 _398 = r3;
    _398.z = r2.y;
    r3 = _398;
    float2 _402 = abs(r2.zx);
    r3 = float4(_402.x, _402.y, r3.z, r3.w);
    float2 _411 = r3.yx * asfloat(uint2(2147483648u, 3212836864u));
    r1 = float4(_411.x, r1.y, _411.y, r1.w);
    float3 _422 = ((-r3.xyz) * asfloat(uint3(2147483648u, 3212836864u, 0u))) + r1.xyz;
    r1 = float4(_422.x, _422.y, _422.z, r1.w);
    float3 _429 = r3.xyz * asfloat(uint3(3212836864u, 3212836864u, 1065353216u));
    r3 = float4(_429.x, _429.y, _429.z, r3.w);
    float3 _436 = r1.xyz * r3.xyz;
    r4 = float4(_436.x, _436.y, _436.z, r4.w);
    float3 _448 = (r3.zxy * r1.yzx) + (-r4.xyz);
    r3 = float4(_448.x, _448.y, r3.z, _448.z);
    float3 _458 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _470 = o1;
    _470.y = mad(_458.z, r3.xyw.z, mad(_458.y, r3.xyw.y, _458.x * r3.xyw.x));
    o1 = _470;
    float3 _479 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _491 = o1;
    _491.z = mad(_479.z, r2.xyz.z, mad(_479.y, r2.xyz.y, _479.x * r2.xyz.x));
    o1 = _491;
    float2 _498 = float2(cb1_m[0].z, cb1_m[0].x);
    float3 _507 = o1;
    _507.x = mad(_498.y, r1.yz.y, _498.x * r1.yz.x);
    o1 = _507;
    float3 _521 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_521.x, _521.y, _521.z, r4.w);
    float4 _537 = r0;
    _537.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _537;
    float4 _542 = r0;
    _542.w = rsqrt(r0.w);
    r0 = _542;
    float3 _548 = r0.www * r4.xyz;
    r4 = float4(_548.x, _548.y, _548.z, r4.w);
    float3 _561 = o2;
    _561.x = mad(r4.zx.y, r1.yz.y, r4.zx.x * r1.yz.x);
    o2 = _561;
    float3 _576 = o2;
    _576.z = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _576;
    o3 = float4(r2.xyz.x, r2.xyz.y, r2.xyz.z, o3.w);
    float3 _595 = o2;
    _595.y = mad(r4.xyz.z, r3.xyw.z, mad(r4.xyz.y, r3.xyw.y, r4.xyz.x * r3.xyw.x));
    o2 = _595;
    o4 = float4(o4.x, r3.yz.x, r3.yz.y, o4.w);
    float4 _608 = o3;
    _608.w = (shader_in[1].w * asfloat(1073741824u)) + asfloat(3212836864u);
    o3 = _608;
    float3 _621 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_621.x, _621.y, _621.z, r1.w);
    float3 _635 = r0.xyz + float3(cb0_m[14].x, cb0_m[14].y, cb0_m[14].z);
    r0 = float4(_635.x, _635.y, _635.z, r0.w);
    float4 _645 = r1;
    _645.w = r1.y * cb0_m[13].x;
    r1 = _645;
    float4 _652 = r2;
    _652.x = r1.w * asfloat(3216550459u);
    r2 = _652;
    float4 _657 = r2;
    _657.x = exp2(r2.x);
    r2 = _657;
    float4 _664 = r2;
    _664.x = (-r2.x) + asfloat(1065353216u);
    r2 = _664;
    float4 _671 = r1;
    _671.w = r2.x / r1.w;
    r1 = _671;
    float4 _683 = r2;
    _683.x = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r2 = _683;
    float4 _698 = r1;
    _698.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _698;
    float4 _703 = r1;
    _703.x = sqrt(r1.x);
    r1 = _703;
    float4 _711 = r1;
    _711.x = r1.x * cb0_m[13].y;
    r1 = _711;
    float4 _721 = r1;
    _721.y = (asuint(r2.x) != 0u) ? r1.w : asfloat(1065353216u);
    r1 = _721;
    float4 _733 = r1;
    _733.x = (r1.y * r1.x) + (-cb0_m[13].w);
    r1 = _733;
    float4 _739 = r1;
    _739.x = exp2(-r1.x);
    r1 = _739;
    float4 _745 = r1;
    _745.x = min(r1.x, asfloat(1065353216u));
    r1 = _745;
    float4 _752 = o4;
    _752.w = (-r1.x) + asfloat(1065353216u);
    o4 = _752;
    float4 _755 = o4;
    _755.x = asfloat(0u);
    o4 = _755;
    float4 _758 = r0;
    _758.w = asfloat(1065353216u);
    r0 = _758;
    float4 _769 = float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _783 = o5;
    _783.x = mad(_769.w, r0.w, mad(_769.z, r0.z, mad(_769.y, r0.y, _769.x * r0.x)));
    o5 = _783;
    float4 _794 = float4(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z, cb2_m[2].w);
    float4 _808 = o5;
    _808.y = mad(_794.w, r0.w, mad(_794.z, r0.z, mad(_794.y, r0.y, _794.x * r0.x)));
    o5 = _808;
    float4 _820 = float4(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z, cb2_m[4].w);
    float4 _834 = o5;
    _834.z = mad(_820.w, r0.w, mad(_820.z, r0.z, mad(_820.y, r0.y, _820.x * r0.x)));
    o5 = _834;
    float4 _846 = float4(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z, cb2_m[6].w);
    float4 _860 = o5;
    _860.w = mad(_846.w, r0.w, mad(_846.z, r0.z, mad(_846.y, r0.y, _846.x * r0.x)));
    o5 = _860;
}

void vert_main()
{
    float2 _864 = asfloat(v0);
    shader_in[0] = float4(_864.x, _864.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = v1;
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
