cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static float4 o7;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
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
    float3 _258 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_258.x, _258.y, _258.z, r1.w);
    float3 _272 = r1.yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r2 = float4(_272.x, _272.y, _272.z, r2.w);
    float3 _291 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r1.zxy) + (-r2.xyz);
    r2 = float4(_291.x, _291.y, _291.z, r2.w);
    float4 _307 = r0;
    _307.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _307;
    float4 _312 = r0;
    _312.w = rsqrt(r0.w);
    r0 = _312;
    float3 _318 = r0.www * r2.xyz;
    r2 = float4(_318.x, _318.y, _318.z, r2.w);
    float3 _325 = r1.zxy * r2.yzx;
    r3 = float4(_325.x, _325.y, _325.z, r3.w);
    float3 _337 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_337.x, _337.y, _337.z, r3.w);
    float3 _347 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _359 = o3;
    _359.y = mad(_347.z, r2.xyz.z, mad(_347.y, r2.xyz.y, _347.x * r2.xyz.x));
    o3 = _359;
    float4 _374 = r0;
    _374.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _374;
    float4 _379 = r0;
    _379.w = rsqrt(r0.w);
    r0 = _379;
    float3 _385 = r0.www * r3.xyz;
    r2 = float4(_385.x, _385.y, _385.z, r2.w);
    float3 _395 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _407 = r3;
    _407.x = mad(_395.z, r2.xyz.z, mad(_395.y, r2.xyz.y, _395.x * r2.xyz.x));
    r3 = _407;
    float3 _416 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _428 = r3;
    _428.y = mad(_416.z, r2.xyz.z, mad(_416.y, r2.xyz.y, _416.x * r2.xyz.x));
    r3 = _428;
    float3 _437 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _449 = r3;
    _449.z = mad(_437.z, r2.xyz.z, mad(_437.y, r2.xyz.y, _437.x * r2.xyz.x));
    r3 = _449;
    float3 _458 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _470 = o3;
    _470.x = mad(_458.z, r2.xyz.z, mad(_458.y, r2.xyz.y, _458.x * r2.xyz.x));
    o3 = _470;
    float4 _485 = r0;
    _485.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _485;
    float4 _490 = r0;
    _490.w = rsqrt(r0.w);
    r0 = _490;
    float3 _496 = r0.www * r3.xyz;
    r2 = float4(_496.x, _496.y, _496.z, r2.w);
    float3 _506 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _518 = r3;
    _518.x = mad(_506.z, r1.xyz.z, mad(_506.y, r1.xyz.y, _506.x * r1.xyz.x));
    r3 = _518;
    float3 _527 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _539 = r3;
    _539.y = mad(_527.z, r1.xyz.z, mad(_527.y, r1.xyz.y, _527.x * r1.xyz.x));
    r3 = _539;
    float3 _548 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _560 = r3;
    _560.z = mad(_548.z, r1.xyz.z, mad(_548.y, r1.xyz.y, _548.x * r1.xyz.x));
    r3 = _560;
    float3 _569 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _581 = o3;
    _581.z = mad(_569.z, r1.xyz.z, mad(_569.y, r1.xyz.y, _569.x * r1.xyz.x));
    o3 = _581;
    float4 _596 = r0;
    _596.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _596;
    float4 _601 = r0;
    _601.w = rsqrt(r0.w);
    r0 = _601;
    float3 _607 = r0.www * r3.xyz;
    r1 = float4(_607.x, _607.y, _607.z, r1.w);
    float3 _614 = r2.yzx * r1.zxy;
    r3 = float4(_614.x, _614.y, _614.z, r3.w);
    float3 _625 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_625.x, _625.y, _625.z, r3.w);
    float3 _635 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _638 = -r3.xyz;
    float3 _648 = o1;
    _648.y = mad(_635.z, _638.z, mad(_635.y, _638.y, _635.x * _638.x));
    o1 = _648;
    float3 _657 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _669 = o1;
    _669.x = mad(_657.z, r2.xyz.z, mad(_657.y, r2.xyz.y, _657.x * r2.xyz.x));
    o1 = _669;
    float3 _678 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _690 = o1;
    _690.z = mad(_678.z, r1.xyz.z, mad(_678.y, r1.xyz.y, _678.x * r1.xyz.x));
    o1 = _690;
    float3 _704 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r4 = float4(_704.x, _704.y, _704.z, r4.w);
    float3 _719 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_719.x, _719.y, _719.z, r0.w);
    float3 _735 = o2;
    _735.x = mad(r4.xyz.z, r2.xyz.z, mad(r4.xyz.y, r2.xyz.y, r4.xyz.x * r2.xyz.x));
    o2 = _735;
    float4 _739 = o6;
    _739.x = r2.y;
    o6 = _739;
    float3 _754 = o2;
    _754.z = mad(r4.xyz.z, r1.xyz.z, mad(r4.xyz.y, r1.xyz.y, r4.xyz.x * r1.xyz.x));
    o2 = _754;
    float4 _758 = o6;
    _758.z = r1.y;
    o6 = _758;
    float3 _764 = -r3.xyz;
    float3 _774 = o2;
    _774.y = mad(r4.xyz.z, _764.z, mad(r4.xyz.y, _764.y, r4.xyz.x * _764.x));
    o2 = _774;
    float4 _779 = o6;
    _779.y = -r3.y;
    o6 = _779;
    float3 _793 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_793.x, _793.y, _793.z, r1.w);
    float3 _805 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _815 = r2;
    _815.x = mad(r1.xyz.z, _805.z, mad(r1.xyz.y, _805.y, r1.xyz.x * _805.x));
    r2 = _815;
    float3 _826 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _836 = r2;
    _836.z = mad(r1.xyz.z, _826.z, mad(r1.xyz.y, _826.y, r1.xyz.x * _826.x));
    r2 = _836;
    float3 _847 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _857 = r0;
    _857.w = mad(r1.xyz.z, _847.z, mad(r1.xyz.y, _847.y, r1.xyz.x * _847.x));
    r0 = _857;
    float4 _866 = r0;
    _866.w = r0.w * cb5_m[5].y;
    r0 = _866;
    float2 _877 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_877.x, r1.y, _877.y, r1.w);
    float4 _882 = o3;
    _882.w = r1.z;
    o3 = _882;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _913 = r1;
    _913.z = r0.y * cb0_m[13].x;
    r1 = _913;
    float4 _920 = r1;
    _920.w = r1.z * asfloat(3216550459u);
    r1 = _920;
    float4 _925 = r1;
    _925.w = exp2(r1.w);
    r1 = _925;
    float4 _932 = r1;
    _932.w = (-r1.w) + asfloat(1065353216u);
    r1 = _932;
    float4 _939 = r1;
    _939.z = r1.w / r1.z;
    r1 = _939;
    float4 _951 = r1;
    _951.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _951;
    float4 _966 = r0;
    _966.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _966;
    float4 _971 = r0;
    _971.x = sqrt(r0.x);
    r0 = _971;
    float4 _979 = r0;
    _979.x = r0.x * cb0_m[13].y;
    r0 = _979;
    float4 _989 = r0;
    _989.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _989;
    float4 _1001 = r0;
    _1001.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _1001;
    float4 _1007 = r0;
    _1007.x = exp2(-r0.x);
    r0 = _1007;
    float4 _1013 = r0;
    _1013.x = min(r0.x, asfloat(1065353216u));
    r0 = _1013;
    float4 _1020 = o6;
    _1020.w = (-r0.x) + asfloat(1065353216u);
    o6 = _1020;
    float4 _1023 = r0;
    _1023.x = asfloat(3212836864u);
    r0 = _1023;
    float4 _1030 = r1;
    _1030.y = r0.w * r0.x;
    r1 = _1030;
    float2 _1038 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o7 = float4(_1038.x, _1038.y, o7.z, o7.w);
    float2 _1044 = cb5_m[5].w.xx;
    o7 = float4(o7.x, o7.y, _1044.x, _1044.y);
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
