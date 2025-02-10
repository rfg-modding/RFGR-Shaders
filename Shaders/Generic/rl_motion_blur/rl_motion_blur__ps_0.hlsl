cbuffer cb2_t : register(b2)
{
    float4 cb2_m[5] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float2 _57 = (shader_in[1].xy * asfloat(uint2(1073741824u, 1073741824u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(r0.x, _57.x, _57.y, r0.w);
    float3 _77 = r0.zzz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].w);
    r1 = float4(_77.x, _77.y, _77.z, r1.w);
    float3 _94 = (r0.yyy * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].w)) + r1.xyz;
    r1 = float4(_94.x, _94.y, _94.z, r1.w);
    float3 _111 = (r0.xxx * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].w)) + r1.xyz;
    r1 = float4(_111.x, _111.y, _111.z, r1.w);
    float3 _125 = r1.xyz + float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].w);
    r1 = float4(_125.x, _125.y, _125.z, r1.w);
    float2 _132 = r1.xy / r1.zz;
    r0 = float4(_132.x, r0.y, r0.z, _132.y);
    float2 _140 = (-r0.xw) + r0.yz;
    r0 = float4(_140.x, _140.y, r0.z, r0.w);
    float2 _148 = r0.xy * asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_148.x, _148.y, r0.z, r0.w);
    float2 _160 = max(r0.xy, -cb2_m[4].z.xx);
    r0 = float4(_160.x, _160.y, r0.z, r0.w);
    float2 _169 = min(r0.xy, cb2_m[4].z.xx);
    r0 = float4(_169.x, _169.y, r0.z, r0.w);
    float4 _178 = r0;
    _178.z = cb2_m[4].w * asfloat(1036831949u);
    r0 = _178;
    float2 _188 = (r0.xy * r0.zz) + shader_in[1].xy;
    r1 = float4(_188.x, _188.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _211 = r1.xyz + r2.xyz;
    r1 = float4(_211.x, _211.y, _211.z, r1.w);
    float2 _218 = r0.zz * r0.xy;
    r2 = float4(_218.x, _218.y, r2.z, r2.w);
    float2 _230 = ((-r0.xy) * r0.zz) + shader_in[1].xy;
    r0 = float4(_230.x, _230.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float2 _247 = (r2.xy * asfloat(uint2(1073741824u, 1073741824u))) + shader_in[1].xy;
    r2 = float4(r2.x, r2.y, _247.x, _247.y);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, r2.zwzz.xy);
    float3 _262 = r1.xyz + r3.xyz;
    r1 = float4(_262.x, _262.y, _262.z, r1.w);
    r3 = (r2.xyxy * asfloat(uint4(1077936128u, 1077936128u, 1082130432u, 1082130432u))) + shader_in[1].xyxy;
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, r3.xyxx.xy);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, r3.zwzz.xy);
    float3 _296 = r1.xyz + r4.xyz;
    r1 = float4(_296.x, _296.y, _296.z, r1.w);
    float3 _303 = r3.xyz + r1.xyz;
    r1 = float4(_303.x, _303.y, _303.z, r1.w);
    float3 _310 = r0.xyz + r1.xyz;
    r0 = float4(_310.x, _310.y, _310.z, r0.w);
    float2 _321 = ((-r2.xy) * asfloat(uint2(1073741824u, 1073741824u))) + shader_in[1].xy;
    r1 = float4(_321.x, _321.y, r1.z, r1.w);
    r2 = ((-r2.xyxy) * asfloat(uint4(1077936128u, 1077936128u, 1082130432u, 1082130432u))) + shader_in[1].xyxy;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    float3 _344 = r0.xyz + r1.xyz;
    r0 = float4(_344.x, _344.y, _344.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r2.xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r2.zwzz.xy);
    float3 _365 = r0.xyz + r1.xyz;
    r0 = float4(_365.x, _365.y, _365.z, r0.w);
    float3 _372 = r2.xyz + r0.xyz;
    r0 = float4(_372.x, _372.y, _372.z, r0.w);
    float3 _381 = r0.xyz * asfloat(uint3(1038323257u, 1038323257u, 1038323257u));
    o0 = float4(_381.x, _381.y, _381.z, o0.w);
    float4 _385 = o0;
    _385.w = asfloat(0u);
    o0 = _385;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
