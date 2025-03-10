cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[4] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
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
static float3 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void vs_main()
{
    float4 _44 = r0;
    _44.w = asfloat(1065353216u);
    r0 = _44;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _54 = r1;
    _54.w = asfloat(1065353216u);
    r1 = _54;
    float4 _71 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _85 = r0;
    _85.x = mad(_71.w, r1.w, mad(_71.z, r1.z, mad(_71.y, r1.y, _71.x * r1.x)));
    r0 = _85;
    float4 _97 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _111 = r0;
    _111.z = mad(_97.w, r1.w, mad(_97.z, r1.z, mad(_97.y, r1.y, _97.x * r1.x)));
    r0 = _111;
    float4 _123 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _137 = r0;
    _137.y = mad(_123.w, r1.w, mad(_123.z, r1.z, mad(_123.y, r1.y, _123.x * r1.x)));
    r0 = _137;
    float4 _148 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _162 = o0;
    _162.x = mad(_148.w, r0.w, mad(_148.z, r0.z, mad(_148.y, r0.y, _148.x * r0.x)));
    o0 = _162;
    float4 _173 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _187 = o0;
    _187.y = mad(_173.w, r0.w, mad(_173.z, r0.z, mad(_173.y, r0.y, _173.x * r0.x)));
    o0 = _187;
    float4 _198 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _212 = o0;
    _212.z = mad(_198.w, r0.w, mad(_198.z, r0.z, mad(_198.y, r0.y, _198.x * r0.x)));
    o0 = _212;
    float4 _224 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _238 = o0;
    _238.w = mad(_224.w, r0.w, mad(_224.z, r0.z, mad(_224.y, r0.y, _224.x * r0.x)));
    o0 = _238;
    float3 _252 = (-r0.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_252.x, _252.y, _252.z, r1.w);
    float3 _266 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_266.x, r0.y, _266.y, _266.z);
    float4 _279 = r0;
    _279.y = asfloat((cb6_m[3].w < r0.y) ? 4294967295u : 0u);
    r0 = _279;
    float3 _286 = o5;
    _286.x = asfloat(asuint(r0.y) & 1065353216u);
    o5 = _286;
    float4 _301 = r0;
    _301.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _301;
    float4 _306 = r1;
    _306.w = rsqrt(r0.y);
    r1 = _306;
    float4 _311 = r0;
    _311.y = sqrt(r0.y);
    r0 = _311;
    float4 _318 = r0;
    _318.y = r0.y + asfloat(3221225472u);
    r0 = _318;
    float4 _328 = o3;
    _328.w = clamp(r0.y * asfloat(1015889355u), 0.0f, 1.0f);
    o3 = _328;
    float4 _338 = r0;
    _338.y = ((-r1.y) * r1.w) + asfloat(1065353216u);
    r0 = _338;
    float3 _344 = r1.www * r1.xyz;
    r1 = float4(_344.x, _344.y, _344.z, r1.w);
    float4 _355 = r0;
    _355.y = asfloat((abs(r0.y) < asfloat(981668463u)) ? 4294967295u : 0u);
    r0 = _355;
    float4 _364 = r1;
    _364.w = asfloat((abs(r1.x) < asfloat(981668463u)) ? 4294967295u : 0u);
    r1 = _364;
    float4 _374 = r2;
    _374.x = asfloat((asfloat(0u) == abs(r1.z)) ? 0u : 4294967295u);
    r2 = _374;
    float4 _384 = r1;
    _384.w = asfloat(asuint(r1.w) & asuint(r2.x));
    r1 = _384;
    float4 _394 = r0;
    _394.y = asfloat(asuint(r0.y) & asuint(r1.w));
    r0 = _394;
    uint3 _399 = asuint(r0.yyy);
    float3 _401 = asfloat(uint3(0u, 0u, 1065353216u));
    float3 _403 = asfloat(uint3(1065353216u, 0u, 0u));
    bool3 _406 = bool3(_399.x != uint3(0u, 0u, 0u).x, _399.y != uint3(0u, 0u, 0u).y, _399.z != uint3(0u, 0u, 0u).z);
    float3 _407 = float3(_406.x ? _401.x : _403.x, _406.y ? _401.y : _403.y, _406.z ? _401.z : _403.z);
    r2 = float4(_407.x, _407.y, _407.z, r2.w);
    float3 _414 = r1.zxy * r2.xyz;
    r3 = float4(_414.x, _414.y, _414.z, r3.w);
    float3 _426 = (r1.yzx * r2.yzx) + (-r3.xyz);
    r2 = float4(_426.x, _426.y, _426.z, r2.w);
    float4 _442 = r0;
    _442.y = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _442;
    float4 _447 = r0;
    _447.y = rsqrt(r0.y);
    r0 = _447;
    float3 _453 = r0.yyy * r2.xyz;
    r2 = float4(_453.x, _453.y, _453.z, r2.w);
    float3 _460 = r1.yzx * r2.zxy;
    r3 = float4(_460.x, _460.y, _460.z, r3.w);
    float3 _471 = (r2.yzx * r1.zxy) + (-r3.xyz);
    r3 = float4(_471.x, _471.y, _471.z, r3.w);
    float4 _487 = r0;
    _487.y = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _487;
    float4 _492 = r0;
    _492.y = rsqrt(r0.y);
    r0 = _492;
    float3 _498 = r0.yyy * r3.xyz;
    r3 = float4(_498.x, _498.y, _498.z, r3.w);
    float3 _511 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r4 = float4(_511.x, _511.y, _511.z, r4.w);
    float3 _522 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _535 = r5;
    _535.x = mad(_522.z, r4.xyz.z, mad(_522.y, r4.xyz.y, _522.x * r4.xyz.x));
    r5 = _535;
    float3 _544 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _556 = r5;
    _556.y = mad(_544.z, r4.xyz.z, mad(_544.y, r4.xyz.y, _544.x * r4.xyz.x));
    r5 = _556;
    float3 _565 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _577 = r5;
    _577.z = mad(_565.z, r4.xyz.z, mad(_565.y, r4.xyz.y, _565.x * r4.xyz.x));
    r5 = _577;
    float4 _592 = r0;
    _592.y = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r0 = _592;
    float4 _597 = r0;
    _597.y = rsqrt(r0.y);
    r0 = _597;
    float3 _603 = r0.yyy * r5.xyz;
    r4 = float4(_603.x, _603.y, _603.z, r4.w);
    float4 _619 = r0;
    _619.y = mad(r3.xyz.z, r4.xyz.z, mad(r3.xyz.y, r4.xyz.y, r3.xyz.x * r4.xyz.x));
    r0 = _619;
    float4 _628 = r0;
    _628.y = (r0.y * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _628;
    float4 _635 = o1;
    _635.y = (-r0.y) + asfloat(1065353216u);
    o1 = _635;
    float4 _650 = r0;
    _650.y = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r0 = _650;
    float4 _658 = r0;
    _658.y = (r0.y * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _658;
    float4 _665 = o1;
    _665.x = (-r0.y) + asfloat(1065353216u);
    o1 = _665;
    float2 _670 = asfloat(uint2(0u, 1065353216u));
    o1 = float4(o1.x, o1.y, _670.x, _670.y);
    float4 _687 = o2;
    _687.w = clamp(mad(r1.xyz.z, r4.xyz.z, mad(r1.xyz.y, r4.xyz.y, r1.xyz.x * r4.xyz.x)), 0.0f, 1.0f);
    o2 = _687;
    o2 = float4(r1.xyz.x, r1.xyz.y, r1.xyz.z, o2.w);
    o3 = float4(r4.xyz.x, r4.xyz.y, r4.xyz.z, o3.w);
    float3 _702 = float3(asint(shader_in[1].xxy));
    r1 = float4(_702.x, _702.y, _702.z, r1.w);
    float3 _711 = r1.xyz * asfloat(uint3(989855744u, 989855744u, 981467136u));
    r1 = float4(_711.x, _711.y, _711.z, r1.w);
    float3 _727 = (cb0_m[12].x.xxx * asfloat(uint3(1041865114u, 3189348762u, 1028443341u))) + r1.xyz;
    o4 = float4(_727.x, o4.y, _727.y, _727.z);
    float4 _732 = o4;
    _732.y = r1.z;
    o4 = _732;
    float4 _741 = r0;
    _741.y = r0.z * cb0_m[13].x;
    r0 = _741;
    float4 _748 = r1;
    _748.x = r0.y * asfloat(3216550459u);
    r1 = _748;
    float4 _753 = r1;
    _753.x = exp2(r1.x);
    r1 = _753;
    float4 _760 = r1;
    _760.x = (-r1.x) + asfloat(1065353216u);
    r1 = _760;
    float4 _767 = r0;
    _767.y = r1.x / r0.y;
    r0 = _767;
    float4 _777 = r1;
    _777.x = asfloat((asfloat(1008981770u) < abs(r0.z)) ? 4294967295u : 0u);
    r1 = _777;
    float4 _792 = r0;
    _792.x = mad(r0.xzw.z, r0.xzw.z, mad(r0.xzw.y, r0.xzw.y, r0.xzw.x * r0.xzw.x));
    r0 = _792;
    float4 _797 = r0;
    _797.x = sqrt(r0.x);
    r0 = _797;
    float4 _805 = r0;
    _805.x = r0.x * cb0_m[13].y;
    r0 = _805;
    float4 _815 = r0;
    _815.y = (asuint(r1.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _815;
    float4 _827 = r0;
    _827.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _827;
    float4 _833 = r0;
    _833.x = exp2(-r0.x);
    r0 = _833;
    float4 _839 = r0;
    _839.x = min(r0.x, asfloat(1065353216u));
    r0 = _839;
    float3 _846 = o5;
    _846.z = (-r0.x) + asfloat(1065353216u);
    o5 = _846;
    float4 _856 = r0;
    _856.x = asfloat((cb6_m[3].w < asfloat(3323739136u)) ? 4294967295u : 0u);
    r0 = _856;
    float4 _866 = r0;
    _866.y = asfloat((asfloat(3323741184u) < cb6_m[3].w) ? 4294967295u : 0u);
    r0 = _866;
    float4 _876 = r0;
    _876.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _876;
    float3 _885 = o5;
    _885.y = (asuint(r0.x) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    o5 = _885;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _893 = asfloat(v1);
    shader_in[1] = float4(_893.x, _893.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
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
