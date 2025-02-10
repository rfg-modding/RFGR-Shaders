cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[2] : packoffset(c0);
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
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float4 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float4 _53 = r0;
    _53.w = asfloat(1065353216u);
    r0 = _53;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _63 = r1;
    _63.w = asfloat(1065353216u);
    r1 = _63;
    float4 _78 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _92 = r0;
    _92.x = mad(_78.w, r1.w, mad(_78.z, r1.z, mad(_78.y, r1.y, _78.x * r1.x)));
    r0 = _92;
    float4 _104 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _118 = r0;
    _118.y = mad(_104.w, r1.w, mad(_104.z, r1.z, mad(_104.y, r1.y, _104.x * r1.x)));
    r0 = _118;
    float4 _130 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _144 = r0;
    _144.z = mad(_130.w, r1.w, mad(_130.z, r1.z, mad(_130.y, r1.y, _130.x * r1.x)));
    r0 = _144;
    float4 _155 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _169 = o0;
    _169.x = mad(_155.w, r0.w, mad(_155.z, r0.z, mad(_155.y, r0.y, _155.x * r0.x)));
    o0 = _169;
    float4 _180 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _194 = o0;
    _194.y = mad(_180.w, r0.w, mad(_180.z, r0.z, mad(_180.y, r0.y, _180.x * r0.x)));
    o0 = _194;
    float4 _205 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _219 = o0;
    _219.z = mad(_205.w, r0.w, mad(_205.z, r0.z, mad(_205.y, r0.y, _205.x * r0.x)));
    o0 = _219;
    float4 _231 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _245 = o0;
    _245.w = mad(_231.w, r0.w, mad(_231.z, r0.z, mad(_231.y, r0.y, _231.x * r0.x)));
    o0 = _245;
    float3 _259 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_259.x, _259.y, _259.z, r1.w);
    float3 _278 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r1.xyz);
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float4 _294 = r0;
    _294.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _294;
    float4 _299 = r0;
    _299.w = rsqrt(r0.w);
    r0 = _299;
    float3 _305 = r0.www * r1.xyz;
    r1 = float4(_305.x, _305.y, _305.z, r1.w);
    float3 _313 = r1.yzx * shader_in[1].zxy;
    r2 = float4(_313.x, _313.y, _313.z, r2.w);
    float3 _326 = (shader_in[1].yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_326.x, _326.y, _326.z, r2.w);
    float3 _336 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _348 = o1;
    _348.y = mad(_336.z, r1.xyz.z, mad(_336.y, r1.xyz.y, _336.x * r1.xyz.x));
    o1 = _348;
    float4 _363 = r0;
    _363.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _363;
    float4 _368 = r0;
    _368.w = rsqrt(r0.w);
    r0 = _368;
    float3 _374 = r0.www * r2.xyz;
    r1 = float4(_374.x, _374.y, _374.z, r1.w);
    float3 _384 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _396 = o1;
    _396.x = mad(_384.z, r1.xyz.z, mad(_384.y, r1.xyz.y, _384.x * r1.xyz.x));
    o1 = _396;
    float3 _405 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _418 = o1;
    _418.z = mad(_405.z, shader_in[1].xyz.z, mad(_405.y, shader_in[1].xyz.y, _405.x * shader_in[1].xyz.x));
    o1 = _418;
    float3 _432 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r2 = float4(_432.x, _432.y, _432.z, r2.w);
    float3 _444 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _455 = r3;
    _455.x = mad(r2.xyz.z, _444.z, mad(r2.xyz.y, _444.y, r2.xyz.x * _444.x));
    r3 = _455;
    float3 _466 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _476 = r3;
    _476.z = mad(r2.xyz.z, _466.z, mad(r2.xyz.y, _466.y, r2.xyz.x * _466.x));
    r3 = _476;
    float3 _487 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _497 = r0;
    _497.w = mad(r2.xyz.z, _487.z, mad(r2.xyz.y, _487.y, r2.xyz.x * _487.x));
    r0 = _497;
    float4 _506 = r0;
    _506.w = r0.w * cb5_m[5].y;
    r0 = _506;
    float2 _517 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_517.x, r2.y, _517.y, r2.w);
    float4 _522 = o1;
    _522.w = r2.z;
    o1 = _522;
    o2 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o3 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float3 _553 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _565 = r3;
    _565.x = mad(_553.z, r1.xyz.z, mad(_553.y, r1.xyz.y, _553.x * r1.xyz.x));
    r3 = _565;
    float3 _574 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _586 = r3;
    _586.y = mad(_574.z, r1.xyz.z, mad(_574.y, r1.xyz.y, _574.x * r1.xyz.x));
    r3 = _586;
    float3 _595 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _607 = r3;
    _607.z = mad(_595.z, r1.xyz.z, mad(_595.y, r1.xyz.y, _595.x * r1.xyz.x));
    r3 = _607;
    float4 _622 = r1;
    _622.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r1 = _622;
    float4 _627 = r1;
    _627.x = rsqrt(r1.x);
    r1 = _627;
    float3 _633 = r1.xxx * r3.xyz;
    r1 = float4(_633.x, _633.y, _633.z, r1.w);
    float3 _643 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _655 = o4;
    _655.x = mad(_643.z, r1.xyz.z, mad(_643.y, r1.xyz.y, _643.x * r1.xyz.x));
    o4 = _655;
    float3 _664 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _677 = r3;
    _677.x = mad(_664.z, shader_in[1].xyz.z, mad(_664.y, shader_in[1].xyz.y, _664.x * shader_in[1].xyz.x));
    r3 = _677;
    float3 _686 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _699 = r3;
    _699.y = mad(_686.z, shader_in[1].xyz.z, mad(_686.y, shader_in[1].xyz.y, _686.x * shader_in[1].xyz.x));
    r3 = _699;
    float3 _708 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _721 = r3;
    _721.z = mad(_708.z, shader_in[1].xyz.z, mad(_708.y, shader_in[1].xyz.y, _708.x * shader_in[1].xyz.x));
    r3 = _721;
    float4 _736 = r1;
    _736.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r1 = _736;
    float4 _741 = r1;
    _741.w = rsqrt(r1.w);
    r1 = _741;
    float3 _747 = r1.www * r3.xyz;
    r3 = float4(_747.x, _747.y, _747.z, r3.w);
    float3 _754 = r1.yzx * r3.zxy;
    r4 = float4(_754.x, _754.y, _754.z, r4.w);
    float3 _766 = (r3.yzx * r1.zxy) + (-r4.xyz);
    r4 = float4(_766.x, _766.y, _766.z, r4.w);
    float3 _776 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float3 _779 = -r4.xyz;
    float4 _789 = o4;
    _789.y = mad(_776.z, _779.z, mad(_776.y, _779.y, _776.x * _779.x));
    o4 = _789;
    float4 _796 = r1;
    _796.w = float(asint(shader_in[2].x));
    r1 = _796;
    float4 _803 = o4;
    _803.w = r1.w * asfloat(981467136u);
    o4 = _803;
    float3 _812 = float3(cb1_m[1].x, cb1_m[1].y, cb1_m[1].z);
    float4 _824 = o4;
    _824.z = mad(_812.z, r3.xyz.z, mad(_812.y, r3.xyz.y, _812.x * r3.xyz.x));
    o4 = _824;
    float3 _838 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r5 = float4(_838.x, _838.y, _838.z, r5.w);
    float3 _853 = (-r0.xyz) + float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_853.x, _853.y, _853.z, r0.w);
    float4 _863 = r1;
    _863.w = r5.y * cb0_m[13].x;
    r1 = _863;
    float4 _870 = r2;
    _870.z = r1.w * asfloat(3216550459u);
    r2 = _870;
    float4 _875 = r2;
    _875.z = exp2(r2.z);
    r2 = _875;
    float4 _882 = r2;
    _882.z = (-r2.z) + asfloat(1065353216u);
    r2 = _882;
    float4 _889 = r1;
    _889.w = r2.z / r1.w;
    r1 = _889;
    float4 _901 = r2;
    _901.z = asfloat((asfloat(1008981770u) < abs(r5.y)) ? 4294967295u : 0u);
    r2 = _901;
    float4 _916 = r2;
    _916.w = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r2 = _916;
    float4 _921 = r2;
    _921.w = sqrt(r2.w);
    r2 = _921;
    float4 _929 = r2;
    _929.w = r2.w * cb0_m[13].y;
    r2 = _929;
    float4 _939 = r1;
    _939.w = (asuint(r2.z) != 0u) ? r1.w : asfloat(1065353216u);
    r1 = _939;
    float4 _951 = r1;
    _951.w = (r1.w * r2.w) + (-cb0_m[13].w);
    r1 = _951;
    float4 _957 = r1;
    _957.w = exp2(-r1.w);
    r1 = _957;
    float4 _963 = r1;
    _963.w = min(r1.w, asfloat(1065353216u));
    r1 = _963;
    float4 _970 = o5;
    _970.w = (-r1.w) + asfloat(1065353216u);
    o5 = _970;
    float4 _985 = o5;
    _985.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o5 = _985;
    float3 _991 = -r4.xyz;
    float4 _1001 = o5;
    _1001.y = mad(r0.xyz.z, _991.z, mad(r0.xyz.y, _991.y, r0.xyz.x * _991.x));
    o5 = _1001;
    float4 _1016 = o5;
    _1016.z = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o5 = _1016;
    float4 _1020 = r0;
    _1020.x = asfloat(3212836864u);
    r0 = _1020;
    float4 _1027 = r2;
    _1027.y = r0.w * r0.x;
    r2 = _1027;
    float2 _1035 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_1035.x, _1035.y, o6.z, o6.w);
    float2 _1041 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _1041.x, _1041.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _1056 = shader_in[2];
    _1056.x = asfloat(v2);
    shader_in[2] = _1056;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
