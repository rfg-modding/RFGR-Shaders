cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 gl_FragCoord;
struct SPIRV_Cross_Input
{
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[1];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;
static float4 r7;
static float4 r8;
static float4 r9;
static float4 r10;
static float4 r11;
static float4 r12;
static float4 r13;
static float4 r14;
static float4 r15;

void ps_main()
{
    r0 = shader_in[0].xyxy + asfloat(uint4(3204448256u, 3204448256u, 3204448256u, 3204448256u));
    r1 = r0 * float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    r3 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(0u, 1056964608u, 1056964608u, 1056964608u))) + r1.zwzw;
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, r3.xyxx.xy);
    r5 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(0u, 1065353216u, 0u, 1069547520u))) + r1.zwzw;
    r6 = tex2D(SPIRV_Cross_Combinedt0s0, r5.xyxx.xy);
    r5 = tex2D(SPIRV_Cross_Combinedt0s0, r5.zwzz.xy).yzwx;
    r7 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(1056964608u, 0u, 1056964608u, 1065353216u))) + r1.zwzw;
    r8 = tex2D(SPIRV_Cross_Combinedt0s0, r7.xyxx.xy);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, r3.zwzz.xy);
    r7 = tex2D(SPIRV_Cross_Combinedt0s0, r7.zwzz.xy);
    r9 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(1056964608u, 1069547520u, 1065353216u, 0u))) + r1.zwzw;
    r10 = tex2D(SPIRV_Cross_Combinedt0s0, r9.xyxx.xy).yzwx;
    r9 = tex2D(SPIRV_Cross_Combinedt0s0, r9.zwzz.xy);
    r11 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(1065353216u, 1056964608u, 1065353216u, 1069547520u))) + r1.zwzw;
    r12 = tex2D(SPIRV_Cross_Combinedt0s0, r11.xyxx.xy);
    float2 _227 = (r0.zw * float2(cb0_m[6].z, cb0_m[6].w)) + float2(cb0_m[6].z, cb0_m[6].w);
    r0 = float4(_227.x, _227.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    r11 = tex2D(SPIRV_Cross_Combinedt0s0, r11.zwzz.xy).yzwx;
    r13 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(1069547520u, 0u, 1069547520u, 1056964608u))) + r1.zwzw;
    r14 = tex2D(SPIRV_Cross_Combinedt0s0, r13.xyxx.xy);
    r13 = tex2D(SPIRV_Cross_Combinedt0s0, r13.zwzz.xy);
    r1 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(1069547520u, 1065353216u, 1069547520u, 1069547520u))) + r1;
    r15 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy).yzwx;
    float4 _302 = r5;
    _302.x = r2.x;
    r5 = _302;
    float4 _306 = r5;
    _306.y = r4.x;
    r5 = _306;
    float4 _310 = r5;
    _310.z = r6.x;
    r5 = _310;
    float4 _314 = r10;
    _314.x = r8.x;
    r10 = _314;
    float4 _318 = r10;
    _318.y = r3.x;
    r10 = _318;
    float4 _322 = r10;
    _322.z = r7.x;
    r10 = _322;
    r2 = max(r5, r10);
    float4 _329 = r11;
    _329.x = r9.x;
    r11 = _329;
    float4 _333 = r11;
    _333.y = r12.x;
    r11 = _333;
    float4 _337 = r11;
    _337.z = r0.x;
    r11 = _337;
    r0 = max(r2, r11);
    float4 _344 = r1;
    _344.x = r14.x;
    r1 = _344;
    float4 _348 = r1;
    _348.y = r13.x;
    r1 = _348;
    float4 _352 = r1;
    _352.z = r15.x;
    r1 = _352;
    r0 = max(r0, r1);
    float2 _361 = max(r0.zw, r0.xy);
    r0 = float4(_361.x, _361.y, r0.z, r0.w);
    float4 _369 = r0;
    _369.x = max(r0.y, r0.x);
    r0 = _369;
    float4 _376 = r0;
    _376.x = r0.x + asfloat(925353388u);
    r0 = _376;
    float4 _388 = r0;
    _388.x = asfloat((r0.x >= shader_in[0].z) ? 4294967295u : 0u);
    r0 = _388;
    float4 _395 = r0;
    _395.x = asfloat(asuint(r0.x) & 1065353216u);
    r0 = _395;
    float2 _405 = r0.xx * float2(cb2_m[0].z, cb2_m[0].w);
    r0 = float4(_405.x, _405.y, r0.z, r0.w);
    float4 _417 = r0;
    _417.z = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _417;
    float4 _427 = r0;
    _427.w = asfloat((r0.y < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _427;
    float4 _437 = r0;
    _437.z = asfloat(asuint(r0.w) & asuint(r0.z));
    r0 = _437;
    if (asuint(r0.z) != 0u)
    {
        discard;
    }
    float2 _450 = float2(cb2_m[0].x, cb2_m[0].y);
    o0 = float4(_450.x, _450.y, o0.z, o0.w);
    o0 = float4(o0.x, o0.y, r0.xy.x, r0.xy.y);
}

void frag_main()
{
    float4 _460 = gl_FragCoord;
    _460.w = 1.0f / _460.w;
    shader_in[0] = float4(_460.xyz.x, _460.xyz.y, _460.xyz.z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    frag_main();
}
