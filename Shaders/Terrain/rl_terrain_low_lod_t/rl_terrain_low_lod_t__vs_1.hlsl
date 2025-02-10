cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int4 v0;

struct SPIRV_Cross_Input
{
    float4 v0 : TEXCOORD0;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[1];
static float4 o0;
static float4 o1;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    r0 = float4(asint(shader_in[0]));
    r0 += asfloat(uint4(1191149568u, 0u, 1191149568u, 1191182336u));
    r1 = r0 * asfloat(uint4(1006632960u, 1015021568u, 1006632960u, 998244352u));
    float4 _63 = r2;
    _63.z = trunc(r1.w);
    r2 = _63;
    float4 _67 = r1;
    _67.w = asfloat(1065353216u);
    r1 = _67;
    float4 _81 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _96 = r3;
    _96.x = mad(_81.w, r1.w, mad(_81.z, r1.z, mad(_81.y, r1.y, _81.x * r1.x)));
    r3 = _96;
    float4 _108 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _122 = r3;
    _122.y = mad(_108.w, r1.w, mad(_108.z, r1.z, mad(_108.y, r1.y, _108.x * r1.x)));
    r3 = _122;
    float4 _134 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _148 = r3;
    _148.z = mad(_134.w, r1.w, mad(_134.z, r1.z, mad(_134.y, r1.y, _134.x * r1.x)));
    r3 = _148;
    float4 _151 = r3;
    _151.w = asfloat(1065353216u);
    r3 = _151;
    float4 _162 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _176 = o0;
    _176.x = mad(_162.w, r3.w, mad(_162.z, r3.z, mad(_162.y, r3.y, _162.x * r3.x)));
    o0 = _176;
    float4 _187 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _201 = o0;
    _201.y = mad(_187.w, r3.w, mad(_187.z, r3.z, mad(_187.y, r3.y, _187.x * r3.x)));
    o0 = _201;
    float4 _212 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _226 = o0;
    _226.z = mad(_212.w, r3.w, mad(_212.z, r3.z, mad(_212.y, r3.y, _212.x * r3.x)));
    o0 = _226;
    float4 _238 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _252 = o0;
    _252.w = mad(_238.w, r3.w, mad(_238.z, r3.z, mad(_238.y, r3.y, _238.x * r3.x)));
    o0 = _252;
    float3 _267 = r3.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r1 = float4(_267.x, _267.y, _267.z, r1.w);
    float4 _279 = r2;
    _279.x = ((-r2.z) * asfloat(1132462080u)) + r0.w;
    r2 = _279;
    float2 _288 = r0.xz * asfloat(uint2(931135488u, 931135488u));
    o1 = float4(_288.x, _288.y, o1.z, o1.w);
    float2 _300 = (r2.xz * asfloat(uint2(1006665857u, 1006665857u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(_300.x, r0.y, _300.y, r0.w);
    float4 _311 = r0;
    _311.w = ((-r0.x) * r0.x) + asfloat(1065353216u);
    r0 = _311;
    float4 _322 = r0;
    _322.w = ((-r0.z) * r0.z) + r0.w;
    r0 = _322;
    float4 _328 = r0;
    _328.w = max(r0.w, asfloat(0u));
    r0 = _328;
    float4 _333 = r0;
    _333.y = sqrt(r0.w);
    r0 = _333;
    float3 _344 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _354 = o1;
    _354.w = mad(r0.xyz.z, _344.z, mad(r0.xyz.y, _344.y, r0.xyz.x * _344.x));
    o1 = _354;
    float4 _363 = r0;
    _363.x = r1.y * cb0_m[13].x;
    r0 = _363;
    float4 _370 = r0;
    _370.y = r0.x * asfloat(3216550459u);
    r0 = _370;
    float4 _375 = r0;
    _375.y = exp2(r0.y);
    r0 = _375;
    float4 _382 = r0;
    _382.y = (-r0.y) + asfloat(1065353216u);
    r0 = _382;
    float4 _389 = r0;
    _389.x = r0.y / r0.x;
    r0 = _389;
    float4 _401 = r0;
    _401.y = asfloat((asfloat(1008981770u) < abs(r1.y)) ? 4294967295u : 0u);
    r0 = _401;
    float4 _416 = r0;
    _416.z = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _416;
    float4 _421 = r0;
    _421.z = sqrt(r0.z);
    r0 = _421;
    float4 _429 = r0;
    _429.z = r0.z * cb0_m[13].y;
    r0 = _429;
    float4 _439 = r0;
    _439.x = (asuint(r0.y) != 0u) ? r0.x : asfloat(1065353216u);
    r0 = _439;
    float4 _451 = r0;
    _451.x = (r0.x * r0.z) + (-cb0_m[13].w);
    r0 = _451;
    float4 _457 = r0;
    _457.x = exp2(-r0.x);
    r0 = _457;
    float4 _463 = r0;
    _463.x = min(r0.x, asfloat(1065353216u));
    r0 = _463;
    float4 _470 = o1;
    _470.z = (-r0.x) + asfloat(1065353216u);
    o1 = _470;
}

void vert_main()
{
    shader_in[0] = asfloat(v0);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
