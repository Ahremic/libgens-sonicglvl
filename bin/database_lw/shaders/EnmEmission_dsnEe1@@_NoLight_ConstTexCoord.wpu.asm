//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampSpe;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLuminanceRange                     c63      1
//   g_aLightField                         c77      6
//   g_MtxView                             c90      3
//   g_EmissionParam                       c150     1
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   sampEmi                               s4       1
//   sampDLScatter                         s9       1
//

    ps_3_0
    def c0, 0.5, -0.0500000007, 1.05263162, 10
    def c1, 2, -1, 0, 1
    def c2, 4, 0.5, -0.5, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    nrm_pp r0.xyz, v6
    texld_pp r1, v1, s2
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c1.x, c1.y
    mul_pp r0.xyz, r0, r1.y
    nrm_pp r2.xyz, v5
    mad_pp r0.xyz, r1.x, r2, r0
    dp2add_sat_pp r0.w, r1, r1, c1.z
    add r0.w, -r0.w, c1.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r1.xyz, v3
    mad_pp r0.xyz, r0.w, r1, r0
    mul r1, r0.y, c91
    mad r1, r0.x, c90, r1
    mad r1, r0.z, c92, r1
    dp4 r0.w, r1, r1
    rsq r0.w, r0.w
    mul r1.xy, r0.w, r1
    mad_pp r1.xy, r1, c2.yzzw, c2.y
    texld_pp r1, r1, s3
    mul_pp r1.xyz, r1, c63.x
    texld_pp r2, v0, s1
    mul_pp r1.xyz, r1, r2.w
    add_pp r3.xyz, c22, -v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mad_pp r3.xyz, r3, r0.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.w, r4, r0
    mov r1.w, c0.w
    mul_pp r1.w, r1.w, c20.y
    exp_pp r1.w, r1.w
    mul_pp r1.w, r1.w, c2.x
    pow_pp r2.w, r0.w, r1.w
    mov r3, c77
    mul_pp r0.w, r3.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mul_pp r4.xyz, r0.w, c37
    mul_pp r4.xyz, r4, c18
    mad_pp r1.xyz, r4, r2, r1
    mul_pp r1.xyz, r1, v3.w
    mad_pp r2.xyz, r0, c0.x, c0.x
    mov r4.xyz, c80
    mad r4.xyz, r4, r2.y, c79
    mul_pp r5.xyz, r0, r0
    dp3_pp r0.x, r0, -c10
    add_pp r0.x, r0.x, c0.y
    mul_sat_pp r0.x, r0.x, c0.z
    mul_pp r0.xyz, r0.x, c36
    mul r4.xyz, r4, r5.y
    mad r2.xyw, c78.xyzz, r2.x, r3.xyzz
    mov r3.xyz, c82
    mad r3.xyz, r3, r2.z, c81
    mad_pp r2.xyz, r5.x, r2.xyww, r4
    mad_pp r2.xyz, r5.z, r3, r2
    mad_pp r0.xyz, r0, c77.w, r2
    mul_pp r0.xyz, r0, c16
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r1.w, r2.w, c16.w
    texld r2, v1.zwzw, s4
    add_pp r2.xyz, r2, c150
    mul_pp r2.xyz, r2, c17
    mad_pp r1.xyz, r2, c150.w, r0
    mul_pp r0, r1, v7
    mul_pp oC0.w, r0.w, c21.x
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 80 instruction slots used (6 texture, 74 arithmetic)