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
static float3 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

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
    float3 _195 = r1.xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_195.x, _195.y, _195.z, r1.w);
    float4 _199 = r0;
    _199.w = asfloat(1065353216u);
    r0 = _199;
    float4 _210 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _224 = o0;
    _224.x = mad(_210.w, r0.w, mad(_210.z, r0.z, mad(_210.y, r0.y, _210.x * r0.x)));
    o0 = _224;
    float4 _235 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _249 = o0;
    _249.y = mad(_235.w, r0.w, mad(_235.z, r0.z, mad(_235.y, r0.y, _235.x * r0.x)));
    o0 = _249;
    float4 _260 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _274 = o0;
    _274.z = mad(_260.w, r0.w, mad(_260.z, r0.z, mad(_260.y, r0.y, _260.x * r0.x)));
    o0 = _274;
    float4 _285 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _299 = o0;
    _299.w = mad(_285.w, r0.w, mad(_285.z, r0.z, mad(_285.y, r0.y, _285.x * r0.x)));
    o0 = _299;
    float3 _313 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r0 = float4(_313.x, _313.y, _313.z, r0.w);
    float3 _332 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r0.xyz);
    r0 = float4(_332.x, _332.y, _332.z, r0.w);
    float4 _348 = r0;
    _348.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _348;
    float4 _353 = r0;
    _353.w = rsqrt(r0.w);
    r0 = _353;
    float3 _359 = r0.www * r0.xyz;
    r0 = float4(_359.x, _359.y, _359.z, r0.w);
    float3 _367 = r0.yzx * shader_in[1].zxy;
    r2 = float4(_367.x, _367.y, _367.z, r2.w);
    float3 _380 = (shader_in[1].yzx * r0.zxy) + (-r2.xyz);
    r2 = float4(_380.x, _380.y, _380.z, r2.w);
    float3 _390 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _402 = o2;
    _402.y = mad(_390.z, r0.xyz.z, mad(_390.y, r0.xyz.y, _390.x * r0.xyz.x));
    o2 = _402;
    float4 _417 = r0;
    _417.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _417;
    float4 _422 = r0;
    _422.x = rsqrt(r0.x);
    r0 = _422;
    float3 _428 = r0.xxx * r2.xyz;
    r0 = float4(_428.x, _428.y, _428.z, r0.w);
    float3 _438 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _450 = r2;
    _450.x = mad(_438.z, r0.xyz.z, mad(_438.y, r0.xyz.y, _438.x * r0.xyz.x));
    r2 = _450;
    float3 _459 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _471 = r2;
    _471.y = mad(_459.z, r0.xyz.z, mad(_459.y, r0.xyz.y, _459.x * r0.xyz.x));
    r2 = _471;
    float3 _480 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _492 = r2;
    _492.z = mad(_480.z, r0.xyz.z, mad(_480.y, r0.xyz.y, _480.x * r0.xyz.x));
    r2 = _492;
    float3 _501 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _513 = o2;
    _513.x = mad(_501.z, r0.xyz.z, mad(_501.y, r0.xyz.y, _501.x * r0.xyz.x));
    o2 = _513;
    float4 _528 = r0;
    _528.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _528;
    float4 _533 = r0;
    _533.x = rsqrt(r0.x);
    r0 = _533;
    float3 _539 = r0.xxx * r2.xyz;
    r0 = float4(_539.x, _539.y, _539.z, r0.w);
    float3 _549 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _562 = r2;
    _562.x = mad(_549.z, shader_in[1].xyz.z, mad(_549.y, shader_in[1].xyz.y, _549.x * shader_in[1].xyz.x));
    r2 = _562;
    float3 _571 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _584 = r2;
    _584.y = mad(_571.z, shader_in[1].xyz.z, mad(_571.y, shader_in[1].xyz.y, _571.x * shader_in[1].xyz.x));
    r2 = _584;
    float3 _593 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _606 = r2;
    _606.z = mad(_593.z, shader_in[1].xyz.z, mad(_593.y, shader_in[1].xyz.y, _593.x * shader_in[1].xyz.x));
    r2 = _606;
    float4 _621 = r0;
    _621.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _621;
    float4 _626 = r0;
    _626.w = rsqrt(r0.w);
    r0 = _626;
    float3 _632 = r0.www * r2.xyz;
    r2 = float4(_632.x, _632.y, _632.z, r2.w);
    float3 _639 = r0.yzx * r2.zxy;
    r3 = float4(_639.x, _639.y, _639.z, r3.w);
    float3 _651 = (r2.yzx * r0.zxy) + (-r3.xyz);
    r3 = float4(_651.x, _651.y, _651.z, r3.w);
    float3 _661 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _673 = o1;
    _673.x = mad(_661.z, r0.xyz.z, mad(_661.y, r0.xyz.y, _661.x * r0.xyz.x));
    o1 = _673;
    float3 _682 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _694 = o1;
    _694.z = mad(_682.z, r2.xyz.z, mad(_682.y, r2.xyz.y, _682.x * r2.xyz.x));
    o1 = _694;
    float3 _703 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _706 = -r3.xyz;
    float3 _716 = o1;
    _716.y = mad(_703.z, _706.z, mad(_703.y, _706.y, _703.x * _706.x));
    o1 = _716;
    float3 _727 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _737 = r0;
    _737.x = mad(r1.xyz.z, _727.z, mad(r1.xyz.y, _727.y, r1.xyz.x * _727.x));
    r0 = _737;
    float3 _748 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _758 = r0;
    _758.z = mad(r1.xyz.z, _748.z, mad(r1.xyz.y, _748.y, r1.xyz.x * _748.x));
    r0 = _758;
    float3 _769 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _779 = r0;
    _779.y = mad(r1.xyz.z, _769.z, mad(r1.xyz.y, _769.y, r1.xyz.x * _769.x));
    r0 = _779;
    float4 _788 = r0;
    _788.y = r0.y * cb5_m[5].y;
    r0 = _788;
    float2 _798 = r0.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_798.x, r1.y, _798.y, r1.w);
    float4 _803 = o2;
    _803.w = r1.z;
    o2 = _803;
    float3 _812 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _825 = o2;
    _825.z = mad(_812.z, shader_in[1].xyz.z, mad(_812.y, shader_in[1].xyz.y, _812.x * shader_in[1].xyz.x));
    o2 = _825;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _851 = r0;
    _851.x = asfloat(3212836864u);
    r0 = _851;
    float4 _858 = r1;
    _858.y = r0.y * r0.x;
    r1 = _858;
    float2 _866 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o5 = float4(_866.x, _866.y, o5.z, o5.w);
    float2 _872 = cb5_m[5].w.xx;
    o5 = float4(o5.x, o5.y, _872.x, _872.y);
}

void vert_main()
{
    float2 _877 = asfloat(v0);
    shader_in[0] = float4(_877.x, _877.y, shader_in[0].z, shader_in[0].w);
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
