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
static float4 o2;
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
    float3 _258 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_258.x, _258.y, _258.z, r0.w);
    float3 _273 = shader_in[1].zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r1 = float4(_273.x, _273.y, _273.z, r1.w);
    float3 _292 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * shader_in[1].xyz) + (-r1.xyz);
    r1 = float4(_292.x, _292.y, _292.z, r1.w);
    float4 _308 = r0;
    _308.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _308;
    float4 _313 = r0;
    _313.w = rsqrt(r0.w);
    r0 = _313;
    float3 _319 = r0.www * r1.xyz;
    r1 = float4(_319.x, _319.y, _319.z, r1.w);
    float3 _327 = r1.xyz * shader_in[1].zxy;
    r2 = float4(_327.x, _327.y, _327.z, r2.w);
    float3 _340 = (shader_in[1].yzx * r1.yzx) + (-r2.xyz);
    r1 = float4(_340.x, _340.y, _340.z, r1.w);
    float4 _356 = r0;
    _356.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _356;
    float4 _361 = r0;
    _361.w = rsqrt(r0.w);
    r0 = _361;
    float3 _367 = r0.www * r1.xyz;
    r1 = float4(_367.x, _367.y, _367.z, r1.w);
    float3 _377 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _389 = r2;
    _389.x = mad(_377.z, r1.xyz.z, mad(_377.y, r1.xyz.y, _377.x * r1.xyz.x));
    r2 = _389;
    float3 _398 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _410 = r2;
    _410.y = mad(_398.z, r1.xyz.z, mad(_398.y, r1.xyz.y, _398.x * r1.xyz.x));
    r2 = _410;
    float3 _419 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _431 = r2;
    _431.z = mad(_419.z, r1.xyz.z, mad(_419.y, r1.xyz.y, _419.x * r1.xyz.x));
    r2 = _431;
    float3 _440 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _452 = o2;
    _452.x = mad(_440.z, r1.xyz.z, mad(_440.y, r1.xyz.y, _440.x * r1.xyz.x));
    o2 = _452;
    float4 _467 = r0;
    _467.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _467;
    float4 _472 = r0;
    _472.w = rsqrt(r0.w);
    r0 = _472;
    float3 _478 = r0.www * r2.xyz;
    r1 = float4(_478.x, _478.y, _478.z, r1.w);
    float3 _488 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _500 = o1;
    _500.x = mad(_488.z, r1.xyz.z, mad(_488.y, r1.xyz.y, _488.x * r1.xyz.x));
    o1 = _500;
    float3 _509 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _522 = r2;
    _522.x = mad(_509.z, shader_in[1].xyz.z, mad(_509.y, shader_in[1].xyz.y, _509.x * shader_in[1].xyz.x));
    r2 = _522;
    float3 _531 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _544 = r2;
    _544.y = mad(_531.z, shader_in[1].xyz.z, mad(_531.y, shader_in[1].xyz.y, _531.x * shader_in[1].xyz.x));
    r2 = _544;
    float3 _553 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _566 = r2;
    _566.z = mad(_553.z, shader_in[1].xyz.z, mad(_553.y, shader_in[1].xyz.y, _553.x * shader_in[1].xyz.x));
    r2 = _566;
    float4 _581 = r0;
    _581.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _581;
    float4 _586 = r0;
    _586.w = rsqrt(r0.w);
    r0 = _586;
    float3 _592 = r0.www * r2.xyz;
    r2 = float4(_592.x, _592.y, _592.z, r2.w);
    float3 _599 = r1.yzx * r2.zxy;
    r3 = float4(_599.x, _599.y, _599.z, r3.w);
    float3 _611 = (r2.yzx * r1.zxy) + (-r3.xyz);
    r1 = float4(_611.x, r1.y, _611.y, _611.z);
    float4 _616 = o5;
    _616.x = r1.y;
    o5 = _616;
    float3 _625 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _628 = -r1.xzw;
    float3 _638 = o1;
    _638.y = mad(_625.z, _628.z, mad(_625.y, _628.y, _625.x * _628.x));
    o1 = _638;
    float3 _647 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _659 = o1;
    _659.z = mad(_647.z, r2.xyz.z, mad(_647.y, r2.xyz.y, _647.x * r2.xyz.x));
    o1 = _659;
    float4 _663 = o5;
    _663.z = r2.y;
    o5 = _663;
    float3 _672 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _684 = o2;
    _684.y = mad(_672.z, r1.xzw.z, mad(_672.y, r1.xzw.y, _672.x * r1.xzw.x));
    o2 = _684;
    float4 _689 = o5;
    _689.y = -r1.z;
    o5 = _689;
    float3 _698 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _711 = o2;
    _711.z = mad(_698.z, shader_in[1].xyz.z, mad(_698.y, shader_in[1].xyz.y, _698.x * shader_in[1].xyz.x));
    o2 = _711;
    float3 _725 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_725.x, _725.y, _725.z, r1.w);
    float3 _737 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _747 = r2;
    _747.x = mad(r1.xyz.z, _737.z, mad(r1.xyz.y, _737.y, r1.xyz.x * _737.x));
    r2 = _747;
    float3 _758 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _768 = r2;
    _768.z = mad(r1.xyz.z, _758.z, mad(r1.xyz.y, _758.y, r1.xyz.x * _758.x));
    r2 = _768;
    float3 _779 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _789 = r0;
    _789.w = mad(r1.xyz.z, _779.z, mad(r1.xyz.y, _779.y, r1.xyz.x * _779.x));
    r0 = _789;
    float4 _798 = r0;
    _798.w = r0.w * cb5_m[5].y;
    r0 = _798;
    float2 _809 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_809.x, r1.y, _809.y, r1.w);
    float4 _814 = o2;
    _814.w = r1.z;
    o2 = _814;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _845 = r1;
    _845.z = r0.y * cb0_m[13].x;
    r1 = _845;
    float4 _852 = r1;
    _852.w = r1.z * asfloat(3216550459u);
    r1 = _852;
    float4 _857 = r1;
    _857.w = exp2(r1.w);
    r1 = _857;
    float4 _864 = r1;
    _864.w = (-r1.w) + asfloat(1065353216u);
    r1 = _864;
    float4 _871 = r1;
    _871.z = r1.w / r1.z;
    r1 = _871;
    float4 _883 = r1;
    _883.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _883;
    float4 _898 = r0;
    _898.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _898;
    float4 _903 = r0;
    _903.x = sqrt(r0.x);
    r0 = _903;
    float4 _911 = r0;
    _911.x = r0.x * cb0_m[13].y;
    r0 = _911;
    float4 _921 = r0;
    _921.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _921;
    float4 _933 = r0;
    _933.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _933;
    float4 _939 = r0;
    _939.x = exp2(-r0.x);
    r0 = _939;
    float4 _945 = r0;
    _945.x = min(r0.x, asfloat(1065353216u));
    r0 = _945;
    float4 _952 = o5;
    _952.w = (-r0.x) + asfloat(1065353216u);
    o5 = _952;
    float4 _956 = r0;
    _956.x = asfloat(3212836864u);
    r0 = _956;
    float4 _963 = r1;
    _963.y = r0.w * r0.x;
    r1 = _963;
    float2 _971 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_971.x, _971.y, o6.z, o6.w);
    float2 _977 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _977.x, _977.y);
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
