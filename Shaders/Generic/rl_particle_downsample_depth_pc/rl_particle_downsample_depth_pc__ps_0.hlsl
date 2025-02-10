cbuffer cb2_t : register(b2)
{
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float gl_FragDepth;
static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float gl_FragDepth : DEPTH;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float2 _50 = shader_in[1].xy + float2(cb2_m[0].x, cb2_m[0].y);
    r0 = float4(_50.x, _50.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float2 _71 = shader_in[1].xy + float2(cb2_m[1].x, cb2_m[1].y);
    r0 = float4(r0.x, _71.x, _71.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.yzyy.xy);
    float4 _87 = r0;
    _87.x = max(r0.x, r1.x);
    r0 = _87;
    float2 _99 = shader_in[1].xy + float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(r0.x, _99.x, _99.y, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.yzyy.xy);
    float2 _119 = shader_in[1].xy + float2(cb2_m[3].x, cb2_m[3].y);
    r0 = float4(r0.x, _119.x, _119.y, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r0.yzyy.xy);
    float4 _135 = r0;
    _135.y = max(r1.x, r2.x);
    r0 = _135;
    float4 _142 = r0;
    _142.x = max(r0.y, r0.x);
    r0 = _142;
    float4 _146 = o0;
    _146.x = r0.x;
    o0 = _146;
    gl_FragDepth = (r0.x * cb2_m[4].y) + cb2_m[4].x;
    float3 _163 = asfloat(uint3(0u, 0u, 1065353216u));
    o0 = float4(o0.x, _163.x, _163.y, _163.z);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    ps_main();
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_FragDepth = gl_FragDepth;
    return stage_output;
}
