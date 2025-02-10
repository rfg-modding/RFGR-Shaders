cbuffer cb0_t : register(b160)
{
    float4 cb0_m[12] : packoffset(c0);
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
static float3 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
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
    float4 _62 = r1;
    _62.w = asfloat(1065353216u);
    r1 = _62;
    float4 _77 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _91 = r0;
    _91.x = mad(_77.w, r1.w, mad(_77.z, r1.z, mad(_77.y, r1.y, _77.x * r1.x)));
    r0 = _91;
    float4 _103 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _117 = r0;
    _117.y = mad(_103.w, r1.w, mad(_103.z, r1.z, mad(_103.y, r1.y, _103.x * r1.x)));
    r0 = _117;
    float4 _129 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _143 = r0;
    _143.z = mad(_129.w, r1.w, mad(_129.z, r1.z, mad(_129.y, r1.y, _129.x * r1.x)));
    r0 = _143;
    float4 _154 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _168 = o0;
    _168.x = mad(_154.w, r0.w, mad(_154.z, r0.z, mad(_154.y, r0.y, _154.x * r0.x)));
    o0 = _168;
    float4 _179 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _193 = o0;
    _193.y = mad(_179.w, r0.w, mad(_179.z, r0.z, mad(_179.y, r0.y, _179.x * r0.x)));
    o0 = _193;
    float4 _204 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _218 = o0;
    _218.z = mad(_204.w, r0.w, mad(_204.z, r0.z, mad(_204.y, r0.y, _204.x * r0.x)));
    o0 = _218;
    float4 _230 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _244 = o0;
    _244.w = mad(_230.w, r0.w, mad(_230.z, r0.z, mad(_230.y, r0.y, _230.x * r0.x)));
    o0 = _244;
    float3 _258 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_258.x, _258.y, _258.z, r0.w);
    float3 _272 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_272.x, _272.y, _272.z, r1.w);
    float3 _286 = r1.yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r2 = float4(_286.x, _286.y, _286.z, r2.w);
    float3 _305 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r1.zxy) + (-r2.xyz);
    r2 = float4(_305.x, _305.y, _305.z, r2.w);
    float4 _321 = r0;
    _321.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _321;
    float4 _326 = r0;
    _326.w = rsqrt(r0.w);
    r0 = _326;
    float3 _332 = r0.www * r2.xyz;
    r2 = float4(_332.x, _332.y, _332.z, r2.w);
    float3 _339 = r1.zxy * r2.yzx;
    r3 = float4(_339.x, _339.y, _339.z, r3.w);
    float3 _351 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_351.x, _351.y, _351.z, r3.w);
    float3 _361 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _373 = o3;
    _373.y = mad(_361.z, r2.xyz.z, mad(_361.y, r2.xyz.y, _361.x * r2.xyz.x));
    o3 = _373;
    float4 _388 = r0;
    _388.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _388;
    float4 _393 = r0;
    _393.w = rsqrt(r0.w);
    r0 = _393;
    float3 _399 = r0.www * r3.xyz;
    r2 = float4(_399.x, _399.y, _399.z, r2.w);
    float3 _409 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _421 = r3;
    _421.x = mad(_409.z, r2.xyz.z, mad(_409.y, r2.xyz.y, _409.x * r2.xyz.x));
    r3 = _421;
    float3 _430 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _442 = r3;
    _442.y = mad(_430.z, r2.xyz.z, mad(_430.y, r2.xyz.y, _430.x * r2.xyz.x));
    r3 = _442;
    float3 _451 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _463 = r3;
    _463.z = mad(_451.z, r2.xyz.z, mad(_451.y, r2.xyz.y, _451.x * r2.xyz.x));
    r3 = _463;
    float3 _472 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _484 = o3;
    _484.x = mad(_472.z, r2.xyz.z, mad(_472.y, r2.xyz.y, _472.x * r2.xyz.x));
    o3 = _484;
    float4 _499 = r0;
    _499.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _499;
    float4 _504 = r0;
    _504.w = rsqrt(r0.w);
    r0 = _504;
    float3 _510 = r0.www * r3.xyz;
    r2 = float4(_510.x, _510.y, _510.z, r2.w);
    float3 _520 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _532 = r3;
    _532.x = mad(_520.z, r1.xyz.z, mad(_520.y, r1.xyz.y, _520.x * r1.xyz.x));
    r3 = _532;
    float3 _541 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _553 = r3;
    _553.y = mad(_541.z, r1.xyz.z, mad(_541.y, r1.xyz.y, _541.x * r1.xyz.x));
    r3 = _553;
    float3 _562 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _574 = r3;
    _574.z = mad(_562.z, r1.xyz.z, mad(_562.y, r1.xyz.y, _562.x * r1.xyz.x));
    r3 = _574;
    float3 _583 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _595 = o3;
    _595.z = mad(_583.z, r1.xyz.z, mad(_583.y, r1.xyz.y, _583.x * r1.xyz.x));
    o3 = _595;
    float4 _610 = r0;
    _610.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _610;
    float4 _615 = r0;
    _615.w = rsqrt(r0.w);
    r0 = _615;
    float3 _621 = r0.www * r3.xyz;
    r1 = float4(_621.x, _621.y, _621.z, r1.w);
    float3 _628 = r2.yzx * r1.zxy;
    r3 = float4(_628.x, _628.y, _628.z, r3.w);
    float3 _639 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_639.x, _639.y, _639.z, r3.w);
    float3 _649 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _652 = -r3.xyz;
    float3 _662 = o1;
    _662.y = mad(_649.z, _652.z, mad(_649.y, _652.y, _649.x * _652.x));
    o1 = _662;
    float3 _668 = -r3.xyz;
    float3 _678 = o2;
    _678.y = mad(r0.xyz.z, _668.z, mad(r0.xyz.y, _668.y, r0.xyz.x * _668.x));
    o2 = _678;
    float3 _687 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _699 = o1;
    _699.x = mad(_687.z, r2.xyz.z, mad(_687.y, r2.xyz.y, _687.x * r2.xyz.x));
    o1 = _699;
    float3 _714 = o2;
    _714.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o2 = _714;
    float3 _729 = o2;
    _729.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o2 = _729;
    float3 _738 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _750 = o1;
    _750.z = mad(_738.z, r1.xyz.z, mad(_738.y, r1.xyz.y, _738.x * r1.xyz.x));
    o1 = _750;
    float3 _764 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_764.x, _764.y, _764.z, r0.w);
    float3 _776 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _786 = r1;
    _786.x = mad(r0.xyz.z, _776.z, mad(r0.xyz.y, _776.y, r0.xyz.x * _776.x));
    r1 = _786;
    float3 _797 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _807 = r1;
    _807.z = mad(r0.xyz.z, _797.z, mad(r0.xyz.y, _797.y, r0.xyz.x * _797.x));
    r1 = _807;
    float3 _818 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _828 = r0;
    _828.x = mad(r0.xyz.z, _818.z, mad(r0.xyz.y, _818.y, r0.xyz.x * _818.x));
    r0 = _828;
    float4 _837 = r0;
    _837.x = r0.x * cb5_m[5].y;
    r0 = _837;
    float2 _848 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_848.x, r1.y, _848.y, r1.w);
    float4 _853 = o3;
    _853.w = r1.z;
    o3 = _853;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _878 = r0;
    _878.y = asfloat(3212836864u);
    r0 = _878;
    float4 _885 = r1;
    _885.y = r0.x * r0.y;
    r1 = _885;
    float2 _893 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_893.x, _893.y, o6.z, o6.w);
    float2 _899 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _899.x, _899.y);
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
