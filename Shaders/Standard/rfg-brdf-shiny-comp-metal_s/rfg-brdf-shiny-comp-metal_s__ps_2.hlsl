cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[8] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;
static float3 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    float4 _67 = r0;
    _67.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _67;
    float4 _77 = r0;
    _77.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _77;
    float4 _87 = r0;
    _87.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _87;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _115 = r0.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r0 = float4(_115.x, _115.y, _115.z, r0.w);
    float4 _134 = r0;
    _134.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _134;
    float4 _139 = r0;
    _139.w = rsqrt(r0.w);
    r0 = _139;
    float3 _146 = r0.www * shader_in[2].xyz;
    r1 = float4(_146.x, _146.y, _146.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _165 = r3;
    _165.y = r2.y + r2.y;
    r3 = _165;
    float3 _177 = (r2.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _177.x, _177.y, _177.z);
    float4 _185 = r2;
    _185.x = r2.w * r2.y;
    r2 = _185;
    float4 _197 = r0;
    _197.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r0 = _197;
    float4 _204 = r0;
    _204.w = (-r0.w) + asfloat(1065353216u);
    r0 = _204;
    float4 _210 = r0;
    _210.w = max(r0.w, asfloat(0u));
    r0 = _210;
    float4 _215 = r3;
    _215.z = sqrt(r0.w);
    r3 = _215;
    float4 _219 = r3;
    _219.x = r2.x;
    r3 = _219;
    float3 _226 = r3.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r2 = float4(_226.x, _226.y, _226.z, r2.w);
    float3 _239 = (cb2_m[7].z.xxx * r2.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r2 = float4(_239.x, _239.y, _239.z, r2.w);
    float4 _255 = r0;
    _255.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _255;
    float4 _260 = r0;
    _260.w = rsqrt(r0.w);
    r0 = _260;
    float3 _266 = r0.www * r2.xyz;
    r2 = float4(_266.x, _266.y, _266.z, r2.w);
    float4 _285 = r0;
    _285.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _285;
    float4 _290 = r0;
    _290.w = rsqrt(r0.w);
    r0 = _290;
    float3 _297 = r0.www * shader_in[3].xyz;
    r3 = float4(_297.x, _297.y, _297.z, r3.w);
    float3 _308 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r4 = float4(_308.x, _308.y, _308.z, r4.w);
    float4 _325 = r0;
    _325.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _325;
    float4 _330 = r0;
    _330.w = rsqrt(r0.w);
    r0 = _330;
    float3 _336 = r0.www * r4.xyz;
    r4 = float4(_336.x, _336.y, _336.z, r4.w);
    float4 _352 = r0;
    _352.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _352;
    float4 _367 = r1;
    _367.x = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    r1 = _367;
    float4 _382 = r1;
    _382.y = mad(r2.xyz.z, r4.xyz.z, mad(r2.xyz.y, r4.xyz.y, r2.xyz.x * r4.xyz.x));
    r1 = _382;
    float4 _391 = r1;
    _391.z = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _391;
    float4 _397 = r0;
    _397.w = max(r0.w, asfloat(0u));
    r0 = _397;
    float3 _403 = max(r1.xyz, asfloat(uint3(0u, 0u, 0u)));
    r1 = float4(_403.x, _403.y, _403.z, r1.w);
    float4 _411 = r1;
    _411.w = r0.w * r0.w;
    r1 = _411;
    float4 _418 = r1;
    _418.w = r1.w * r1.w;
    r1 = _418;
    float4 _425 = r1;
    _425.w = r0.w * r1.w;
    r1 = _425;
    float4 _432 = r2;
    _432.x = r0.w * r1.x;
    r2 = _432;
    float4 _437 = r2;
    _437.x = log2(r2.x);
    r2 = _437;
    float4 _444 = r2;
    _444.x = r2.x * asfloat(1074580685u);
    r2 = _444;
    float4 _449 = r2;
    _449.x = exp2(r2.x);
    r2 = _449;
    float4 _456 = r1;
    _456.x = (-r1.x) + asfloat(1065353216u);
    r1 = _456;
    float4 _463 = r1;
    _463.x = r1.x * r1.z;
    r1 = _463;
    float4 _470 = r2;
    _470.y = r1.x * r1.x;
    r2 = _470;
    float4 _477 = r1;
    _477.x = r1.x * r2.y;
    r1 = _477;
    float4 _484 = r1;
    _484.x = r1.z * r1.x;
    r1 = _484;
    float4 _494 = r1;
    _494.x = clamp(r1.x * asfloat(1082130432u), 0.0f, 1.0f);
    r1 = _494;
    float3 _506 = r2.xxx * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_506.x, _506.y, _506.z, r2.w);
    float3 _522 = (float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z) * r1.www) + r2.xyz;
    r2 = float4(_522.x, _522.y, _522.z, r2.w);
    float3 _538 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r1.xxx) + r2.xyz;
    r1 = float4(_538.x, r1.y, _538.y, _538.z);
    float4 _546 = r1;
    _546.y = r1.y + asfloat(953267991u);
    r1 = _546;
    float4 _551 = r1;
    _551.y = log2(r1.y);
    r1 = _551;
    float2 _560 = r1.yy * asfloat(uint2(1132593152u, 1109393408u));
    r2 = float4(_560.x, _560.y, r2.z, r2.w);
    float2 _565 = exp2(r2.xy);
    r2 = float4(_565.x, _565.y, r2.z, r2.w);
    float2 _572 = min(r2.xy, asfloat(uint2(1065353216u, 1065353216u)));
    r2 = float4(_572.x, _572.y, r2.z, r2.w);
    float2 _585 = (r2.xy * asfloat(uint2(1067030938u, 1069547520u))) + asfloat(uint2(0u, 3184315597u));
    r2 = float4(_585.x, _585.y, r2.z, r2.w);
    float4 _589 = r2;
    _589.z = asfloat(1065353216u);
    r2 = _589;
    float3 _594 = max(r2.xyz, asfloat(uint3(0u, 0u, 0u)));
    r2 = float4(_594.x, _594.y, _594.z, r2.w);
    float4 _604 = r1;
    _604.y = asfloat((r0.w >= asfloat(981668463u)) ? 4294967295u : 0u);
    r1 = _604;
    float4 _611 = r1;
    _611.y = asfloat(asuint(r1.y) & 1065353216u);
    r1 = _611;
    float3 _617 = r1.yyy * r2.xyz;
    r2 = float4(_617.x, _617.y, _617.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _632 = r0.www * r2.xyz;
    r2 = float4(_632.x, _632.y, _632.z, r2.w);
    float3 _639 = r3.xyz * r2.xyz;
    r2 = float4(_639.x, _639.y, _639.z, r2.w);
    float3 _653 = r2.yyy * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_653.x, _653.y, _653.z, r3.w);
    float3 _669 = (float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z) * r2.xxx) + r3.xyz;
    r2 = float4(_669.x, _669.y, r2.z, _669.z);
    float3 _686 = (float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z) * r2.zzz) + r2.xyw;
    r2 = float4(_686.x, _686.y, _686.z, r2.w);
    float3 _696 = r2.xyz * cb2_m[7].w.xxx;
    r2 = float4(_696.x, _696.y, _696.z, r2.w);
    float3 _706 = (r1.xzw * r0.xyz) + r2.xyz;
    r0 = float4(_706.x, _706.y, _706.z, r0.w);
    float3 _719 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_719.x, _719.y, _719.z, o0.w);
    float4 _723 = o0;
    _723.w = asfloat(1065353216u);
    o0 = _723;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
