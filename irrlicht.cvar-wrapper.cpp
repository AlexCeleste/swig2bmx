#include "include/irrlicht.h"

using namespace irr;
using namespace core;
using namespace scene;
using namespace io;
using namespace quake3;
using namespace video;
using namespace gui;

template<typename T> T f(T x) { return x; }

extern "C" {
typeof(f(ROUNDING_ERROR_S32)) MAXGETTER_ROUNDING_ERROR_S32() { return f(ROUNDING_ERROR_S32); }
typeof(f(ROUNDING_ERROR_S64)) MAXGETTER_ROUNDING_ERROR_S64() { return f(ROUNDING_ERROR_S64); }
typeof(f(ROUNDING_ERROR_f32)) MAXGETTER_ROUNDING_ERROR_f32() { return f(ROUNDING_ERROR_f32); }
typeof(f(ROUNDING_ERROR_f64)) MAXGETTER_ROUNDING_ERROR_f64() { return f(ROUNDING_ERROR_f64); }
typeof(f(PI)) MAXGETTER_PI() { return f(PI); }
typeof(f(RECIPROCAL_PI)) MAXGETTER_RECIPROCAL_PI() { return f(RECIPROCAL_PI); }
typeof(f(HALF_PI)) MAXGETTER_HALF_PI() { return f(HALF_PI); }
typeof(f(PI64)) MAXGETTER_PI64() { return f(PI64); }
typeof(f(RECIPROCAL_PI64)) MAXGETTER_RECIPROCAL_PI64() { return f(RECIPROCAL_PI64); }
typeof(f(DEGTORAD)) MAXGETTER_DEGTORAD() { return f(DEGTORAD); }
typeof(f(RADTODEG)) MAXGETTER_RADTODEG() { return f(RADTODEG); }
typeof(f(DEGTORAD64)) MAXGETTER_DEGTORAD64() { return f(DEGTORAD64); }
typeof(f(RADTODEG64)) MAXGETTER_RADTODEG64() { return f(RADTODEG64); }
typeof(f(locale_current)) MAXGETTER_locale_current() { return f(locale_current); }
typeof(f(IdentityMatrix)) MAXGETTER_IdentityMatrix() { return f(IdentityMatrix); }
typeof(f(sBuiltInMaterialTypeNames)) MAXGETTER_sBuiltInMaterialTypeNames() { return f(sBuiltInMaterialTypeNames); }
typeof(f(aTextureClampNames)) MAXGETTER_aTextureClampNames() { return f(aTextureClampNames); }
typeof(f(PolygonOffsetDirectionNames)) MAXGETTER_PolygonOffsetDirectionNames() { return f(PolygonOffsetDirectionNames); }
typeof(f(MATERIAL_MAX_TEXTURES)) MAXGETTER_MATERIAL_MAX_TEXTURES() { return f(MATERIAL_MAX_TEXTURES); }
typeof(f(IdentityMaterial)) MAXGETTER_IdentityMaterial() { return f(IdentityMaterial); }
typeof(f(sBuiltInVertexTypeNames)) MAXGETTER_sBuiltInVertexTypeNames() { return f(sBuiltInVertexTypeNames); }
typeof(f(AutomaticCullingNames)) MAXGETTER_AutomaticCullingNames() { return f(AutomaticCullingNames); }
typeof(f(GUIAlignmentNames)) MAXGETTER_GUIAlignmentNames() { return f(GUIAlignmentNames); }
typeof(f(GUIElementTypeNames)) MAXGETTER_GUIElementTypeNames() { return f(GUIElementTypeNames); }
typeof(f(LOCALE_DECIMAL_POINTS)) MAXGETTER_LOCALE_DECIMAL_POINTS() { return f(LOCALE_DECIMAL_POINTS); }
typeof(f(fast_atof_table)) MAXGETTER_fast_atof_table() { return f(fast_atof_table); }
typeof(f(FogTypeNames)) MAXGETTER_FogTypeNames() { return f(FogTypeNames); }
//typeof(f(PACK_STRUCT)) MAXGETTER_PACK_STRUCT() { return f(PACK_STRUCT); }
typeof(f(BoneAnimationModeNames)) MAXGETTER_BoneAnimationModeNames() { return f(BoneAnimationModeNames); }
typeof(f(GUICursorIconNames)) MAXGETTER_GUICursorIconNames() { return f(GUICursorIconNames); }
typeof(f(VERTEX_SHADER_TYPE_NAMES)) MAXGETTER_VERTEX_SHADER_TYPE_NAMES() { return f(VERTEX_SHADER_TYPE_NAMES); }
typeof(f(PIXEL_SHADER_TYPE_NAMES)) MAXGETTER_PIXEL_SHADER_TYPE_NAMES() { return f(PIXEL_SHADER_TYPE_NAMES); }
typeof(f(GEOMETRY_SHADER_TYPE_NAMES)) MAXGETTER_GEOMETRY_SHADER_TYPE_NAMES() { return f(GEOMETRY_SHADER_TYPE_NAMES); }
typeof(f(GUIButtonStateNames)) MAXGETTER_GUIButtonStateNames() { return f(GUIButtonStateNames); }
typeof(f(GUISkinTypeNames)) MAXGETTER_GUISkinTypeNames() { return f(GUISkinTypeNames); }
typeof(f(GUISkinColorNames)) MAXGETTER_GUISkinColorNames() { return f(GUISkinColorNames); }
typeof(f(GUISkinSizeNames)) MAXGETTER_GUISkinSizeNames() { return f(GUISkinSizeNames); }
typeof(f(GUISkinTextNames)) MAXGETTER_GUISkinTextNames() { return f(GUISkinTextNames); }
typeof(f(GUISkinIconNames)) MAXGETTER_GUISkinIconNames() { return f(GUISkinIconNames); }
typeof(f(GUISkinFontNames)) MAXGETTER_GUISkinFontNames() { return f(GUISkinFontNames); }
typeof(f(GUIColumnOrderingNames)) MAXGETTER_GUIColumnOrderingNames() { return f(GUIColumnOrderingNames); }
typeof(f(GUIOrderingModeNames)) MAXGETTER_GUIOrderingModeNames() { return f(GUIOrderingModeNames); }
typeof(f(LightTypeNames)) MAXGETTER_LightTypeNames() { return f(LightTypeNames); }
typeof(f(ParticleEmitterTypeNames)) MAXGETTER_ParticleEmitterTypeNames() { return f(ParticleEmitterTypeNames); }
typeof(f(ParticleAffectorTypeNames)) MAXGETTER_ParticleAffectorTypeNames() { return f(ParticleAffectorTypeNames); }
typeof(f(ALLOW_ZWRITE_ON_TRANSPARENT)) MAXGETTER_ALLOW_ZWRITE_ON_TRANSPARENT() { return f(ALLOW_ZWRITE_ON_TRANSPARENT); }
typeof(f(CSM_TEXTURE_PATH)) MAXGETTER_CSM_TEXTURE_PATH() { return f(CSM_TEXTURE_PATH); }
typeof(f(LMTS_TEXTURE_PATH)) MAXGETTER_LMTS_TEXTURE_PATH() { return f(LMTS_TEXTURE_PATH); }
typeof(f(MY3D_TEXTURE_PATH)) MAXGETTER_MY3D_TEXTURE_PATH() { return f(MY3D_TEXTURE_PATH); }
typeof(f(COLLADA_CREATE_SCENE_INSTANCES)) MAXGETTER_COLLADA_CREATE_SCENE_INSTANCES() { return f(COLLADA_CREATE_SCENE_INSTANCES); }
typeof(f(DMF_TEXTURE_PATH)) MAXGETTER_DMF_TEXTURE_PATH() { return f(DMF_TEXTURE_PATH); }
typeof(f(DMF_IGNORE_MATERIALS_DIRS)) MAXGETTER_DMF_IGNORE_MATERIALS_DIRS() { return f(DMF_IGNORE_MATERIALS_DIRS); }
typeof(f(DMF_ALPHA_CHANNEL_REF)) MAXGETTER_DMF_ALPHA_CHANNEL_REF() { return f(DMF_ALPHA_CHANNEL_REF); }
typeof(f(DMF_FLIP_ALPHA_TEXTURES)) MAXGETTER_DMF_FLIP_ALPHA_TEXTURES() { return f(DMF_FLIP_ALPHA_TEXTURES); }
typeof(f(OBJ_TEXTURE_PATH)) MAXGETTER_OBJ_TEXTURE_PATH() { return f(OBJ_TEXTURE_PATH); }
typeof(f(OBJ_LOADER_IGNORE_GROUPS)) MAXGETTER_OBJ_LOADER_IGNORE_GROUPS() { return f(OBJ_LOADER_IGNORE_GROUPS); }
typeof(f(OBJ_LOADER_IGNORE_MATERIAL_FILES)) MAXGETTER_OBJ_LOADER_IGNORE_MATERIAL_FILES() { return f(OBJ_LOADER_IGNORE_MATERIAL_FILES); }
typeof(f(B3D_LOADER_IGNORE_MIPMAP_FLAG)) MAXGETTER_B3D_LOADER_IGNORE_MIPMAP_FLAG() { return f(B3D_LOADER_IGNORE_MIPMAP_FLAG); }
typeof(f(B3D_TEXTURE_PATH)) MAXGETTER_B3D_TEXTURE_PATH() { return f(B3D_TEXTURE_PATH); }
typeof(f(IRR_SCENE_MANAGER_IS_EDITOR)) MAXGETTER_IRR_SCENE_MANAGER_IS_EDITOR() { return f(IRR_SCENE_MANAGER_IS_EDITOR); }
typeof(f(DEBUG_NORMAL_LENGTH)) MAXGETTER_DEBUG_NORMAL_LENGTH() { return f(DEBUG_NORMAL_LENGTH); }
typeof(f(DEBUG_NORMAL_COLOR)) MAXGETTER_DEBUG_NORMAL_COLOR() { return f(DEBUG_NORMAL_COLOR); }
}
