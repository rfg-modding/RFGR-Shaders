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

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static float3 v1;
static float4 v2;
static float4 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[5];
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
    float4 _50 = r0;
    _50.w = asfloat(1065353216u);
    r0 = _50;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _61 = r1;
    _61.w = asfloat(1065353216u);
    r1 = _61;
    float4 _79 = r0;
    _79.x = mad(shader_in[2].w, r1.w, mad(shader_in[2].z, r1.z, mad(shader_in[2].y, r1.y, shader_in[2].x * r1.x)));
    r0 = _79;
    float4 _97 = r0;
    _97.y = mad(shader_in[3].w, r1.w, mad(shader_in[3].z, r1.z, mad(shader_in[3].y, r1.y, shader_in[3].x * r1.x)));
    r0 = _97;
    float4 _115 = r0;
    _115.z = mad(shader_in[4].w, r1.w, mad(shader_in[4].z, r1.z, mad(shader_in[4].y, r1.y, shader_in[4].x * r1.x)));
    r0 = _115;
    float4 _131 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _145 = o0;
    _145.x = mad(_131.w, r0.w, mad(_131.z, r0.z, mad(_131.y, r0.y, _131.x * r0.x)));
    o0 = _145;
    float4 _157 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _171 = o0;
    _171.y = mad(_157.w, r0.w, mad(_157.z, r0.z, mad(_157.y, r0.y, _157.x * r0.x)));
    o0 = _171;
    float4 _182 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _196 = o0;
    _196.z = mad(_182.w, r0.w, mad(_182.z, r0.z, mad(_182.y, r0.y, _182.x * r0.x)));
    o0 = _196;
    float4 _207 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _221 = o0;
    _221.w = mad(_207.w, r0.w, mad(_207.z, r0.z, mad(_207.y, r0.y, _207.x * r0.x)));
    o0 = _221;
    float3 _235 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_235.x, _235.y, _235.z, r0.w);
    float3 _250 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_250.x, _250.y, _250.z, r1.w);
    float3 _269 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r1.xyz);
    r1 = float4(_269.x, _269.y, _269.z, r1.w);
    float4 _285 = r0;
    _285.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _285;
    float4 _290 = r0;
    _290.w = rsqrt(r0.w);
    r0 = _290;
    float3 _296 = r0.www * r1.xyz;
    r1 = float4(_296.x, _296.y, _296.z, r1.w);
    float3 _304 = r1.yzx * shader_in[1].zxy;
    r2 = float4(_304.x, _304.y, _304.z, r2.w);
    float3 _317 = (shader_in[1].yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_317.x, _317.y, _317.z, r2.w);
    float3 _327 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _339 = o2;
    _339.y = mad(_327.z, r1.xyz.z, mad(_327.y, r1.xyz.y, _327.x * r1.xyz.x));
    o2 = _339;
    float4 _354 = r0;
    _354.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _354;
    float4 _359 = r0;
    _359.w = rsqrt(r0.w);
    r0 = _359;
    float3 _365 = r0.www * r2.xyz;
    r1 = float4(_365.x, _365.y, _365.z, r1.w);
    float4 _382 = r2;
    _382.x = mad(shader_in[2].xyz.z, r1.xyz.z, mad(shader_in[2].xyz.y, r1.xyz.y, shader_in[2].xyz.x * r1.xyz.x));
    r2 = _382;
    float4 _398 = r2;
    _398.y = mad(shader_in[3].xyz.z, r1.xyz.z, mad(shader_in[3].xyz.y, r1.xyz.y, shader_in[3].xyz.x * r1.xyz.x));
    r2 = _398;
    float4 _414 = r2;
    _414.z = mad(shader_in[4].xyz.z, r1.xyz.z, mad(shader_in[4].xyz.y, r1.xyz.y, shader_in[4].xyz.x * r1.xyz.x));
    r2 = _414;
    float3 _423 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _435 = o2;
    _435.x = mad(_423.z, r1.xyz.z, mad(_423.y, r1.xyz.y, _423.x * r1.xyz.x));
    o2 = _435;
    float4 _450 = r0;
    _450.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _450;
    float4 _455 = r0;
    _455.w = rsqrt(r0.w);
    r0 = _455;
    float3 _461 = r0.www * r2.xyz;
    r1 = float4(_461.x, _461.y, _461.z, r1.w);
    float4 _479 = r2;
    _479.x = mad(shader_in[2].xyz.z, shader_in[1].xyz.z, mad(shader_in[2].xyz.y, shader_in[1].xyz.y, shader_in[2].xyz.x * shader_in[1].xyz.x));
    r2 = _479;
    float4 _496 = r2;
    _496.y = mad(shader_in[3].xyz.z, shader_in[1].xyz.z, mad(shader_in[3].xyz.y, shader_in[1].xyz.y, shader_in[3].xyz.x * shader_in[1].xyz.x));
    r2 = _496;
    float4 _513 = r2;
    _513.z = mad(shader_in[4].xyz.z, shader_in[1].xyz.z, mad(shader_in[4].xyz.y, shader_in[1].xyz.y, shader_in[4].xyz.x * shader_in[1].xyz.x));
    r2 = _513;
    float4 _528 = r0;
    _528.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _528;
    float4 _533 = r0;
    _533.w = rsqrt(r0.w);
    r0 = _533;
    float3 _539 = r0.www * r2.xyz;
    r2 = float4(_539.x, _539.y, _539.z, r2.w);
    float3 _546 = r1.yzx * r2.zxy;
    r3 = float4(_546.x, _546.y, _546.z, r3.w);
    float3 _558 = (r2.yzx * r1.zxy) + (-r3.xyz);
    r3 = float4(_558.x, _558.y, _558.z, r3.w);
    float3 _568 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _571 = -r3.xyz;
    float3 _581 = o1;
    _581.y = mad(_568.z, _571.z, mad(_568.y, _571.y, _568.x * _571.x));
    o1 = _581;
    float4 _586 = o5;
    _586.y = -r3.y;
    o5 = _586;
    float3 _595 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _607 = o1;
    _607.x = mad(_595.z, r1.xyz.z, mad(_595.y, r1.xyz.y, _595.x * r1.xyz.x));
    o1 = _607;
    float4 _611 = o5;
    _611.x = r1.y;
    o5 = _611;
    float3 _620 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _632 = o1;
    _632.z = mad(_620.z, r2.xyz.z, mad(_620.y, r2.xyz.y, _620.x * r2.xyz.x));
    o1 = _632;
    float4 _636 = o5;
    _636.z = r2.y;
    o5 = _636;
    float3 _645 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _658 = o2;
    _658.z = mad(_645.z, shader_in[1].xyz.z, mad(_645.y, shader_in[1].xyz.y, _645.x * shader_in[1].xyz.x));
    o2 = _658;
    float3 _672 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_672.x, _672.y, _672.z, r1.w);
    float3 _684 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _694 = r2;
    _694.x = mad(r1.xyz.z, _684.z, mad(r1.xyz.y, _684.y, r1.xyz.x * _684.x));
    r2 = _694;
    float3 _705 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _715 = r2;
    _715.z = mad(r1.xyz.z, _705.z, mad(r1.xyz.y, _705.y, r1.xyz.x * _705.x));
    r2 = _715;
    float3 _726 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _736 = r0;
    _736.w = mad(r1.xyz.z, _726.z, mad(r1.xyz.y, _726.y, r1.xyz.x * _726.x));
    r0 = _736;
    float4 _745 = r0;
    _745.w = r0.w * cb5_m[5].y;
    r0 = _745;
    float2 _756 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_756.x, r1.y, _756.y, r1.w);
    float4 _761 = o2;
    _761.w = r1.z;
    o2 = _761;
    o3 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o4 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _791 = r1;
    _791.z = r0.y * cb0_m[13].x;
    r1 = _791;
    float4 _798 = r1;
    _798.w = r1.z * asfloat(3216550459u);
    r1 = _798;
    float4 _803 = r1;
    _803.w = exp2(r1.w);
    r1 = _803;
    float4 _810 = r1;
    _810.w = (-r1.w) + asfloat(1065353216u);
    r1 = _810;
    float4 _817 = r1;
    _817.z = r1.w / r1.z;
    r1 = _817;
    float4 _829 = r1;
    _829.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _829;
    float4 _844 = r0;
    _844.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _844;
    float4 _849 = r0;
    _849.x = sqrt(r0.x);
    r0 = _849;
    float4 _857 = r0;
    _857.x = r0.x * cb0_m[13].y;
    r0 = _857;
    float4 _867 = r0;
    _867.y = (asuint(r1.w) != 0u) ? r1.z : asfloat(1065353216u);
    r0 = _867;
    float4 _879 = r0;
    _879.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _879;
    float4 _885 = r0;
    _885.x = exp2(-r0.x);
    r0 = _885;
    float4 _891 = r0;
    _891.x = min(r0.x, asfloat(1065353216u));
    r0 = _891;
    float4 _898 = o5;
    _898.w = (-r0.x) + asfloat(1065353216u);
    o5 = _898;
    float4 _902 = r0;
    _902.x = asfloat(3212836864u);
    r0 = _902;
    float4 _909 = r1;
    _909.y = r0.w * r0.x;
    r1 = _909;
    float2 _917 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    o6 = float4(_917.x, _917.y, o6.z, o6.w);
    float2 _923 = cb5_m[5].w.xx;
    o6 = float4(o6.x, o6.y, _923.x, _923.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
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
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
