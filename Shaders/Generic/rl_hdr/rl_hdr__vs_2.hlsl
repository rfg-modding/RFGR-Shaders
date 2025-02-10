cbuffer cb0_t : register(b160)
{
    float4 cb0_m[16] : packoffset(c0);
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
static float3 v0;
static float2 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float4 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 o6;
static float4 o7;
static float4 o8;
static float4 o9;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    o0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, o0.w);
    float4 _56 = o0;
    _56.w = asfloat(1065353216u);
    o0 = _56;
    float2 _72 = shader_in[1].xy + float2(cb0_m[15].x, cb0_m[15].y);
    r0 = float4(r0.x, r0.y, _72.x, _72.y);
    float4 _78 = r1;
    _78.w = asfloat(1065353216u);
    r1 = _78;
    float3 _88 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r2 = float4(_88.x, _88.y, _88.z, r2.w);
    float4 _93 = r2;
    _93.w = asfloat(1065353216u);
    r2 = _93;
    float4 _104 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _118 = r1;
    _118.x = mad(_104.w, r2.w, mad(_104.z, r2.z, mad(_104.y, r2.y, _104.x * r2.x)));
    r1 = _118;
    float4 _129 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _143 = r1;
    _143.y = mad(_129.w, r2.w, mad(_129.z, r2.z, mad(_129.y, r2.y, _129.x * r2.x)));
    r1 = _143;
    float4 _155 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _169 = r1;
    _169.z = mad(_155.w, r2.w, mad(_155.z, r2.z, mad(_155.y, r2.y, _155.x * r2.x)));
    r1 = _169;
    float4 _180 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _194 = r2;
    _194.x = mad(_180.w, r1.w, mad(_180.z, r1.z, mad(_180.y, r1.y, _180.x * r1.x)));
    r2 = _194;
    float4 _206 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _220 = r2;
    _220.y = mad(_206.w, r1.w, mad(_206.z, r1.z, mad(_206.y, r1.y, _206.x * r1.x)));
    r2 = _220;
    float4 _231 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _245 = r1;
    _245.x = mad(_231.w, r1.w, mad(_231.z, r1.z, mad(_231.y, r1.y, _231.x * r1.x)));
    r1 = _245;
    float4 _253 = r1;
    _253.x = (-r1.x) / r2.y;
    r1 = _253;
    float4 _260 = r1;
    _260.y = r2.x / r2.y;
    r1 = _260;
    float4 _269 = r0;
    _269.x = (r1.y * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _269;
    float4 _277 = r0;
    _277.y = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _277;
    o1 = r0;
    o2 = float4(r0.zw.x, r0.zw.y, o2.z, o2.w);
    float2 _290 = (-r0.xy) + shader_in[1].xy;
    r0 = float4(r0.x, r0.y, _290.x, _290.y);
    float2 _302 = (r0.zw * asfloat(uint2(1062731776u, 1062731776u))) + r0.xy;
    r1 = float4(_302.x, _302.y, r1.z, r1.w);
    float2 _313 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o2 = float4(o2.x, o2.y, _313.x, _313.y);
    float2 _324 = (r0.zw * asfloat(uint2(1061645940u, 1061645940u))) + r0.xy;
    r1 = float4(_324.x, _324.y, r1.z, r1.w);
    float2 _335 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o3 = float4(_335.x, _335.y, o3.z, o3.w);
    float2 _346 = (r0.zw * asfloat(uint2(1060812749u, 1060812749u))) + r0.xy;
    r1 = float4(_346.x, _346.y, r1.z, r1.w);
    float2 _357 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o3 = float4(o3.x, o3.y, _357.x, _357.y);
    float2 _368 = (r0.zw * asfloat(uint2(1060110336u, 1060110336u))) + r0.xy;
    r1 = float4(_368.x, _368.y, r1.z, r1.w);
    float2 _379 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o4 = float4(_379.x, _379.y, o4.z, o4.w);
    float2 _390 = (r0.zw * asfloat(uint2(1059491498u, 1059491498u))) + r0.xy;
    r1 = float4(_390.x, _390.y, r1.z, r1.w);
    float2 _401 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o4 = float4(o4.x, o4.y, _401.x, _401.y);
    float2 _412 = (r0.zw * asfloat(uint2(1058932026u, 1058932026u))) + r0.xy;
    r1 = float4(_412.x, _412.y, r1.z, r1.w);
    float2 _423 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o5 = float4(_423.x, _423.y, o5.z, o5.w);
    float2 _434 = (r0.zw * asfloat(uint2(1058417538u, 1058417538u))) + r0.xy;
    r1 = float4(_434.x, _434.y, r1.z, r1.w);
    float2 _445 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o5 = float4(o5.x, o5.y, _445.x, _445.y);
    float2 _456 = (r0.zw * asfloat(uint2(1057938664u, 1057938664u))) + r0.xy;
    r1 = float4(_456.x, _456.y, r1.z, r1.w);
    float2 _467 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o6 = float4(_467.x, _467.y, o6.z, o6.w);
    float2 _478 = (r0.zw * asfloat(uint2(1057488896u, 1057488896u))) + r0.xy;
    r1 = float4(_478.x, _478.y, r1.z, r1.w);
    float2 _489 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o6 = float4(o6.x, o6.y, _489.x, _489.y);
    float2 _500 = (r0.zw * asfloat(uint2(1057063495u, 1057063495u))) + r0.xy;
    r1 = float4(_500.x, _500.y, r1.z, r1.w);
    float2 _511 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o7 = float4(_511.x, _511.y, o7.z, o7.w);
    float2 _522 = (r0.zw * asfloat(uint2(1056353158u, 1056353158u))) + r0.xy;
    r1 = float4(_522.x, _522.y, r1.z, r1.w);
    float2 _533 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o7 = float4(o7.x, o7.y, _533.x, _533.y);
    float2 _544 = (r0.zw * asfloat(uint2(1055579955u, 1055579955u))) + r0.xy;
    r1 = float4(_544.x, _544.y, r1.z, r1.w);
    float2 _555 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o8 = float4(_555.x, _555.y, o8.z, o8.w);
    float2 _566 = (r0.zw * asfloat(uint2(1054838351u, 1054838351u))) + r0.xy;
    r1 = float4(_566.x, _566.y, r1.z, r1.w);
    float2 _577 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o8 = float4(o8.x, o8.y, _577.x, _577.y);
    float2 _588 = (r0.zw * asfloat(uint2(1054124763u, 1054124763u))) + r0.xy;
    r1 = float4(_588.x, _588.y, r1.z, r1.w);
    float2 _599 = (r0.zw * asfloat(uint2(1053436237u, 1053436237u))) + r0.xy;
    r0 = float4(_599.x, _599.y, r0.z, r0.w);
    float2 _610 = r0.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o9 = float4(o9.x, o9.y, _610.x, _610.y);
    float2 _621 = r1.xy + float2(cb0_m[15].x, cb0_m[15].y);
    o9 = float4(_621.x, _621.y, o9.z, o9.w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
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
