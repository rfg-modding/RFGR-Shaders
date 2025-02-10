cbuffer cb0_t : register(b160)
{
    float4 cb0_m[15] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[4096] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float3 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _41 = r0;
    _41.w = asfloat(1065353216u);
    r0 = _41;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _52 = r1;
    _52.w = asfloat(1065353216u);
    r1 = _52;
    float4 _69 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _83 = r0;
    _83.z = mad(_69.w, r1.w, mad(_69.z, r1.z, mad(_69.y, r1.y, _69.x * r1.x)));
    r0 = _83;
    float4 _94 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _108 = r0;
    _108.x = mad(_94.w, r1.w, mad(_94.z, r1.z, mad(_94.y, r1.y, _94.x * r1.x)));
    r0 = _108;
    float4 _120 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _134 = r0;
    _134.y = mad(_120.w, r1.w, mad(_120.z, r1.z, mad(_120.y, r1.y, _120.x * r1.x)));
    r0 = _134;
    float4 _145 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _159 = r1;
    _159.x = mad(_145.w, r0.w, mad(_145.z, r0.z, mad(_145.y, r0.y, _145.x * r0.x)));
    r1 = _159;
    float4 _170 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _184 = r1;
    _184.y = mad(_170.w, r0.w, mad(_170.z, r0.z, mad(_170.y, r0.y, _170.x * r0.x)));
    r1 = _184;
    float4 _196 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _210 = r1;
    _210.z = mad(_196.w, r0.w, mad(_196.z, r0.z, mad(_196.y, r0.y, _196.x * r0.x)));
    r1 = _210;
    o0 = r1.xyzz;
    o1 = shader_in[0].xyz;
    float2 _233 = (-float2(cb0_m[14].x, cb0_m[14].y)) + float2(cb2_m[11].x, cb2_m[11].y);
    r0 = float4(r0.x, r0.y, _233.x, _233.y);
    float2 _241 = (-r0.zw) + r0.xy;
    r0 = float4(_241.x, _241.y, r0.z, r0.w);
    float4 _249 = r0;
    _249.x = r0.x * asfloat(3184315597u);
    r0 = _249;
    float2 _257 = max(r0.xy, asfloat(uint2(3212836864u, 0u)));
    r0 = float4(_257.x, _257.y, r0.z, r0.w);
    float2 _265 = min(r0.xy, asfloat(uint2(1065353216u, 1092616192u)));
    r0 = float4(_265.x, _265.y, r0.z, r0.w);
    float4 _277 = r0;
    _277.z = (abs(r0.x) * asfloat(3164171824u)) + asfloat(1033377319u);
    r0 = _277;
    float4 _288 = r0;
    _288.z = (r0.z * abs(r0.x)) + asfloat(3193517188u);
    r0 = _288;
    float4 _299 = r0;
    _299.z = (r0.z * abs(r0.x)) + asfloat(1070140836u);
    r0 = _299;
    float4 _307 = r0;
    _307.w = (-abs(r0.x)) + asfloat(1065353216u);
    r0 = _307;
    float4 _319 = r0;
    _319.x = asfloat((r0.x < (-r0.x)) ? 4294967295u : 0u);
    r0 = _319;
    float4 _324 = r0;
    _324.w = sqrt(r0.w);
    r0 = _324;
    float4 _331 = r1;
    _331.x = r0.w * r0.z;
    r1 = _331;
    float4 _341 = r1;
    _341.x = (r1.x * asfloat(3221225472u)) + asfloat(1078530011u);
    r1 = _341;
    float4 _351 = r0;
    _351.x = asfloat(asuint(r0.x) & asuint(r1.x));
    r0 = _351;
    float4 _361 = r0;
    _361.x = (r0.z * r0.w) + r0.x;
    r0 = _361;
    float4 _370 = r0;
    _370.z = (r0.y * asfloat(3136650522u)) + asfloat(1033377319u);
    r0 = _370;
    float2 _378 = r0.yy * asfloat(uint2(1036831949u, 1053609165u));
    r1 = float4(_378.x, _378.y, r1.z, r1.w);
    float4 _388 = r0;
    _388.y = ((-r0.y) * asfloat(1036831949u)) + asfloat(1065353216u);
    r0 = _388;
    float4 _393 = r0;
    _393.y = sqrt(r0.y);
    r0 = _393;
    float4 _402 = r0;
    _402.z = (r0.z * r1.x) + asfloat(3193517188u);
    r0 = _402;
    float4 _411 = r0;
    _411.z = (r0.z * r1.x) + asfloat(1070140836u);
    r0 = _411;
    float4 _422 = r0;
    _422.y = ((-r0.z) * r0.y) + asfloat(1070141403u);
    r0 = _422;
    float4 _432 = r0;
    _432.y = (r0.y * asfloat(1076033923u)) + r1.y;
    r0 = _432;
    float2 _440 = r0.xy * asfloat(uint2(1050868099u, 1056964608u));
    r0 = float4(_440.x, r0.y, _440.y, r0.w);
    float4 _446 = r0;
    _446.w = trunc(r0.z);
    r0 = _446;
    float4 _451 = r0;
    _451.z = floor(r0.z);
    r0 = _451;
    float4 _457 = r0;
    _457.z = asfloat(int(r0.z));
    r0 = _457;
    float4 _467 = r0;
    _467.y = (r0.y * asfloat(1056964608u)) + (-r0.w);
    r0 = _467;
    int _473 = asint(r0.z) + 5;
    int _487 = asint(r0.z) + 6;
    float3 _496 = (-float3(cb2_m[_473].x, cb2_m[_473].y, cb2_m[_473].z)) + float3(cb2_m[_487].x, cb2_m[_487].y, cb2_m[_487].z);
    r1 = float4(_496.x, _496.y, _496.z, r1.w);
    int _506 = asint(r0.z) + 5;
    float3 _516 = (r0.yyy * r1.xyz) + float3(cb2_m[_506].x, cb2_m[_506].y, cb2_m[_506].z);
    r1 = float4(_516.x, _516.y, _516.z, r1.w);
    int _521 = asint(r0.z);
    int _534 = asint(r0.z) + 1;
    float3 _543 = (-float3(cb2_m[_521].x, cb2_m[_521].y, cb2_m[_521].z)) + float3(cb2_m[_534].x, cb2_m[_534].y, cb2_m[_534].z);
    r2 = float4(_543.x, _543.y, _543.z, r2.w);
    int _553 = asint(r0.z);
    float3 _563 = (r0.yyy * r2.xyz) + float3(cb2_m[_553].x, cb2_m[_553].y, cb2_m[_553].z);
    r0 = float4(r0.x, _563.x, _563.y, _563.z);
    float3 _571 = (-r0.yzw) + r1.xyz;
    r1 = float4(_571.x, _571.y, _571.z, r1.w);
    float3 _581 = (r0.xxx * r1.xyz) + r0.yzw;
    o2 = float4(_581.x, _581.y, _581.z, o2.w);
    r0 = float4(shader_in[0].xz.x, shader_in[0].xz.y, r0.z, r0.w);
    float2 _598 = r0.xy * float2(cb2_m[10].x, cb2_m[10].z);
    r0 = float4(_598.x, r0.y, _598.y, r0.w);
    float4 _608 = r1;
    _608.x = shader_in[0].y + cb2_m[10].w;
    r1 = _608;
    float4 _621 = r0;
    _621.y = (r1.x * cb2_m[10].y) + (-cb2_m[10].w);
    r0 = _621;
    float4 _624 = r0;
    _624.w = asfloat(1065353216u);
    r0 = _624;
    float4 _635 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _649 = r1;
    _649.x = mad(_635.w, r0.w, mad(_635.z, r0.z, mad(_635.y, r0.y, _635.x * r0.x)));
    r1 = _649;
    float4 _658 = r1;
    _658.x = r1.x + (-cb0_m[11].y);
    r1 = _658;
    float4 _667 = r1;
    _667.y = r1.x + cb2_m[12].x;
    r1 = _667;
    float4 _678 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _692 = r1;
    _692.x = mad(_678.w, r0.w, mad(_678.z, r0.z, mad(_678.y, r0.y, _678.x * r0.x)));
    r1 = _692;
    float4 _703 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _717 = r1;
    _717.z = mad(_703.w, r0.w, mad(_703.z, r0.z, mad(_703.y, r0.y, _703.x * r0.x)));
    r1 = _717;
    float3 _730 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_730.x, _730.y, _730.z, r0.w);
    float4 _740 = r0;
    _740.w = r0.y * cb0_m[13].x;
    r0 = _740;
    float4 _747 = r1;
    _747.x = r0.w * asfloat(3216550459u);
    r1 = _747;
    float4 _752 = r1;
    _752.x = exp2(r1.x);
    r1 = _752;
    float4 _759 = r1;
    _759.x = (-r1.x) + asfloat(1065353216u);
    r1 = _759;
    float4 _766 = r0;
    _766.w = r1.x / r0.w;
    r0 = _766;
    float4 _776 = r1;
    _776.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _776;
    float4 _791 = r0;
    _791.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _791;
    float4 _796 = r0;
    _796.x = sqrt(r0.x);
    r0 = _796;
    float4 _804 = r0;
    _804.x = r0.x * cb0_m[13].y;
    r0 = _804;
    float4 _814 = r0;
    _814.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _814;
    float4 _826 = r0;
    _826.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _826;
    float4 _832 = r0;
    _832.x = exp2(-r0.x);
    r0 = _832;
    float4 _838 = r0;
    _838.x = min(r0.x, asfloat(1065353216u));
    r0 = _838;
    float4 _845 = o2;
    _845.w = (-r0.x) + asfloat(1065353216u);
    o2 = _845;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
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
