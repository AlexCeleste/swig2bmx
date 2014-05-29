
(cl:defclass ireference-counted()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj ireference-counted) &key)
  (setf (slot-value obj 'ff-pointer) (new_IReferenceCounted)))

(cl:defmethod grab ((self ireference-counted))
  (IReferenceCounted_grab (ff-pointer self)))

(cl:defmethod drop ((self ireference-counted))
  (IReferenceCounted_drop (ff-pointer self)))

(cl:defmethod get-reference-count ((self ireference-counted))
  (IReferenceCounted_getReferenceCount (ff-pointer self)))

(cl:defmethod get-debug-name ((self ireference-counted))
  (IReferenceCounted_getDebugName (ff-pointer self)))


(cl:defclass scolor()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj scolor) &key)
  (setf (slot-value obj 'ff-pointer) (new_SColor)))

(cl:defmethod initialize-instance :after ((obj scolor) &key (a cl:integer) (r cl:integer) (g cl:integer) (b cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_SColor a r g b)))

(cl:defmethod initialize-instance :after ((obj scolor) &key (clr cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_SColor clr)))

(cl:defmethod get-alpha ((self scolor))
  (SColor_getAlpha (ff-pointer self)))

(cl:defmethod get-red ((self scolor))
  (SColor_getRed (ff-pointer self)))

(cl:defmethod get-green ((self scolor))
  (SColor_getGreen (ff-pointer self)))

(cl:defmethod get-blue ((self scolor))
  (SColor_getBlue (ff-pointer self)))

(cl:defmethod get-lightness ((self scolor))
  (SColor_getLightness (ff-pointer self)))

(cl:defmethod get-luminance ((self scolor))
  (SColor_getLuminance (ff-pointer self)))

(cl:defmethod get-average ((self scolor))
  (SColor_getAverage (ff-pointer self)))

(cl:defmethod set-alpha ((self scolor) (a cl:integer))
  (SColor_setAlpha (ff-pointer self) a))

(cl:defmethod set-red ((self scolor) (r cl:integer))
  (SColor_setRed (ff-pointer self) r))

(cl:defmethod set-green ((self scolor) (g cl:integer))
  (SColor_setGreen (ff-pointer self) g))

(cl:defmethod set-blue ((self scolor) (b cl:integer))
  (SColor_setBlue (ff-pointer self) b))

(cl:defmethod to-a1-r5-g5-b5 ((self scolor))
  (SColor_toA1R5G5B5 (ff-pointer self)))

(cl:defmethod to-open-glcolor ((self scolor) dest)
  (SColor_toOpenGLColor (ff-pointer self) dest))

(cl:defmethod set ((self scolor) (a cl:integer) (r cl:integer) (g cl:integer) (b cl:integer))
  (SColor_set (ff-pointer self) a r g b))

(cl:defmethod set ((self scolor) (col cl:integer))
  (SColor_set (ff-pointer self) col))

(cl:shadow "==")
(cl:defmethod == ((self scolor) (other scolor))
  (SColor___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self scolor) (other scolor))
  (SColor___ne__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "<")
(cl:defmethod < ((self scolor) (other scolor))
  (SColor___lt__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self scolor) (other scolor))
  (SColor___add__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-interpolated ((self scolor) (other scolor) (d cl:number))
  (SColor_getInterpolated (ff-pointer self) (ff-pointer other) d))

(cl:defmethod get-interpolated-quadratic ((self scolor) (c1 scolor) (c2 scolor) (d cl:number))
  (SColor_getInterpolated_quadratic (ff-pointer self) (ff-pointer c1) (ff-pointer c2) d))

(cl:defmethod set-data ((self scolor) data (format cl:integer))
  (SColor_setData (ff-pointer self) data format))

(cl:defmethod get-data ((self scolor) data (format cl:integer))
  (SColor_getData (ff-pointer self) data format))

(cl:defmethod (cl:setf color) (arg0 (obj scolor))
  (SColor_color_set (ff-pointer obj) arg0))

(cl:defmethod color ((obj scolor))
  (SColor_color_get (ff-pointer obj)))


(cl:defclass scolorf()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj scolorf) &key)
  (setf (slot-value obj 'ff-pointer) (new_SColorf)))

(cl:defmethod initialize-instance :after ((obj scolorf) &key (r cl:number) (g cl:number) (b cl:number) (a cl:number))
  (setf (slot-value obj 'ff-pointer) (new_SColorf r g b a)))

(cl:defmethod initialize-instance :after ((obj scolorf) &key (r cl:number) (g cl:number) (b cl:number))
  (setf (slot-value obj 'ff-pointer) (new_SColorf r g b)))

(cl:defmethod initialize-instance :after ((obj scolorf) &key (c scolor))
  (setf (slot-value obj 'ff-pointer) (new_SColorf c)))

(cl:defmethod to-scolor ((self scolorf))
  (SColorf_toSColor (ff-pointer self)))

(cl:defmethod set ((self scolorf) (rr cl:number) (gg cl:number) (bb cl:number))
  (SColorf_set (ff-pointer self) rr gg bb))

(cl:defmethod set ((self scolorf) (aa cl:number) (rr cl:number) (gg cl:number) (bb cl:number))
  (SColorf_set (ff-pointer self) aa rr gg bb))

(cl:defmethod get-interpolated ((self scolorf) (other scolorf) (d cl:number))
  (SColorf_getInterpolated (ff-pointer self) (ff-pointer other) d))

(cl:defmethod get-interpolated-quadratic ((self scolorf) (c1 scolorf) (c2 scolorf) (d cl:number))
  (SColorf_getInterpolated_quadratic (ff-pointer self) (ff-pointer c1) (ff-pointer c2) d))

(cl:defmethod set-color-component-value ((self scolorf) (index cl:integer) (value cl:number))
  (SColorf_setColorComponentValue (ff-pointer self) index value))

(cl:defmethod get-alpha ((self scolorf))
  (SColorf_getAlpha (ff-pointer self)))

(cl:defmethod get-red ((self scolorf))
  (SColorf_getRed (ff-pointer self)))

(cl:defmethod get-green ((self scolorf))
  (SColorf_getGreen (ff-pointer self)))

(cl:defmethod get-blue ((self scolorf))
  (SColorf_getBlue (ff-pointer self)))

(cl:defmethod (cl:setf r) (arg0 (obj scolorf))
  (SColorf_r_set (ff-pointer obj) arg0))

(cl:defmethod r ((obj scolorf))
  (SColorf_r_get (ff-pointer obj)))

(cl:defmethod (cl:setf g) (arg0 (obj scolorf))
  (SColorf_g_set (ff-pointer obj) arg0))

(cl:defmethod g ((obj scolorf))
  (SColorf_g_get (ff-pointer obj)))

(cl:defmethod (cl:setf b) (arg0 (obj scolorf))
  (SColorf_b_set (ff-pointer obj) arg0))

(cl:defmethod b ((obj scolorf))
  (SColorf_b_get (ff-pointer obj)))

(cl:defmethod (cl:setf a) (arg0 (obj scolorf))
  (SColorf_a_set (ff-pointer obj) arg0))

(cl:defmethod a ((obj scolorf))
  (SColorf_a_get (ff-pointer obj)))


(cl:defclass scolor-hsl()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj scolor-hsl) &key (h cl:number) (s cl:number) (l cl:number))
  (setf (slot-value obj 'ff-pointer) (new_SColorHSL h s l)))

(cl:defmethod initialize-instance :after ((obj scolor-hsl) &key (h cl:number) (s cl:number))
  (setf (slot-value obj 'ff-pointer) (new_SColorHSL h s)))

(cl:defmethod initialize-instance :after ((obj scolor-hsl) &key (h cl:number))
  (setf (slot-value obj 'ff-pointer) (new_SColorHSL h)))

(cl:defmethod initialize-instance :after ((obj scolor-hsl) &key)
  (setf (slot-value obj 'ff-pointer) (new_SColorHSL)))

(cl:defmethod from-rgb ((self scolor-hsl) (color scolorf))
  (SColorHSL_fromRGB (ff-pointer self) color))

(cl:defmethod to-rgb ((self scolor-hsl) (color scolorf))
  (SColorHSL_toRGB (ff-pointer self) color))

(cl:defmethod (cl:setf Hue) (arg0 (obj scolor-hsl))
  (SColorHSL_Hue_set (ff-pointer obj) arg0))

(cl:defmethod Hue ((obj scolor-hsl))
  (SColorHSL_Hue_get (ff-pointer obj)))

(cl:defmethod (cl:setf Saturation) (arg0 (obj scolor-hsl))
  (SColorHSL_Saturation_set (ff-pointer obj) arg0))

(cl:defmethod Saturation ((obj scolor-hsl))
  (SColorHSL_Saturation_get (ff-pointer obj)))

(cl:defmethod (cl:setf Luminance) (arg0 (obj scolor-hsl))
  (SColorHSL_Luminance_set (ff-pointer obj) arg0))

(cl:defmethod Luminance ((obj scolor-hsl))
  (SColorHSL_Luminance_get (ff-pointer obj)))


(cl:defclass smaterial-layer()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj smaterial-layer) &key)
  (setf (slot-value obj 'ff-pointer) (new_SMaterialLayer)))

(cl:defmethod initialize-instance :after ((obj smaterial-layer) &key (other smaterial-layer))
  (setf (slot-value obj 'ff-pointer) (new_SMaterialLayer (ff-pointer other))))

(cl:shadow "=")
(cl:defmethod = ((self smaterial-layer) (other smaterial-layer))
  (SMaterialLayer___assign__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-texture-matrix ((self smaterial-layer))
  (SMaterialLayer_getTextureMatrix (ff-pointer self)))

(cl:defmethod get-texture-matrix ((self smaterial-layer))
  (SMaterialLayer_getTextureMatrix (ff-pointer self)))

(cl:defmethod set-texture-matrix ((self smaterial-layer) mat)
  (SMaterialLayer_setTextureMatrix (ff-pointer self) mat))

(cl:shadow "!=")
(cl:defmethod != ((self smaterial-layer) (b smaterial-layer))
  (SMaterialLayer___ne__ (ff-pointer self) (ff-pointer b)))

(cl:shadow "==")
(cl:defmethod == ((self smaterial-layer) (b smaterial-layer))
  (SMaterialLayer___eq__ (ff-pointer self) (ff-pointer b)))

(cl:defmethod (cl:setf Texture) (arg0 (obj smaterial-layer))
  (SMaterialLayer_Texture_set (ff-pointer obj) arg0))

(cl:defmethod Texture ((obj smaterial-layer))
  (SMaterialLayer_Texture_get (ff-pointer obj)))

(cl:defmethod (cl:setf TextureWrapU) (arg0 (obj smaterial-layer))
  (SMaterialLayer_TextureWrapU_set (ff-pointer obj) arg0))

(cl:defmethod TextureWrapU ((obj smaterial-layer))
  (SMaterialLayer_TextureWrapU_get (ff-pointer obj)))

(cl:defmethod (cl:setf TextureWrapV) (arg0 (obj smaterial-layer))
  (SMaterialLayer_TextureWrapV_set (ff-pointer obj) arg0))

(cl:defmethod TextureWrapV ((obj smaterial-layer))
  (SMaterialLayer_TextureWrapV_get (ff-pointer obj)))

(cl:defmethod (cl:setf BilinearFilter) (arg0 (obj smaterial-layer))
  (SMaterialLayer_BilinearFilter_set (ff-pointer obj) arg0))

(cl:defmethod BilinearFilter ((obj smaterial-layer))
  (SMaterialLayer_BilinearFilter_get (ff-pointer obj)))

(cl:defmethod (cl:setf TrilinearFilter) (arg0 (obj smaterial-layer))
  (SMaterialLayer_TrilinearFilter_set (ff-pointer obj) arg0))

(cl:defmethod TrilinearFilter ((obj smaterial-layer))
  (SMaterialLayer_TrilinearFilter_get (ff-pointer obj)))

(cl:defmethod (cl:setf AnisotropicFilter) (arg0 (obj smaterial-layer))
  (SMaterialLayer_AnisotropicFilter_set (ff-pointer obj) arg0))

(cl:defmethod AnisotropicFilter ((obj smaterial-layer))
  (SMaterialLayer_AnisotropicFilter_get (ff-pointer obj)))

(cl:defmethod (cl:setf LODBias) (arg0 (obj smaterial-layer))
  (SMaterialLayer_LODBias_set (ff-pointer obj) arg0))

(cl:defmethod LODBias ((obj smaterial-layer))
  (SMaterialLayer_LODBias_get (ff-pointer obj)))


(cl:defclass smaterial()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj smaterial) &key)
  (setf (slot-value obj 'ff-pointer) (new_SMaterial)))

(cl:defmethod initialize-instance :after ((obj smaterial) &key (other smaterial))
  (setf (slot-value obj 'ff-pointer) (new_SMaterial (ff-pointer other))))

(cl:shadow "=")
(cl:defmethod = ((self smaterial) (other smaterial))
  (SMaterial___assign__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod (cl:setf TextureLayer) (arg0 (obj smaterial))
  (SMaterial_TextureLayer_set (ff-pointer obj) arg0))

(cl:defmethod TextureLayer ((obj smaterial))
  (SMaterial_TextureLayer_get (ff-pointer obj)))

(cl:defmethod (cl:setf MaterialType) (arg0 (obj smaterial))
  (SMaterial_MaterialType_set (ff-pointer obj) arg0))

(cl:defmethod MaterialType ((obj smaterial))
  (SMaterial_MaterialType_get (ff-pointer obj)))

(cl:defmethod (cl:setf AmbientColor) (arg0 (obj smaterial))
  (SMaterial_AmbientColor_set (ff-pointer obj) arg0))

(cl:defmethod AmbientColor ((obj smaterial))
  (SMaterial_AmbientColor_get (ff-pointer obj)))

(cl:defmethod (cl:setf DiffuseColor) (arg0 (obj smaterial))
  (SMaterial_DiffuseColor_set (ff-pointer obj) arg0))

(cl:defmethod DiffuseColor ((obj smaterial))
  (SMaterial_DiffuseColor_get (ff-pointer obj)))

(cl:defmethod (cl:setf EmissiveColor) (arg0 (obj smaterial))
  (SMaterial_EmissiveColor_set (ff-pointer obj) arg0))

(cl:defmethod EmissiveColor ((obj smaterial))
  (SMaterial_EmissiveColor_get (ff-pointer obj)))

(cl:defmethod (cl:setf SpecularColor) (arg0 (obj smaterial))
  (SMaterial_SpecularColor_set (ff-pointer obj) arg0))

(cl:defmethod SpecularColor ((obj smaterial))
  (SMaterial_SpecularColor_get (ff-pointer obj)))

(cl:defmethod (cl:setf Shininess) (arg0 (obj smaterial))
  (SMaterial_Shininess_set (ff-pointer obj) arg0))

(cl:defmethod Shininess ((obj smaterial))
  (SMaterial_Shininess_get (ff-pointer obj)))

(cl:defmethod (cl:setf MaterialTypeParam) (arg0 (obj smaterial))
  (SMaterial_MaterialTypeParam_set (ff-pointer obj) arg0))

(cl:defmethod MaterialTypeParam ((obj smaterial))
  (SMaterial_MaterialTypeParam_get (ff-pointer obj)))

(cl:defmethod (cl:setf MaterialTypeParam2) (arg0 (obj smaterial))
  (SMaterial_MaterialTypeParam2_set (ff-pointer obj) arg0))

(cl:defmethod MaterialTypeParam2 ((obj smaterial))
  (SMaterial_MaterialTypeParam2_get (ff-pointer obj)))

(cl:defmethod (cl:setf Thickness) (arg0 (obj smaterial))
  (SMaterial_Thickness_set (ff-pointer obj) arg0))

(cl:defmethod Thickness ((obj smaterial))
  (SMaterial_Thickness_get (ff-pointer obj)))

(cl:defmethod (cl:setf ZBuffer) (arg0 (obj smaterial))
  (SMaterial_ZBuffer_set (ff-pointer obj) arg0))

(cl:defmethod ZBuffer ((obj smaterial))
  (SMaterial_ZBuffer_get (ff-pointer obj)))

(cl:defmethod (cl:setf AntiAliasing) (arg0 (obj smaterial))
  (SMaterial_AntiAliasing_set (ff-pointer obj) arg0))

(cl:defmethod AntiAliasing ((obj smaterial))
  (SMaterial_AntiAliasing_get (ff-pointer obj)))

(cl:defmethod (cl:setf ColorMask) (arg0 (obj smaterial))
  (SMaterial_ColorMask_set (ff-pointer obj) arg0))

(cl:defmethod ColorMask ((obj smaterial))
  (SMaterial_ColorMask_get (ff-pointer obj)))

(cl:defmethod (cl:setf ColorMaterial) (arg0 (obj smaterial))
  (SMaterial_ColorMaterial_set (ff-pointer obj) arg0))

(cl:defmethod ColorMaterial ((obj smaterial))
  (SMaterial_ColorMaterial_get (ff-pointer obj)))

(cl:defmethod (cl:setf BlendOperation) (arg0 (obj smaterial))
  (SMaterial_BlendOperation_set (ff-pointer obj) arg0))

(cl:defmethod BlendOperation ((obj smaterial))
  (SMaterial_BlendOperation_get (ff-pointer obj)))

(cl:defmethod (cl:setf PolygonOffsetFactor) (arg0 (obj smaterial))
  (SMaterial_PolygonOffsetFactor_set (ff-pointer obj) arg0))

(cl:defmethod PolygonOffsetFactor ((obj smaterial))
  (SMaterial_PolygonOffsetFactor_get (ff-pointer obj)))

(cl:defmethod (cl:setf PolygonOffsetDirection) (arg0 (obj smaterial))
  (SMaterial_PolygonOffsetDirection_set (ff-pointer obj) arg0))

(cl:defmethod PolygonOffsetDirection ((obj smaterial))
  (SMaterial_PolygonOffsetDirection_get (ff-pointer obj)))

(cl:defmethod (cl:setf Wireframe) (arg0 (obj smaterial))
  (SMaterial_Wireframe_set (ff-pointer obj) arg0))

(cl:defmethod Wireframe ((obj smaterial))
  (SMaterial_Wireframe_get (ff-pointer obj)))

(cl:defmethod (cl:setf PointCloud) (arg0 (obj smaterial))
  (SMaterial_PointCloud_set (ff-pointer obj) arg0))

(cl:defmethod PointCloud ((obj smaterial))
  (SMaterial_PointCloud_get (ff-pointer obj)))

(cl:defmethod (cl:setf GouraudShading) (arg0 (obj smaterial))
  (SMaterial_GouraudShading_set (ff-pointer obj) arg0))

(cl:defmethod GouraudShading ((obj smaterial))
  (SMaterial_GouraudShading_get (ff-pointer obj)))

(cl:defmethod (cl:setf Lighting) (arg0 (obj smaterial))
  (SMaterial_Lighting_set (ff-pointer obj) arg0))

(cl:defmethod Lighting ((obj smaterial))
  (SMaterial_Lighting_get (ff-pointer obj)))

(cl:defmethod (cl:setf ZWriteEnable) (arg0 (obj smaterial))
  (SMaterial_ZWriteEnable_set (ff-pointer obj) arg0))

(cl:defmethod ZWriteEnable ((obj smaterial))
  (SMaterial_ZWriteEnable_get (ff-pointer obj)))

(cl:defmethod (cl:setf BackfaceCulling) (arg0 (obj smaterial))
  (SMaterial_BackfaceCulling_set (ff-pointer obj) arg0))

(cl:defmethod BackfaceCulling ((obj smaterial))
  (SMaterial_BackfaceCulling_get (ff-pointer obj)))

(cl:defmethod (cl:setf FrontfaceCulling) (arg0 (obj smaterial))
  (SMaterial_FrontfaceCulling_set (ff-pointer obj) arg0))

(cl:defmethod FrontfaceCulling ((obj smaterial))
  (SMaterial_FrontfaceCulling_get (ff-pointer obj)))

(cl:defmethod (cl:setf FogEnable) (arg0 (obj smaterial))
  (SMaterial_FogEnable_set (ff-pointer obj) arg0))

(cl:defmethod FogEnable ((obj smaterial))
  (SMaterial_FogEnable_get (ff-pointer obj)))

(cl:defmethod (cl:setf NormalizeNormals) (arg0 (obj smaterial))
  (SMaterial_NormalizeNormals_set (ff-pointer obj) arg0))

(cl:defmethod NormalizeNormals ((obj smaterial))
  (SMaterial_NormalizeNormals_get (ff-pointer obj)))

(cl:defmethod (cl:setf UseMipMaps) (arg0 (obj smaterial))
  (SMaterial_UseMipMaps_set (ff-pointer obj) arg0))

(cl:defmethod UseMipMaps ((obj smaterial))
  (SMaterial_UseMipMaps_get (ff-pointer obj)))

(cl:defmethod get-texture-matrix ((self smaterial) (i cl:integer))
  (SMaterial_getTextureMatrix (ff-pointer self) i))

(cl:defmethod get-texture-matrix ((self smaterial) (i cl:integer))
  (SMaterial_getTextureMatrix (ff-pointer self) i))

(cl:defmethod set-texture-matrix ((self smaterial) (i cl:integer) mat)
  (SMaterial_setTextureMatrix (ff-pointer self) i mat))

(cl:defmethod get-texture ((self smaterial) (i cl:integer))
  (SMaterial_getTexture (ff-pointer self) i))

(cl:defmethod set-texture ((self smaterial) (i cl:integer) tex)
  (SMaterial_setTexture (ff-pointer self) i tex))

(cl:defmethod set-flag ((self smaterial) (flag cl:integer) (value t))
  (SMaterial_setFlag (ff-pointer self) flag value))

(cl:defmethod get-flag ((self smaterial) (flag cl:integer))
  (SMaterial_getFlag (ff-pointer self) flag))

(cl:shadow "!=")
(cl:defmethod != ((self smaterial) (b smaterial))
  (SMaterial___ne__ (ff-pointer self) (ff-pointer b)))

(cl:shadow "==")
(cl:defmethod == ((self smaterial) (b smaterial))
  (SMaterial___eq__ (ff-pointer self) (ff-pointer b)))

(cl:defmethod is-transparent ((self smaterial))
  (SMaterial_isTransparent (ff-pointer self)))


(cl:defclass imesh-buffer(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-material ((self imesh-buffer))
  (IMeshBuffer_getMaterial (ff-pointer self)))

(cl:defmethod get-material ((self imesh-buffer))
  (IMeshBuffer_getMaterial (ff-pointer self)))

(cl:defmethod get-vertex-type ((self imesh-buffer))
  (IMeshBuffer_getVertexType (ff-pointer self)))

(cl:defmethod get-vertices ((self imesh-buffer))
  (IMeshBuffer_getVertices (ff-pointer self)))

(cl:defmethod get-vertices ((self imesh-buffer))
  (IMeshBuffer_getVertices (ff-pointer self)))

(cl:defmethod get-vertex-count ((self imesh-buffer))
  (IMeshBuffer_getVertexCount (ff-pointer self)))

(cl:defmethod get-index-type ((self imesh-buffer))
  (IMeshBuffer_getIndexType (ff-pointer self)))

(cl:defmethod get-indices ((self imesh-buffer))
  (IMeshBuffer_getIndices (ff-pointer self)))

(cl:defmethod get-indices ((self imesh-buffer))
  (IMeshBuffer_getIndices (ff-pointer self)))

(cl:defmethod get-index-count ((self imesh-buffer))
  (IMeshBuffer_getIndexCount (ff-pointer self)))

(cl:defmethod get-bounding-box ((self imesh-buffer))
  (IMeshBuffer_getBoundingBox (ff-pointer self)))

(cl:defmethod set-bounding-box ((self imesh-buffer) box)
  (IMeshBuffer_setBoundingBox (ff-pointer self) box))

(cl:defmethod recalculate-bounding-box ((self imesh-buffer))
  (IMeshBuffer_recalculateBoundingBox (ff-pointer self)))

(cl:defmethod get-position ((self imesh-buffer) (i cl:integer))
  (IMeshBuffer_getPosition (ff-pointer self) i))

(cl:defmethod get-position ((self imesh-buffer) (i cl:integer))
  (IMeshBuffer_getPosition (ff-pointer self) i))

(cl:defmethod get-normal ((self imesh-buffer) (i cl:integer))
  (IMeshBuffer_getNormal (ff-pointer self) i))

(cl:defmethod get-normal ((self imesh-buffer) (i cl:integer))
  (IMeshBuffer_getNormal (ff-pointer self) i))

(cl:defmethod get-tcoords ((self imesh-buffer) (i cl:integer))
  (IMeshBuffer_getTCoords (ff-pointer self) i))

(cl:defmethod get-tcoords ((self imesh-buffer) (i cl:integer))
  (IMeshBuffer_getTCoords (ff-pointer self) i))

(cl:defmethod append ((self imesh-buffer) vertices (numVertices cl:integer) indices (numIndices cl:integer))
  (IMeshBuffer_append (ff-pointer self) vertices numVertices indices numIndices))

(cl:defmethod append ((self imesh-buffer) (other imesh-buffer))
  (IMeshBuffer_append (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-hardware-mapping-hint-vertex ((self imesh-buffer))
  (IMeshBuffer_getHardwareMappingHint_Vertex (ff-pointer self)))

(cl:defmethod get-hardware-mapping-hint-index ((self imesh-buffer))
  (IMeshBuffer_getHardwareMappingHint_Index (ff-pointer self)))

(cl:defmethod set-hardware-mapping-hint ((self imesh-buffer) (newMappingHint cl:integer) (buffer cl:integer))
  (IMeshBuffer_setHardwareMappingHint (ff-pointer self) newMappingHint buffer))

(cl:defmethod set-hardware-mapping-hint ((self imesh-buffer) (newMappingHint cl:integer))
  (IMeshBuffer_setHardwareMappingHint (ff-pointer self) newMappingHint))

(cl:defmethod set-dirty ((self imesh-buffer) (buffer cl:integer))
  (IMeshBuffer_setDirty (ff-pointer self) buffer))

(cl:defmethod set-dirty ((self imesh-buffer))
  (IMeshBuffer_setDirty (ff-pointer self)))

(cl:defmethod get-changed-id-vertex ((self imesh-buffer))
  (IMeshBuffer_getChangedID_Vertex (ff-pointer self)))

(cl:defmethod get-changed-id-index ((self imesh-buffer))
  (IMeshBuffer_getChangedID_Index (ff-pointer self)))


(cl:defclass ivertex-buffer(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-data ((self ivertex-buffer))
  (IVertexBuffer_getData (ff-pointer self)))

(cl:defmethod get-type ((self ivertex-buffer))
  (IVertexBuffer_getType (ff-pointer self)))

(cl:defmethod set-type ((self ivertex-buffer) (vertexType cl:integer))
  (IVertexBuffer_setType (ff-pointer self) vertexType))

(cl:defmethod stride ((self ivertex-buffer))
  (IVertexBuffer_stride (ff-pointer self)))

(cl:defmethod size ((self ivertex-buffer))
  (IVertexBuffer_size (ff-pointer self)))

(cl:defmethod push-back ((self ivertex-buffer) element)
  (IVertexBuffer_push_back (ff-pointer self) element))

(cl:shadow "aRef")
(cl:defmethod aRef ((self ivertex-buffer) (index cl:integer))
  (IVertexBuffer___aref__ (ff-pointer self) index))

(cl:defmethod get-last ((self ivertex-buffer))
  (IVertexBuffer_getLast (ff-pointer self)))

(cl:defmethod set-used ((self ivertex-buffer) (usedNow cl:integer))
  (IVertexBuffer_set_used (ff-pointer self) usedNow))

(cl:defmethod reallocate ((self ivertex-buffer) (new_size cl:integer))
  (IVertexBuffer_reallocate (ff-pointer self) new_size))

(cl:defmethod allocated-size ((self ivertex-buffer))
  (IVertexBuffer_allocated_size (ff-pointer self)))

(cl:defmethod pointer ((self ivertex-buffer))
  (IVertexBuffer_pointer (ff-pointer self)))

(cl:defmethod get-hardware-mapping-hint ((self ivertex-buffer))
  (IVertexBuffer_getHardwareMappingHint (ff-pointer self)))

(cl:defmethod set-hardware-mapping-hint ((self ivertex-buffer) (NewMappingHint cl:integer))
  (IVertexBuffer_setHardwareMappingHint (ff-pointer self) NewMappingHint))

(cl:defmethod set-dirty ((self ivertex-buffer))
  (IVertexBuffer_setDirty (ff-pointer self)))

(cl:defmethod get-changed-id ((self ivertex-buffer))
  (IVertexBuffer_getChangedID (ff-pointer self)))


(cl:defclass iindex-buffer(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-data ((self iindex-buffer))
  (IIndexBuffer_getData (ff-pointer self)))

(cl:defmethod get-type ((self iindex-buffer))
  (IIndexBuffer_getType (ff-pointer self)))

(cl:defmethod set-type ((self iindex-buffer) (IndexType cl:integer))
  (IIndexBuffer_setType (ff-pointer self) IndexType))

(cl:defmethod stride ((self iindex-buffer))
  (IIndexBuffer_stride (ff-pointer self)))

(cl:defmethod size ((self iindex-buffer))
  (IIndexBuffer_size (ff-pointer self)))

(cl:defmethod push-back ((self iindex-buffer) element)
  (IIndexBuffer_push_back (ff-pointer self) element))

(cl:shadow "aRef")
(cl:defmethod aRef ((self iindex-buffer) (index cl:integer))
  (IIndexBuffer___aref__ (ff-pointer self) index))

(cl:defmethod get-last ((self iindex-buffer))
  (IIndexBuffer_getLast (ff-pointer self)))

(cl:defmethod set-value ((self iindex-buffer) (index cl:integer) (value cl:integer))
  (IIndexBuffer_setValue (ff-pointer self) index value))

(cl:defmethod set-used ((self iindex-buffer) (usedNow cl:integer))
  (IIndexBuffer_set_used (ff-pointer self) usedNow))

(cl:defmethod reallocate ((self iindex-buffer) (new_size cl:integer))
  (IIndexBuffer_reallocate (ff-pointer self) new_size))

(cl:defmethod allocated-size ((self iindex-buffer))
  (IIndexBuffer_allocated_size (ff-pointer self)))

(cl:defmethod pointer ((self iindex-buffer))
  (IIndexBuffer_pointer (ff-pointer self)))

(cl:defmethod get-hardware-mapping-hint ((self iindex-buffer))
  (IIndexBuffer_getHardwareMappingHint (ff-pointer self)))

(cl:defmethod set-hardware-mapping-hint ((self iindex-buffer) (NewMappingHint cl:integer))
  (IIndexBuffer_setHardwareMappingHint (ff-pointer self) NewMappingHint))

(cl:defmethod set-dirty ((self iindex-buffer))
  (IIndexBuffer_setDirty (ff-pointer self)))

(cl:defmethod get-changed-id ((self iindex-buffer))
  (IIndexBuffer_getChangedID (ff-pointer self)))


(cl:defclass idynamic-mesh-buffer(irr::scene::-imesh-buffer)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-vertex-buffer ((self idynamic-mesh-buffer))
  (IDynamicMeshBuffer_getVertexBuffer (ff-pointer self)))

(cl:defmethod get-index-buffer ((self idynamic-mesh-buffer))
  (IDynamicMeshBuffer_getIndexBuffer (ff-pointer self)))

(cl:defmethod set-vertex-buffer ((self idynamic-mesh-buffer) (vertexBuffer ivertex-buffer))
  (IDynamicMeshBuffer_setVertexBuffer (ff-pointer self) vertexBuffer))

(cl:defmethod set-index-buffer ((self idynamic-mesh-buffer) (indexBuffer iindex-buffer))
  (IDynamicMeshBuffer_setIndexBuffer (ff-pointer self) indexBuffer))

(cl:defmethod get-material ((self idynamic-mesh-buffer))
  (IDynamicMeshBuffer_getMaterial (ff-pointer self)))

(cl:defmethod get-material ((self idynamic-mesh-buffer))
  (IDynamicMeshBuffer_getMaterial (ff-pointer self)))

(cl:defmethod append ((self idynamic-mesh-buffer) vertices (numVertices cl:integer) indices (numIndices cl:integer))
  (IDynamicMeshBuffer_append (ff-pointer self) vertices numVertices indices numIndices))

(cl:defmethod append ((self idynamic-mesh-buffer) (other imesh-buffer))
  (IDynamicMeshBuffer_append (ff-pointer self) other))

(cl:defmethod set-hardware-mapping-hint ((self idynamic-mesh-buffer) (NewMappingHint cl:integer) (Buffer cl:integer))
  (IDynamicMeshBuffer_setHardwareMappingHint (ff-pointer self) NewMappingHint Buffer))

(cl:defmethod set-hardware-mapping-hint ((self idynamic-mesh-buffer) (NewMappingHint cl:integer))
  (IDynamicMeshBuffer_setHardwareMappingHint (ff-pointer self) NewMappingHint))

(cl:defmethod set-dirty ((self idynamic-mesh-buffer) (Buffer cl:integer))
  (IDynamicMeshBuffer_setDirty (ff-pointer self) Buffer))

(cl:defmethod set-dirty ((self idynamic-mesh-buffer))
  (IDynamicMeshBuffer_setDirty (ff-pointer self)))

(cl:defmethod get-vertices ((self idynamic-mesh-buffer))
  (IDynamicMeshBuffer_getVertices (ff-pointer self)))

(cl:defmethod get-vertices ((self idynamic-mesh-buffer))
  (IDynamicMeshBuffer_getVertices (ff-pointer self)))

(cl:defmethod get-indices ((self idynamic-mesh-buffer))
  (IDynamicMeshBuffer_getIndices (ff-pointer self)))

(cl:defmethod get-indices ((self idynamic-mesh-buffer))
  (IDynamicMeshBuffer_getIndices (ff-pointer self)))

(cl:defmethod get-position ((self idynamic-mesh-buffer) (i cl:integer))
  (IDynamicMeshBuffer_getPosition (ff-pointer self) i))

(cl:defmethod get-position ((self idynamic-mesh-buffer) (i cl:integer))
  (IDynamicMeshBuffer_getPosition (ff-pointer self) i))

(cl:defmethod get-tcoords ((self idynamic-mesh-buffer) (i cl:integer))
  (IDynamicMeshBuffer_getTCoords (ff-pointer self) i))

(cl:defmethod get-tcoords ((self idynamic-mesh-buffer) (i cl:integer))
  (IDynamicMeshBuffer_getTCoords (ff-pointer self) i))

(cl:defmethod get-normal ((self idynamic-mesh-buffer) (i cl:integer))
  (IDynamicMeshBuffer_getNormal (ff-pointer self) i))

(cl:defmethod get-normal ((self idynamic-mesh-buffer) (i cl:integer))
  (IDynamicMeshBuffer_getNormal (ff-pointer self) i))


(cl:defclass cvertex-buffer(irr::scene::-ivertex-buffer)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj cvertex-buffer) &key (vertexType cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_CVertexBuffer vertexType)))

(cl:defmethod initialize-instance :after ((obj cvertex-buffer) &key (VertexBufferCopy ivertex-buffer))
  (setf (slot-value obj 'ff-pointer) (new_CVertexBuffer VertexBufferCopy)))

(cl:defmethod (cl:setf MappingHint) (arg0 (obj cvertex-buffer))
  (CVertexBuffer_MappingHint_set (ff-pointer obj) arg0))

(cl:defmethod MappingHint ((obj cvertex-buffer))
  (CVertexBuffer_MappingHint_get (ff-pointer obj)))

(cl:defmethod (cl:setf ChangedID) (arg0 (obj cvertex-buffer))
  (CVertexBuffer_ChangedID_set (ff-pointer obj) arg0))

(cl:defmethod ChangedID ((obj cvertex-buffer))
  (CVertexBuffer_ChangedID_get (ff-pointer obj)))


(cl:defclass cindex-buffer(irr::scene::-iindex-buffer)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj cindex-buffer) &key (IndexType cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_CIndexBuffer IndexType)))

(cl:defmethod initialize-instance :after ((obj cindex-buffer) &key (IndexBufferCopy iindex-buffer))
  (setf (slot-value obj 'ff-pointer) (new_CIndexBuffer IndexBufferCopy)))

(cl:defmethod (cl:setf MappingHint) (arg0 (obj cindex-buffer))
  (CIndexBuffer_MappingHint_set (ff-pointer obj) arg0))

(cl:defmethod MappingHint ((obj cindex-buffer))
  (CIndexBuffer_MappingHint_get (ff-pointer obj)))

(cl:defmethod (cl:setf ChangedID) (arg0 (obj cindex-buffer))
  (CIndexBuffer_ChangedID_set (ff-pointer obj) arg0))

(cl:defmethod ChangedID ((obj cindex-buffer))
  (CIndexBuffer_ChangedID_get (ff-pointer obj)))


(cl:defclass cdynamic-mesh-buffer(irr::scene::-idynamic-mesh-buffer)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj cdynamic-mesh-buffer) &key (vertexType cl:integer) (indexType cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_CDynamicMeshBuffer vertexType indexType)))

(cl:defmethod get-material ((self cdynamic-mesh-buffer))
  (CDynamicMeshBuffer_getMaterial (ff-pointer self)))

(cl:defmethod get-material ((self cdynamic-mesh-buffer))
  (CDynamicMeshBuffer_getMaterial (ff-pointer self)))

(cl:defmethod (cl:setf Material) (arg0 (obj cdynamic-mesh-buffer))
  (CDynamicMeshBuffer_Material_set (ff-pointer obj) arg0))

(cl:defmethod Material ((obj cdynamic-mesh-buffer))
  (CDynamicMeshBuffer_Material_get (ff-pointer obj)))

(cl:defmethod (cl:setf BoundingBox) (arg0 (obj cdynamic-mesh-buffer))
  (CDynamicMeshBuffer_BoundingBox_set (ff-pointer obj) arg0))

(cl:defmethod BoundingBox ((obj cdynamic-mesh-buffer))
  (CDynamicMeshBuffer_BoundingBox_get (ff-pointer obj)))


(cl:defclass imesh(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-mesh-buffer-count ((self imesh))
  (IMesh_getMeshBufferCount (ff-pointer self)))

(cl:defmethod get-mesh-buffer ((self imesh) (nr cl:integer))
  (IMesh_getMeshBuffer (ff-pointer self) nr))

(cl:defmethod get-mesh-buffer ((self imesh) (material smaterial))
  (IMesh_getMeshBuffer (ff-pointer self) material))

(cl:defmethod get-bounding-box ((self imesh))
  (IMesh_getBoundingBox (ff-pointer self)))

(cl:defmethod set-bounding-box ((self imesh) box)
  (IMesh_setBoundingBox (ff-pointer self) box))

(cl:defmethod set-material-flag ((self imesh) (flag cl:integer) (newvalue t))
  (IMesh_setMaterialFlag (ff-pointer self) flag newvalue))

(cl:defmethod set-hardware-mapping-hint ((self imesh) (newMappingHint cl:integer) (buffer cl:integer))
  (IMesh_setHardwareMappingHint (ff-pointer self) newMappingHint buffer))

(cl:defmethod set-hardware-mapping-hint ((self imesh) (newMappingHint cl:integer))
  (IMesh_setHardwareMappingHint (ff-pointer self) newMappingHint))

(cl:defmethod set-dirty ((self imesh) (buffer cl:integer))
  (IMesh_setDirty (ff-pointer self) buffer))

(cl:defmethod set-dirty ((self imesh))
  (IMesh_setDirty (ff-pointer self)))


(cl:defclass ianimated-mesh(irr::scene::-imesh)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-frame-count ((self ianimated-mesh))
  (IAnimatedMesh_getFrameCount (ff-pointer self)))

(cl:defmethod get-animation-speed ((self ianimated-mesh))
  (IAnimatedMesh_getAnimationSpeed (ff-pointer self)))

(cl:defmethod set-animation-speed ((self ianimated-mesh) (fps cl:number))
  (IAnimatedMesh_setAnimationSpeed (ff-pointer self) fps))

(cl:defmethod get-mesh ((self ianimated-mesh) (frame cl:integer) (detailLevel cl:integer) (startFrameLoop cl:integer) (endFrameLoop cl:integer))
  (IAnimatedMesh_getMesh (ff-pointer self) frame detailLevel startFrameLoop endFrameLoop))

(cl:defmethod get-mesh ((self ianimated-mesh) (frame cl:integer) (detailLevel cl:integer) (startFrameLoop cl:integer))
  (IAnimatedMesh_getMesh (ff-pointer self) frame detailLevel startFrameLoop))

(cl:defmethod get-mesh ((self ianimated-mesh) (frame cl:integer) (detailLevel cl:integer))
  (IAnimatedMesh_getMesh (ff-pointer self) frame detailLevel))

(cl:defmethod get-mesh ((self ianimated-mesh) (frame cl:integer))
  (IAnimatedMesh_getMesh (ff-pointer self) frame))

(cl:defmethod get-mesh-type ((self ianimated-mesh))
  (IAnimatedMesh_getMeshType (ff-pointer self)))


(cl:defclass ianimated-mesh-md2(irr::scene::-ianimated-mesh)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-frame-loop ((self ianimated-mesh-md2) (l cl:integer) outBegin outEnd outFPS)
  (IAnimatedMeshMD2_getFrameLoop (ff-pointer self) l outBegin outEnd outFPS))

(cl:defmethod get-frame-loop ((self ianimated-mesh-md2) (name cl:string) outBegin outEnd outFPS)
  (IAnimatedMeshMD2_getFrameLoop (ff-pointer self) name outBegin outEnd outFPS))

(cl:defmethod get-animation-count ((self ianimated-mesh-md2))
  (IAnimatedMeshMD2_getAnimationCount (ff-pointer self)))

(cl:defmethod get-animation-name ((self ianimated-mesh-md2) (nr cl:integer))
  (IAnimatedMeshMD2_getAnimationName (ff-pointer self) nr))


(cl:defclass ifile-read-call-back()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod read ((self ifile-read-call-back) buffer (sizeToRead cl:integer))
  (IFileReadCallBack_read (ff-pointer self) buffer sizeToRead))

(cl:defmethod get-size ((self ifile-read-call-back))
  (IFileReadCallBack_getSize (ff-pointer self)))


(cl:defclass ixmlbase()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj ixmlbase) &key)
  (setf (slot-value obj 'ff-pointer) (new_IXMLBase)))


(cl:defclass iread-file(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod read ((self iread-file) buffer (sizeToRead cl:integer))
  (IReadFile_read (ff-pointer self) buffer sizeToRead))

(cl:defmethod seek ((self iread-file) (finalPos cl:integer) (relativeMovement t))
  (IReadFile_seek (ff-pointer self) finalPos relativeMovement))

(cl:defmethod seek ((self iread-file) (finalPos cl:integer))
  (IReadFile_seek (ff-pointer self) finalPos))

(cl:defmethod get-size ((self iread-file))
  (IReadFile_getSize (ff-pointer self)))

(cl:defmethod get-pos ((self iread-file))
  (IReadFile_getPos (ff-pointer self)))

(cl:defmethod get-file-name ((self iread-file))
  (IReadFile_getFileName (ff-pointer self)))


(cl:defclass ifile-list(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-file-count ((self ifile-list))
  (IFileList_getFileCount (ff-pointer self)))

(cl:defmethod get-file-name ((self ifile-list) (index cl:integer))
  (IFileList_getFileName (ff-pointer self) index))

(cl:defmethod get-full-file-name ((self ifile-list) (index cl:integer))
  (IFileList_getFullFileName (ff-pointer self) index))

(cl:defmethod get-file-size ((self ifile-list) (index cl:integer))
  (IFileList_getFileSize (ff-pointer self) index))

(cl:defmethod get-file-offset ((self ifile-list) (index cl:integer))
  (IFileList_getFileOffset (ff-pointer self) index))

(cl:defmethod get-id ((self ifile-list) (index cl:integer))
  (IFileList_getID (ff-pointer self) index))

(cl:defmethod is-directory ((self ifile-list) (index cl:integer))
  (IFileList_isDirectory (ff-pointer self) index))

(cl:defmethod find-file ((self ifile-list) filename (isFolder t))
  (IFileList_findFile (ff-pointer self) filename isFolder))

(cl:defmethod find-file ((self ifile-list) filename)
  (IFileList_findFile (ff-pointer self) filename))

(cl:defmethod get-path ((self ifile-list))
  (IFileList_getPath (ff-pointer self)))

(cl:defmethod add-item ((self ifile-list) fullPath (offset cl:integer) (size cl:integer) (isDirectory t) (id cl:integer))
  (IFileList_addItem (ff-pointer self) fullPath offset size isDirectory id))

(cl:defmethod add-item ((self ifile-list) fullPath (offset cl:integer) (size cl:integer) (isDirectory t))
  (IFileList_addItem (ff-pointer self) fullPath offset size isDirectory))

(cl:defmethod sort ((self ifile-list))
  (IFileList_sort (ff-pointer self)))


(cl:defclass ifile-archive(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod create-and-open-file ((self ifile-archive) filename)
  (IFileArchive_createAndOpenFile (ff-pointer self) filename))

(cl:defmethod create-and-open-file ((self ifile-archive) (index cl:integer))
  (IFileArchive_createAndOpenFile (ff-pointer self) index))

(cl:defmethod get-file-list ((self ifile-archive))
  (IFileArchive_getFileList (ff-pointer self)))

(cl:defmethod get-type ((self ifile-archive))
  (IFileArchive_getType (ff-pointer self)))

(cl:defmethod (cl:setf Password) (arg0 (obj ifile-archive))
  (IFileArchive_Password_set (ff-pointer obj) arg0))

(cl:defmethod Password ((obj ifile-archive))
  (IFileArchive_Password_get (ff-pointer obj)))


(cl:defclass iarchive-loader(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod is-aloadable-file-format ((self iarchive-loader) filename)
  (IArchiveLoader_isALoadableFileFormat (ff-pointer self) filename))

(cl:defmethod is-aloadable-file-format ((self iarchive-loader) (file iread-file))
  (IArchiveLoader_isALoadableFileFormat (ff-pointer self) file))

(cl:defmethod is-aloadable-file-format ((self iarchive-loader) (fileType cl:integer))
  (IArchiveLoader_isALoadableFileFormat (ff-pointer self) fileType))

(cl:defmethod create-archive ((self iarchive-loader) filename (ignoreCase t) (ignorePaths t))
  (IArchiveLoader_createArchive (ff-pointer self) filename ignoreCase ignorePaths))

(cl:defmethod create-archive ((self iarchive-loader) (file iread-file) (ignoreCase t) (ignorePaths t))
  (IArchiveLoader_createArchive (ff-pointer self) file ignoreCase ignorePaths))


(cl:defclass ifile-system(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod create-and-open-file ((self ifile-system) filename)
  (IFileSystem_createAndOpenFile (ff-pointer self) filename))

(cl:defmethod create-memory-write-file ((self ifile-system) memory (len cl:integer) fileName (deleteMemoryWhenDropped t))
  (IFileSystem_createMemoryWriteFile (ff-pointer self) memory len fileName deleteMemoryWhenDropped))

(cl:defmethod create-memory-write-file ((self ifile-system) memory (len cl:integer) fileName)
  (IFileSystem_createMemoryWriteFile (ff-pointer self) memory len fileName))

(cl:defmethod create-and-write-file ((self ifile-system) filename (append t))
  (IFileSystem_createAndWriteFile (ff-pointer self) filename append))

(cl:defmethod create-and-write-file ((self ifile-system) filename)
  (IFileSystem_createAndWriteFile (ff-pointer self) filename))

(cl:defmethod add-file-archive ((self ifile-system) filename (ignoreCase t) (ignorePaths t) (archiveType cl:integer) password retArchive)
  (IFileSystem_addFileArchive (ff-pointer self) filename ignoreCase ignorePaths archiveType password retArchive))

(cl:defmethod add-file-archive ((self ifile-system) filename (ignoreCase t) (ignorePaths t) (archiveType cl:integer) password)
  (IFileSystem_addFileArchive (ff-pointer self) filename ignoreCase ignorePaths archiveType password))

(cl:defmethod add-file-archive ((self ifile-system) filename (ignoreCase t) (ignorePaths t) (archiveType cl:integer))
  (IFileSystem_addFileArchive (ff-pointer self) filename ignoreCase ignorePaths archiveType))

(cl:defmethod add-file-archive ((self ifile-system) filename (ignoreCase t) (ignorePaths t))
  (IFileSystem_addFileArchive (ff-pointer self) filename ignoreCase ignorePaths))

(cl:defmethod add-file-archive ((self ifile-system) filename (ignoreCase t))
  (IFileSystem_addFileArchive (ff-pointer self) filename ignoreCase))

(cl:defmethod add-file-archive ((self ifile-system) filename)
  (IFileSystem_addFileArchive (ff-pointer self) filename))

(cl:defmethod add-file-archive ((self ifile-system) (file iread-file) (ignoreCase t) (ignorePaths t) (archiveType cl:integer) password retArchive)
  (IFileSystem_addFileArchive (ff-pointer self) file ignoreCase ignorePaths archiveType password retArchive))

(cl:defmethod add-file-archive ((self ifile-system) (file iread-file) (ignoreCase t) (ignorePaths t) (archiveType cl:integer) password)
  (IFileSystem_addFileArchive (ff-pointer self) file ignoreCase ignorePaths archiveType password))

(cl:defmethod add-file-archive ((self ifile-system) (file iread-file) (ignoreCase t) (ignorePaths t) (archiveType cl:integer))
  (IFileSystem_addFileArchive (ff-pointer self) file ignoreCase ignorePaths archiveType))

(cl:defmethod add-file-archive ((self ifile-system) (file iread-file) (ignoreCase t) (ignorePaths t))
  (IFileSystem_addFileArchive (ff-pointer self) file ignoreCase ignorePaths))

(cl:defmethod add-file-archive ((self ifile-system) (file iread-file) (ignoreCase t))
  (IFileSystem_addFileArchive (ff-pointer self) file ignoreCase))

(cl:defmethod add-file-archive ((self ifile-system) (file iread-file))
  (IFileSystem_addFileArchive (ff-pointer self) file))

(cl:defmethod add-file-archive ((self ifile-system) (archive ifile-archive))
  (IFileSystem_addFileArchive (ff-pointer self) archive))

(cl:defmethod get-file-archive-count ((self ifile-system))
  (IFileSystem_getFileArchiveCount (ff-pointer self)))

(cl:defmethod remove-file-archive ((self ifile-system) (index cl:integer))
  (IFileSystem_removeFileArchive (ff-pointer self) index))

(cl:defmethod remove-file-archive ((self ifile-system) filename)
  (IFileSystem_removeFileArchive (ff-pointer self) filename))

(cl:defmethod remove-file-archive ((self ifile-system) (archive ifile-archive))
  (IFileSystem_removeFileArchive (ff-pointer self) archive))

(cl:defmethod move-file-archive ((self ifile-system) (sourceIndex cl:integer) (relative cl:integer))
  (IFileSystem_moveFileArchive (ff-pointer self) sourceIndex relative))

(cl:defmethod get-file-archive ((self ifile-system) (index cl:integer))
  (IFileSystem_getFileArchive (ff-pointer self) index))

(cl:defmethod add-archive-loader ((self ifile-system) (loader iarchive-loader))
  (IFileSystem_addArchiveLoader (ff-pointer self) loader))

(cl:defmethod get-archive-loader-count ((self ifile-system))
  (IFileSystem_getArchiveLoaderCount (ff-pointer self)))

(cl:defmethod get-archive-loader ((self ifile-system) (index cl:integer))
  (IFileSystem_getArchiveLoader (ff-pointer self) index))

(cl:defmethod add-zip-file-archive ((self ifile-system) (filename cl:string) (ignoreCase t) (ignorePaths t))
  (IFileSystem_addZipFileArchive (ff-pointer self) filename ignoreCase ignorePaths))

(cl:defmethod add-zip-file-archive ((self ifile-system) (filename cl:string) (ignoreCase t))
  (IFileSystem_addZipFileArchive (ff-pointer self) filename ignoreCase))

(cl:defmethod add-zip-file-archive ((self ifile-system) (filename cl:string))
  (IFileSystem_addZipFileArchive (ff-pointer self) filename))

(cl:defmethod add-folder-file-archive ((self ifile-system) (filename cl:string) (ignoreCase t) (ignorePaths t))
  (IFileSystem_addFolderFileArchive (ff-pointer self) filename ignoreCase ignorePaths))

(cl:defmethod add-folder-file-archive ((self ifile-system) (filename cl:string) (ignoreCase t))
  (IFileSystem_addFolderFileArchive (ff-pointer self) filename ignoreCase))

(cl:defmethod add-folder-file-archive ((self ifile-system) (filename cl:string))
  (IFileSystem_addFolderFileArchive (ff-pointer self) filename))

(cl:defmethod add-pak-file-archive ((self ifile-system) (filename cl:string) (ignoreCase t) (ignorePaths t))
  (IFileSystem_addPakFileArchive (ff-pointer self) filename ignoreCase ignorePaths))

(cl:defmethod add-pak-file-archive ((self ifile-system) (filename cl:string) (ignoreCase t))
  (IFileSystem_addPakFileArchive (ff-pointer self) filename ignoreCase))

(cl:defmethod add-pak-file-archive ((self ifile-system) (filename cl:string))
  (IFileSystem_addPakFileArchive (ff-pointer self) filename))

(cl:defmethod get-working-directory ((self ifile-system))
  (IFileSystem_getWorkingDirectory (ff-pointer self)))

(cl:defmethod change-working-directory-to ((self ifile-system) newDirectory)
  (IFileSystem_changeWorkingDirectoryTo (ff-pointer self) newDirectory))

(cl:defmethod get-absolute-path ((self ifile-system) filename)
  (IFileSystem_getAbsolutePath (ff-pointer self) filename))

(cl:defmethod get-file-dir ((self ifile-system) filename)
  (IFileSystem_getFileDir (ff-pointer self) filename))

(cl:defmethod get-file-basename ((self ifile-system) filename (keepExtension t))
  (IFileSystem_getFileBasename (ff-pointer self) filename keepExtension))

(cl:defmethod get-file-basename ((self ifile-system) filename)
  (IFileSystem_getFileBasename (ff-pointer self) filename))

(cl:defmethod flatten-filename ((self ifile-system) directory root)
  (IFileSystem_flattenFilename (ff-pointer self) directory root))

(cl:defmethod flatten-filename ((self ifile-system) directory)
  (IFileSystem_flattenFilename (ff-pointer self) directory))

(cl:defmethod get-relative-filename ((self ifile-system) filename directory)
  (IFileSystem_getRelativeFilename (ff-pointer self) filename directory))

(cl:defmethod create-file-list ((self ifile-system))
  (IFileSystem_createFileList (ff-pointer self)))

(cl:defmethod create-empty-file-list ((self ifile-system) path (ignoreCase t) (ignorePaths t))
  (IFileSystem_createEmptyFileList (ff-pointer self) path ignoreCase ignorePaths))

(cl:defmethod set-file-list-system ((self ifile-system) (listType cl:integer))
  (IFileSystem_setFileListSystem (ff-pointer self) listType))

(cl:defmethod exist-file ((self ifile-system) filename)
  (IFileSystem_existFile (ff-pointer self) filename))

(cl:defmethod create-xmlreader ((self ifile-system) filename)
  (IFileSystem_createXMLReader (ff-pointer self) filename))

(cl:defmethod create-xmlreader ((self ifile-system) (file iread-file))
  (IFileSystem_createXMLReader (ff-pointer self) file))

(cl:defmethod create-xmlreader-utf8 ((self ifile-system) filename)
  (IFileSystem_createXMLReaderUTF8 (ff-pointer self) filename))

(cl:defmethod create-xmlreader-utf8 ((self ifile-system) (file iread-file))
  (IFileSystem_createXMLReaderUTF8 (ff-pointer self) file))

(cl:defmethod create-xmlwriter ((self ifile-system) filename)
  (IFileSystem_createXMLWriter (ff-pointer self) filename))

(cl:defmethod create-xmlwriter ((self ifile-system) file)
  (IFileSystem_createXMLWriter (ff-pointer self) file))

(cl:defmethod create-empty-attributes ((self ifile-system) driver)
  (IFileSystem_createEmptyAttributes (ff-pointer self) driver))

(cl:defmethod create-empty-attributes ((self ifile-system))
  (IFileSystem_createEmptyAttributes (ff-pointer self)))


(cl:defclass iimage(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod lock ((self iimage))
  (IImage_lock (ff-pointer self)))

(cl:defmethod unlock ((self iimage))
  (IImage_unlock (ff-pointer self)))

(cl:defmethod get-dimension ((self iimage))
  (IImage_getDimension (ff-pointer self)))

(cl:defmethod get-bits-per-pixel ((self iimage))
  (IImage_getBitsPerPixel (ff-pointer self)))

(cl:defmethod get-bytes-per-pixel ((self iimage))
  (IImage_getBytesPerPixel (ff-pointer self)))

(cl:defmethod get-image-data-size-in-bytes ((self iimage))
  (IImage_getImageDataSizeInBytes (ff-pointer self)))

(cl:defmethod get-image-data-size-in-pixels ((self iimage))
  (IImage_getImageDataSizeInPixels (ff-pointer self)))

(cl:defmethod get-pixel ((self iimage) (x cl:integer) (y cl:integer))
  (IImage_getPixel (ff-pointer self) x y))

(cl:defmethod set-pixel ((self iimage) (x cl:integer) (y cl:integer) (color scolor) (blend t))
  (IImage_setPixel (ff-pointer self) x y color blend))

(cl:defmethod set-pixel ((self iimage) (x cl:integer) (y cl:integer) (color scolor))
  (IImage_setPixel (ff-pointer self) x y color))

(cl:defmethod get-color-format ((self iimage))
  (IImage_getColorFormat (ff-pointer self)))

(cl:defmethod get-red-mask ((self iimage))
  (IImage_getRedMask (ff-pointer self)))

(cl:defmethod get-green-mask ((self iimage))
  (IImage_getGreenMask (ff-pointer self)))

(cl:defmethod get-blue-mask ((self iimage))
  (IImage_getBlueMask (ff-pointer self)))

(cl:defmethod get-alpha-mask ((self iimage))
  (IImage_getAlphaMask (ff-pointer self)))

(cl:defmethod get-pitch ((self iimage))
  (IImage_getPitch (ff-pointer self)))

(cl:defmethod copy-to-scaling ((self iimage) target (width cl:integer) (height cl:integer) (format cl:integer) (pitch cl:integer))
  (IImage_copyToScaling (ff-pointer self) target width height format pitch))

(cl:defmethod copy-to-scaling ((self iimage) target (width cl:integer) (height cl:integer) (format cl:integer))
  (IImage_copyToScaling (ff-pointer self) target width height format))

(cl:defmethod copy-to-scaling ((self iimage) target (width cl:integer) (height cl:integer))
  (IImage_copyToScaling (ff-pointer self) target width height))

(cl:defmethod copy-to-scaling ((self iimage) (target iimage))
  (IImage_copyToScaling (ff-pointer self) (ff-pointer target)))

(cl:defmethod copy-to ((self iimage) (target iimage) pos)
  (IImage_copyTo (ff-pointer self) (ff-pointer target) pos))

(cl:defmethod copy-to ((self iimage) (target iimage))
  (IImage_copyTo (ff-pointer self) (ff-pointer target)))

(cl:defmethod copy-to ((self iimage) (target iimage) pos sourceRect clipRect)
  (IImage_copyTo (ff-pointer self) (ff-pointer target) pos sourceRect clipRect))

(cl:defmethod copy-to ((self iimage) (target iimage) pos sourceRect)
  (IImage_copyTo (ff-pointer self) (ff-pointer target) pos sourceRect))

(cl:defmethod copy-to-with-alpha ((self iimage) (target iimage) pos sourceRect (color scolor) clipRect)
  (IImage_copyToWithAlpha (ff-pointer self) (ff-pointer target) pos sourceRect color clipRect))

(cl:defmethod copy-to-with-alpha ((self iimage) (target iimage) pos sourceRect (color scolor))
  (IImage_copyToWithAlpha (ff-pointer self) (ff-pointer target) pos sourceRect color))

(cl:defmethod copy-to-scaling-box-filter ((self iimage) (target iimage) (bias cl:integer) (blend t))
  (IImage_copyToScalingBoxFilter (ff-pointer self) (ff-pointer target) bias blend))

(cl:defmethod copy-to-scaling-box-filter ((self iimage) (target iimage) (bias cl:integer))
  (IImage_copyToScalingBoxFilter (ff-pointer self) (ff-pointer target) bias))

(cl:defmethod copy-to-scaling-box-filter ((self iimage) (target iimage))
  (IImage_copyToScalingBoxFilter (ff-pointer self) (ff-pointer target)))

(cl:defmethod fill ((self iimage) (color scolor))
  (IImage_fill (ff-pointer self) color))


(cl:defclass itexture(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod lock ((self itexture) (mode cl:integer) (mipmapLevel cl:integer))
  (ITexture_lock (ff-pointer self) mode mipmapLevel))

(cl:defmethod lock ((self itexture) (mode cl:integer))
  (ITexture_lock (ff-pointer self) mode))

(cl:defmethod lock ((self itexture))
  (ITexture_lock (ff-pointer self)))

(cl:defmethod unlock ((self itexture))
  (ITexture_unlock (ff-pointer self)))

(cl:defmethod get-original-size ((self itexture))
  (ITexture_getOriginalSize (ff-pointer self)))

(cl:defmethod get-size ((self itexture))
  (ITexture_getSize (ff-pointer self)))

(cl:defmethod get-driver-type ((self itexture))
  (ITexture_getDriverType (ff-pointer self)))

(cl:defmethod get-color-format ((self itexture))
  (ITexture_getColorFormat (ff-pointer self)))

(cl:defmethod get-pitch ((self itexture))
  (ITexture_getPitch (ff-pointer self)))

(cl:defmethod has-mip-maps ((self itexture))
  (ITexture_hasMipMaps (ff-pointer self)))

(cl:defmethod has-alpha ((self itexture))
  (ITexture_hasAlpha (ff-pointer self)))

(cl:defmethod regenerate-mip-map-levels ((self itexture) mipmapData)
  (ITexture_regenerateMipMapLevels (ff-pointer self) mipmapData))

(cl:defmethod regenerate-mip-map-levels ((self itexture))
  (ITexture_regenerateMipMapLevels (ff-pointer self)))

(cl:defmethod is-render-target ((self itexture))
  (ITexture_isRenderTarget (ff-pointer self)))

(cl:defmethod get-name ((self itexture))
  (ITexture_getName (ff-pointer self)))


(cl:defclass ivideo-driver(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod begin-scene ((self ivideo-driver) (backBuffer t) (zBuffer t) (color scolor) videoData sourceRect)
  (IVideoDriver_beginScene (ff-pointer self) backBuffer zBuffer color videoData sourceRect))

(cl:defmethod begin-scene ((self ivideo-driver) (backBuffer t) (zBuffer t) (color scolor) videoData)
  (IVideoDriver_beginScene (ff-pointer self) backBuffer zBuffer color videoData))

(cl:defmethod begin-scene ((self ivideo-driver) (backBuffer t) (zBuffer t) (color scolor))
  (IVideoDriver_beginScene (ff-pointer self) backBuffer zBuffer color))

(cl:defmethod begin-scene ((self ivideo-driver) (backBuffer t) (zBuffer t))
  (IVideoDriver_beginScene (ff-pointer self) backBuffer zBuffer))

(cl:defmethod begin-scene ((self ivideo-driver) (backBuffer t))
  (IVideoDriver_beginScene (ff-pointer self) backBuffer))

(cl:defmethod begin-scene ((self ivideo-driver))
  (IVideoDriver_beginScene (ff-pointer self)))

(cl:defmethod end-scene ((self ivideo-driver))
  (IVideoDriver_endScene (ff-pointer self)))

(cl:defmethod query-feature ((self ivideo-driver) (feature cl:integer))
  (IVideoDriver_queryFeature (ff-pointer self) feature))

(cl:defmethod disable-feature ((self ivideo-driver) (feature cl:integer) (flag t))
  (IVideoDriver_disableFeature (ff-pointer self) feature flag))

(cl:defmethod disable-feature ((self ivideo-driver) (feature cl:integer))
  (IVideoDriver_disableFeature (ff-pointer self) feature))

(cl:defmethod get-driver-attributes ((self ivideo-driver))
  (IVideoDriver_getDriverAttributes (ff-pointer self)))

(cl:defmethod check-driver-reset ((self ivideo-driver))
  (IVideoDriver_checkDriverReset (ff-pointer self)))

(cl:defmethod set-transform ((self ivideo-driver) (state cl:integer) mat)
  (IVideoDriver_setTransform (ff-pointer self) state mat))

(cl:defmethod get-transform ((self ivideo-driver) (state cl:integer))
  (IVideoDriver_getTransform (ff-pointer self) state))

(cl:defmethod get-image-loader-count ((self ivideo-driver))
  (IVideoDriver_getImageLoaderCount (ff-pointer self)))

(cl:defmethod get-image-loader ((self ivideo-driver) (n cl:integer))
  (IVideoDriver_getImageLoader (ff-pointer self) n))

(cl:defmethod get-image-writer-count ((self ivideo-driver))
  (IVideoDriver_getImageWriterCount (ff-pointer self)))

(cl:defmethod get-image-writer ((self ivideo-driver) (n cl:integer))
  (IVideoDriver_getImageWriter (ff-pointer self) n))

(cl:defmethod set-material ((self ivideo-driver) (material smaterial))
  (IVideoDriver_setMaterial (ff-pointer self) material))

(cl:defmethod get-texture ((self ivideo-driver) filename)
  (IVideoDriver_getTexture (ff-pointer self) filename))

(cl:defmethod get-texture ((self ivideo-driver) (file iread-file))
  (IVideoDriver_getTexture (ff-pointer self) file))

(cl:defmethod get-texture-by-index ((self ivideo-driver) (index cl:integer))
  (IVideoDriver_getTextureByIndex (ff-pointer self) index))

(cl:defmethod get-texture-count ((self ivideo-driver))
  (IVideoDriver_getTextureCount (ff-pointer self)))

(cl:defmethod rename-texture ((self ivideo-driver) (texture itexture) newName)
  (IVideoDriver_renameTexture (ff-pointer self) texture newName))

(cl:defmethod add-texture ((self ivideo-driver) size name (format cl:integer))
  (IVideoDriver_addTexture (ff-pointer self) size name format))

(cl:defmethod add-texture ((self ivideo-driver) size name)
  (IVideoDriver_addTexture (ff-pointer self) size name))

(cl:defmethod add-texture ((self ivideo-driver) name (image iimage) mipmapData)
  (IVideoDriver_addTexture (ff-pointer self) name image mipmapData))

(cl:defmethod add-texture ((self ivideo-driver) name (image iimage))
  (IVideoDriver_addTexture (ff-pointer self) name image))

(cl:defmethod add-render-target-texture ((self ivideo-driver) size name (format cl:integer))
  (IVideoDriver_addRenderTargetTexture (ff-pointer self) size name format))

(cl:defmethod add-render-target-texture ((self ivideo-driver) size name)
  (IVideoDriver_addRenderTargetTexture (ff-pointer self) size name))

(cl:defmethod add-render-target-texture ((self ivideo-driver) size)
  (IVideoDriver_addRenderTargetTexture (ff-pointer self) size))

(cl:defmethod remove-texture ((self ivideo-driver) (texture itexture))
  (IVideoDriver_removeTexture (ff-pointer self) texture))

(cl:defmethod remove-all-textures ((self ivideo-driver))
  (IVideoDriver_removeAllTextures (ff-pointer self)))

(cl:defmethod remove-hardware-buffer ((self ivideo-driver) (mb imesh-buffer))
  (IVideoDriver_removeHardwareBuffer (ff-pointer self) mb))

(cl:defmethod remove-all-hardware-buffers ((self ivideo-driver))
  (IVideoDriver_removeAllHardwareBuffers (ff-pointer self)))

(cl:defmethod add-occlusion-query ((self ivideo-driver) node (mesh imesh))
  (IVideoDriver_addOcclusionQuery (ff-pointer self) node mesh))

(cl:defmethod add-occlusion-query ((self ivideo-driver) node)
  (IVideoDriver_addOcclusionQuery (ff-pointer self) node))

(cl:defmethod remove-occlusion-query ((self ivideo-driver) node)
  (IVideoDriver_removeOcclusionQuery (ff-pointer self) node))

(cl:defmethod remove-all-occlusion-queries ((self ivideo-driver))
  (IVideoDriver_removeAllOcclusionQueries (ff-pointer self)))

(cl:defmethod run-occlusion-query ((self ivideo-driver) node (visible t))
  (IVideoDriver_runOcclusionQuery (ff-pointer self) node visible))

(cl:defmethod run-occlusion-query ((self ivideo-driver) node)
  (IVideoDriver_runOcclusionQuery (ff-pointer self) node))

(cl:defmethod run-all-occlusion-queries ((self ivideo-driver) (visible t))
  (IVideoDriver_runAllOcclusionQueries (ff-pointer self) visible))

(cl:defmethod run-all-occlusion-queries ((self ivideo-driver))
  (IVideoDriver_runAllOcclusionQueries (ff-pointer self)))

(cl:defmethod update-occlusion-query ((self ivideo-driver) node (block t))
  (IVideoDriver_updateOcclusionQuery (ff-pointer self) node block))

(cl:defmethod update-occlusion-query ((self ivideo-driver) node)
  (IVideoDriver_updateOcclusionQuery (ff-pointer self) node))

(cl:defmethod update-all-occlusion-queries ((self ivideo-driver) (block t))
  (IVideoDriver_updateAllOcclusionQueries (ff-pointer self) block))

(cl:defmethod update-all-occlusion-queries ((self ivideo-driver))
  (IVideoDriver_updateAllOcclusionQueries (ff-pointer self)))

(cl:defmethod get-occlusion-query-result ((self ivideo-driver) node)
  (IVideoDriver_getOcclusionQueryResult (ff-pointer self) node))

(cl:defmethod make-color-key-texture ((self ivideo-driver) (texture itexture) (color scolor) (zeroTexels t))
  (IVideoDriver_makeColorKeyTexture (ff-pointer self) texture color zeroTexels))

(cl:defmethod make-color-key-texture ((self ivideo-driver) (texture itexture) (color scolor))
  (IVideoDriver_makeColorKeyTexture (ff-pointer self) texture color))

(cl:defmethod make-color-key-texture ((self ivideo-driver) (texture itexture) colorKeyPixelPos (zeroTexels t))
  (IVideoDriver_makeColorKeyTexture (ff-pointer self) texture colorKeyPixelPos zeroTexels))

(cl:defmethod make-color-key-texture ((self ivideo-driver) (texture itexture) colorKeyPixelPos)
  (IVideoDriver_makeColorKeyTexture (ff-pointer self) texture colorKeyPixelPos))

(cl:defmethod make-normal-map-texture ((self ivideo-driver) (texture itexture) (amplitude cl:number))
  (IVideoDriver_makeNormalMapTexture (ff-pointer self) texture amplitude))

(cl:defmethod make-normal-map-texture ((self ivideo-driver) (texture itexture))
  (IVideoDriver_makeNormalMapTexture (ff-pointer self) texture))

(cl:defmethod set-render-target ((self ivideo-driver) (texture itexture) (clearBackBuffer t) (clearZBuffer t) (color scolor))
  (IVideoDriver_setRenderTarget (ff-pointer self) texture clearBackBuffer clearZBuffer color))

(cl:defmethod set-render-target ((self ivideo-driver) (texture itexture) (clearBackBuffer t) (clearZBuffer t))
  (IVideoDriver_setRenderTarget (ff-pointer self) texture clearBackBuffer clearZBuffer))

(cl:defmethod set-render-target ((self ivideo-driver) (texture itexture) (clearBackBuffer t))
  (IVideoDriver_setRenderTarget (ff-pointer self) texture clearBackBuffer))

(cl:defmethod set-render-target ((self ivideo-driver) (texture itexture))
  (IVideoDriver_setRenderTarget (ff-pointer self) texture))

(cl:defmethod set-render-target ((self ivideo-driver) (target cl:integer) (clearTarget t) (clearZBuffer t) (color scolor))
  (IVideoDriver_setRenderTarget (ff-pointer self) target clearTarget clearZBuffer color))

(cl:defmethod set-render-target ((self ivideo-driver) (target cl:integer) (clearTarget t) (clearZBuffer t))
  (IVideoDriver_setRenderTarget (ff-pointer self) target clearTarget clearZBuffer))

(cl:defmethod set-render-target ((self ivideo-driver) (target cl:integer) (clearTarget t))
  (IVideoDriver_setRenderTarget (ff-pointer self) target clearTarget))

(cl:defmethod set-render-target ((self ivideo-driver) (target cl:integer))
  (IVideoDriver_setRenderTarget (ff-pointer self) target))

(cl:defmethod set-render-target ((self ivideo-driver) texture (clearBackBuffer t) (clearZBuffer t) (color scolor))
  (IVideoDriver_setRenderTarget (ff-pointer self) texture clearBackBuffer clearZBuffer color))

(cl:defmethod set-render-target ((self ivideo-driver) texture (clearBackBuffer t) (clearZBuffer t))
  (IVideoDriver_setRenderTarget (ff-pointer self) texture clearBackBuffer clearZBuffer))

(cl:defmethod set-render-target ((self ivideo-driver) texture (clearBackBuffer t))
  (IVideoDriver_setRenderTarget (ff-pointer self) texture clearBackBuffer))

(cl:defmethod set-render-target ((self ivideo-driver) texture)
  (IVideoDriver_setRenderTarget (ff-pointer self) texture))

(cl:defmethod set-view-port ((self ivideo-driver) area)
  (IVideoDriver_setViewPort (ff-pointer self) area))

(cl:defmethod get-view-port ((self ivideo-driver))
  (IVideoDriver_getViewPort (ff-pointer self)))

(cl:defmethod draw-vertex-primitive-list ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (primCount cl:integer) (vType cl:integer) (pType cl:integer) (iType cl:integer))
  (IVideoDriver_drawVertexPrimitiveList (ff-pointer self) vertices vertexCount indexList primCount vType pType iType))

(cl:defmethod draw-vertex-primitive-list ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (primCount cl:integer) (vType cl:integer) (pType cl:integer))
  (IVideoDriver_drawVertexPrimitiveList (ff-pointer self) vertices vertexCount indexList primCount vType pType))

(cl:defmethod draw-vertex-primitive-list ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (primCount cl:integer) (vType cl:integer))
  (IVideoDriver_drawVertexPrimitiveList (ff-pointer self) vertices vertexCount indexList primCount vType))

(cl:defmethod draw-vertex-primitive-list ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (primCount cl:integer))
  (IVideoDriver_drawVertexPrimitiveList (ff-pointer self) vertices vertexCount indexList primCount))

(cl:defmethod draw2-dvertex-primitive-list ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (primCount cl:integer) (vType cl:integer) (pType cl:integer) (iType cl:integer))
  (IVideoDriver_draw2DVertexPrimitiveList (ff-pointer self) vertices vertexCount indexList primCount vType pType iType))

(cl:defmethod draw2-dvertex-primitive-list ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (primCount cl:integer) (vType cl:integer) (pType cl:integer))
  (IVideoDriver_draw2DVertexPrimitiveList (ff-pointer self) vertices vertexCount indexList primCount vType pType))

(cl:defmethod draw2-dvertex-primitive-list ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (primCount cl:integer) (vType cl:integer))
  (IVideoDriver_draw2DVertexPrimitiveList (ff-pointer self) vertices vertexCount indexList primCount vType))

(cl:defmethod draw2-dvertex-primitive-list ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (primCount cl:integer))
  (IVideoDriver_draw2DVertexPrimitiveList (ff-pointer self) vertices vertexCount indexList primCount))

(cl:defmethod draw-indexed-triangle-list ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (triangleCount cl:integer))
  (IVideoDriver_drawIndexedTriangleList (ff-pointer self) vertices vertexCount indexList triangleCount))

(cl:defmethod draw-indexed-triangle-list ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (triangleCount cl:integer))
  (IVideoDriver_drawIndexedTriangleList (ff-pointer self) vertices vertexCount indexList triangleCount))

(cl:defmethod draw-indexed-triangle-list ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (triangleCount cl:integer))
  (IVideoDriver_drawIndexedTriangleList (ff-pointer self) vertices vertexCount indexList triangleCount))

(cl:defmethod draw-indexed-triangle-fan ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (triangleCount cl:integer))
  (IVideoDriver_drawIndexedTriangleFan (ff-pointer self) vertices vertexCount indexList triangleCount))

(cl:defmethod draw-indexed-triangle-fan ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (triangleCount cl:integer))
  (IVideoDriver_drawIndexedTriangleFan (ff-pointer self) vertices vertexCount indexList triangleCount))

(cl:defmethod draw-indexed-triangle-fan ((self ivideo-driver) vertices (vertexCount cl:integer) indexList (triangleCount cl:integer))
  (IVideoDriver_drawIndexedTriangleFan (ff-pointer self) vertices vertexCount indexList triangleCount))

(cl:defmethod draw3-dline ((self ivideo-driver) start end (color scolor))
  (IVideoDriver_draw3DLine (ff-pointer self) start end color))

(cl:defmethod draw3-dline ((self ivideo-driver) start end)
  (IVideoDriver_draw3DLine (ff-pointer self) start end))

(cl:defmethod draw3-dtriangle ((self ivideo-driver) triangle (color scolor))
  (IVideoDriver_draw3DTriangle (ff-pointer self) triangle color))

(cl:defmethod draw3-dtriangle ((self ivideo-driver) triangle)
  (IVideoDriver_draw3DTriangle (ff-pointer self) triangle))

(cl:defmethod draw3-dbox ((self ivideo-driver) box (color scolor))
  (IVideoDriver_draw3DBox (ff-pointer self) box color))

(cl:defmethod draw3-dbox ((self ivideo-driver) box)
  (IVideoDriver_draw3DBox (ff-pointer self) box))

(cl:defmethod draw2-dimage ((self ivideo-driver) (texture itexture) destPos)
  (IVideoDriver_draw2DImage (ff-pointer self) texture destPos))

(cl:defmethod draw2-dimage ((self ivideo-driver) (texture itexture) destPos sourceRect clipRect (color scolor) (useAlphaChannelOfTexture t))
  (IVideoDriver_draw2DImage (ff-pointer self) texture destPos sourceRect clipRect color useAlphaChannelOfTexture))

(cl:defmethod draw2-dimage ((self ivideo-driver) (texture itexture) destPos sourceRect clipRect (color scolor))
  (IVideoDriver_draw2DImage (ff-pointer self) texture destPos sourceRect clipRect color))

(cl:defmethod draw2-dimage ((self ivideo-driver) (texture itexture) destPos sourceRect clipRect)
  (IVideoDriver_draw2DImage (ff-pointer self) texture destPos sourceRect clipRect))

(cl:defmethod draw2-dimage ((self ivideo-driver) (texture itexture) destPos sourceRect)
  (IVideoDriver_draw2DImage (ff-pointer self) texture destPos sourceRect))

(cl:defmethod draw2-dimage-batch ((self ivideo-driver) (texture itexture) pos sourceRects indices (kerningWidth cl:integer) clipRect (color scolor) (useAlphaChannelOfTexture t))
  (IVideoDriver_draw2DImageBatch (ff-pointer self) texture pos sourceRects indices kerningWidth clipRect color useAlphaChannelOfTexture))

(cl:defmethod draw2-dimage-batch ((self ivideo-driver) (texture itexture) pos sourceRects indices (kerningWidth cl:integer) clipRect (color scolor))
  (IVideoDriver_draw2DImageBatch (ff-pointer self) texture pos sourceRects indices kerningWidth clipRect color))

(cl:defmethod draw2-dimage-batch ((self ivideo-driver) (texture itexture) pos sourceRects indices (kerningWidth cl:integer) clipRect)
  (IVideoDriver_draw2DImageBatch (ff-pointer self) texture pos sourceRects indices kerningWidth clipRect))

(cl:defmethod draw2-dimage-batch ((self ivideo-driver) (texture itexture) pos sourceRects indices (kerningWidth cl:integer))
  (IVideoDriver_draw2DImageBatch (ff-pointer self) texture pos sourceRects indices kerningWidth))

(cl:defmethod draw2-dimage-batch ((self ivideo-driver) (texture itexture) pos sourceRects indices)
  (IVideoDriver_draw2DImageBatch (ff-pointer self) texture pos sourceRects indices))

(cl:defmethod draw2-dimage-batch ((self ivideo-driver) (texture itexture) positions sourceRects clipRect (color scolor) (useAlphaChannelOfTexture t))
  (IVideoDriver_draw2DImageBatch (ff-pointer self) texture positions sourceRects clipRect color useAlphaChannelOfTexture))

(cl:defmethod draw2-dimage-batch ((self ivideo-driver) (texture itexture) positions sourceRects clipRect (color scolor))
  (IVideoDriver_draw2DImageBatch (ff-pointer self) texture positions sourceRects clipRect color))

(cl:defmethod draw2-dimage-batch ((self ivideo-driver) (texture itexture) positions sourceRects clipRect)
  (IVideoDriver_draw2DImageBatch (ff-pointer self) texture positions sourceRects clipRect))

(cl:defmethod draw2-dimage-batch ((self ivideo-driver) (texture itexture) positions sourceRects)
  (IVideoDriver_draw2DImageBatch (ff-pointer self) texture positions sourceRects))

(cl:defmethod draw2-dimage ((self ivideo-driver) (texture itexture) destRect sourceRect clipRect (colors scolor) (useAlphaChannelOfTexture t))
  (IVideoDriver_draw2DImage (ff-pointer self) texture destRect sourceRect clipRect colors useAlphaChannelOfTexture))

(cl:defmethod draw2-dimage ((self ivideo-driver) (texture itexture) destRect sourceRect clipRect (colors scolor))
  (IVideoDriver_draw2DImage (ff-pointer self) texture destRect sourceRect clipRect colors))

(cl:defmethod draw2-dimage ((self ivideo-driver) (texture itexture) destRect sourceRect clipRect)
  (IVideoDriver_draw2DImage (ff-pointer self) texture destRect sourceRect clipRect))

(cl:defmethod draw2-dimage ((self ivideo-driver) (texture itexture) destRect sourceRect)
  (IVideoDriver_draw2DImage (ff-pointer self) texture destRect sourceRect))

(cl:defmethod draw2-drectangle ((self ivideo-driver) (color scolor) pos clip)
  (IVideoDriver_draw2DRectangle (ff-pointer self) color pos clip))

(cl:defmethod draw2-drectangle ((self ivideo-driver) (color scolor) pos)
  (IVideoDriver_draw2DRectangle (ff-pointer self) color pos))

(cl:defmethod draw2-drectangle ((self ivideo-driver) pos (colorLeftUp scolor) (colorRightUp scolor) (colorLeftDown scolor) (colorRightDown scolor) clip)
  (IVideoDriver_draw2DRectangle (ff-pointer self) pos colorLeftUp colorRightUp colorLeftDown colorRightDown clip))

(cl:defmethod draw2-drectangle ((self ivideo-driver) pos (colorLeftUp scolor) (colorRightUp scolor) (colorLeftDown scolor) (colorRightDown scolor))
  (IVideoDriver_draw2DRectangle (ff-pointer self) pos colorLeftUp colorRightUp colorLeftDown colorRightDown))

(cl:defmethod draw2-drectangle-outline ((self ivideo-driver) pos (color scolor))
  (IVideoDriver_draw2DRectangleOutline (ff-pointer self) pos color))

(cl:defmethod draw2-drectangle-outline ((self ivideo-driver) pos)
  (IVideoDriver_draw2DRectangleOutline (ff-pointer self) pos))

(cl:defmethod draw2-dline ((self ivideo-driver) start end (color scolor))
  (IVideoDriver_draw2DLine (ff-pointer self) start end color))

(cl:defmethod draw2-dline ((self ivideo-driver) start end)
  (IVideoDriver_draw2DLine (ff-pointer self) start end))

(cl:defmethod draw-pixel ((self ivideo-driver) (x cl:integer) (y cl:integer) (color scolor))
  (IVideoDriver_drawPixel (ff-pointer self) x y color))

(cl:defmethod draw2-dpolygon ((self ivideo-driver) center (radius cl:number) (color scolor) (vertexCount cl:integer))
  (IVideoDriver_draw2DPolygon (ff-pointer self) center radius color vertexCount))

(cl:defmethod draw2-dpolygon ((self ivideo-driver) center (radius cl:number) (color scolor))
  (IVideoDriver_draw2DPolygon (ff-pointer self) center radius color))

(cl:defmethod draw2-dpolygon ((self ivideo-driver) center (radius cl:number))
  (IVideoDriver_draw2DPolygon (ff-pointer self) center radius))

(cl:defmethod draw-stencil-shadow-volume ((self ivideo-driver) triangles (zfail t) (debugDataVisible cl:integer))
  (IVideoDriver_drawStencilShadowVolume (ff-pointer self) triangles zfail debugDataVisible))

(cl:defmethod draw-stencil-shadow-volume ((self ivideo-driver) triangles (zfail t))
  (IVideoDriver_drawStencilShadowVolume (ff-pointer self) triangles zfail))

(cl:defmethod draw-stencil-shadow-volume ((self ivideo-driver) triangles)
  (IVideoDriver_drawStencilShadowVolume (ff-pointer self) triangles))

(cl:defmethod draw-stencil-shadow ((self ivideo-driver) (clearStencilBuffer t) (leftUpEdge scolor) (rightUpEdge scolor) (leftDownEdge scolor) (rightDownEdge scolor))
  (IVideoDriver_drawStencilShadow (ff-pointer self) clearStencilBuffer leftUpEdge rightUpEdge leftDownEdge rightDownEdge))

(cl:defmethod draw-stencil-shadow ((self ivideo-driver) (clearStencilBuffer t) (leftUpEdge scolor) (rightUpEdge scolor) (leftDownEdge scolor))
  (IVideoDriver_drawStencilShadow (ff-pointer self) clearStencilBuffer leftUpEdge rightUpEdge leftDownEdge))

(cl:defmethod draw-stencil-shadow ((self ivideo-driver) (clearStencilBuffer t) (leftUpEdge scolor) (rightUpEdge scolor))
  (IVideoDriver_drawStencilShadow (ff-pointer self) clearStencilBuffer leftUpEdge rightUpEdge))

(cl:defmethod draw-stencil-shadow ((self ivideo-driver) (clearStencilBuffer t) (leftUpEdge scolor))
  (IVideoDriver_drawStencilShadow (ff-pointer self) clearStencilBuffer leftUpEdge))

(cl:defmethod draw-stencil-shadow ((self ivideo-driver) (clearStencilBuffer t))
  (IVideoDriver_drawStencilShadow (ff-pointer self) clearStencilBuffer))

(cl:defmethod draw-stencil-shadow ((self ivideo-driver))
  (IVideoDriver_drawStencilShadow (ff-pointer self)))

(cl:defmethod draw-mesh-buffer ((self ivideo-driver) (mb imesh-buffer))
  (IVideoDriver_drawMeshBuffer (ff-pointer self) mb))

(cl:defmethod draw-mesh-buffer-normals ((self ivideo-driver) (mb imesh-buffer) (length cl:number) (color scolor))
  (IVideoDriver_drawMeshBufferNormals (ff-pointer self) mb length color))

(cl:defmethod draw-mesh-buffer-normals ((self ivideo-driver) (mb imesh-buffer) (length cl:number))
  (IVideoDriver_drawMeshBufferNormals (ff-pointer self) mb length))

(cl:defmethod draw-mesh-buffer-normals ((self ivideo-driver) (mb imesh-buffer))
  (IVideoDriver_drawMeshBufferNormals (ff-pointer self) mb))

(cl:defmethod set-fog ((self ivideo-driver) (color scolor) (fogType cl:integer) (start cl:number) (end cl:number) (density cl:number) (pixelFog t) (rangeFog t))
  (IVideoDriver_setFog (ff-pointer self) color fogType start end density pixelFog rangeFog))

(cl:defmethod set-fog ((self ivideo-driver) (color scolor) (fogType cl:integer) (start cl:number) (end cl:number) (density cl:number) (pixelFog t))
  (IVideoDriver_setFog (ff-pointer self) color fogType start end density pixelFog))

(cl:defmethod set-fog ((self ivideo-driver) (color scolor) (fogType cl:integer) (start cl:number) (end cl:number) (density cl:number))
  (IVideoDriver_setFog (ff-pointer self) color fogType start end density))

(cl:defmethod set-fog ((self ivideo-driver) (color scolor) (fogType cl:integer) (start cl:number) (end cl:number))
  (IVideoDriver_setFog (ff-pointer self) color fogType start end))

(cl:defmethod set-fog ((self ivideo-driver) (color scolor) (fogType cl:integer) (start cl:number))
  (IVideoDriver_setFog (ff-pointer self) color fogType start))

(cl:defmethod set-fog ((self ivideo-driver) (color scolor) (fogType cl:integer))
  (IVideoDriver_setFog (ff-pointer self) color fogType))

(cl:defmethod set-fog ((self ivideo-driver) (color scolor))
  (IVideoDriver_setFog (ff-pointer self) color))

(cl:defmethod set-fog ((self ivideo-driver))
  (IVideoDriver_setFog (ff-pointer self)))

(cl:defmethod get-fog ((self ivideo-driver) (color scolor) fogType start end density pixelFog rangeFog)
  (IVideoDriver_getFog (ff-pointer self) color fogType start end density pixelFog rangeFog))

(cl:defmethod get-color-format ((self ivideo-driver))
  (IVideoDriver_getColorFormat (ff-pointer self)))

(cl:defmethod get-screen-size ((self ivideo-driver))
  (IVideoDriver_getScreenSize (ff-pointer self)))

(cl:defmethod get-current-render-target-size ((self ivideo-driver))
  (IVideoDriver_getCurrentRenderTargetSize (ff-pointer self)))

(cl:defmethod get-fps ((self ivideo-driver))
  (IVideoDriver_getFPS (ff-pointer self)))

(cl:defmethod get-primitive-count-drawn ((self ivideo-driver) (mode cl:integer))
  (IVideoDriver_getPrimitiveCountDrawn (ff-pointer self) mode))

(cl:defmethod get-primitive-count-drawn ((self ivideo-driver))
  (IVideoDriver_getPrimitiveCountDrawn (ff-pointer self)))

(cl:defmethod delete-all-dynamic-lights ((self ivideo-driver))
  (IVideoDriver_deleteAllDynamicLights (ff-pointer self)))

(cl:defmethod add-dynamic-light ((self ivideo-driver) light)
  (IVideoDriver_addDynamicLight (ff-pointer self) light))

(cl:defmethod get-maximal-dynamic-light-amount ((self ivideo-driver))
  (IVideoDriver_getMaximalDynamicLightAmount (ff-pointer self)))

(cl:defmethod get-dynamic-light-count ((self ivideo-driver))
  (IVideoDriver_getDynamicLightCount (ff-pointer self)))

(cl:defmethod get-dynamic-light ((self ivideo-driver) (idx cl:integer))
  (IVideoDriver_getDynamicLight (ff-pointer self) idx))

(cl:defmethod turn-light-on ((self ivideo-driver) (lightIndex cl:integer) (turnOn t))
  (IVideoDriver_turnLightOn (ff-pointer self) lightIndex turnOn))

(cl:defmethod get-name ((self ivideo-driver))
  (IVideoDriver_getName (ff-pointer self)))

(cl:defmethod add-external-image-loader ((self ivideo-driver) loader)
  (IVideoDriver_addExternalImageLoader (ff-pointer self) loader))

(cl:defmethod add-external-image-writer ((self ivideo-driver) writer)
  (IVideoDriver_addExternalImageWriter (ff-pointer self) writer))

(cl:defmethod get-maximal-primitive-count ((self ivideo-driver))
  (IVideoDriver_getMaximalPrimitiveCount (ff-pointer self)))

(cl:defmethod set-texture-creation-flag ((self ivideo-driver) (flag cl:integer) (enabled t))
  (IVideoDriver_setTextureCreationFlag (ff-pointer self) flag enabled))

(cl:defmethod set-texture-creation-flag ((self ivideo-driver) (flag cl:integer))
  (IVideoDriver_setTextureCreationFlag (ff-pointer self) flag))

(cl:defmethod get-texture-creation-flag ((self ivideo-driver) (flag cl:integer))
  (IVideoDriver_getTextureCreationFlag (ff-pointer self) flag))

(cl:defmethod create-image-from-file ((self ivideo-driver) filename)
  (IVideoDriver_createImageFromFile (ff-pointer self) filename))

(cl:defmethod create-image-from-file ((self ivideo-driver) (file iread-file))
  (IVideoDriver_createImageFromFile (ff-pointer self) file))

(cl:defmethod write-image-to-file ((self ivideo-driver) (image iimage) filename (param cl:integer))
  (IVideoDriver_writeImageToFile (ff-pointer self) image filename param))

(cl:defmethod write-image-to-file ((self ivideo-driver) (image iimage) filename)
  (IVideoDriver_writeImageToFile (ff-pointer self) image filename))

(cl:defmethod write-image-to-file ((self ivideo-driver) (image iimage) file (param cl:integer))
  (IVideoDriver_writeImageToFile (ff-pointer self) image file param))

(cl:defmethod write-image-to-file ((self ivideo-driver) (image iimage) file)
  (IVideoDriver_writeImageToFile (ff-pointer self) image file))

(cl:defmethod create-image-from-data ((self ivideo-driver) (format cl:integer) size data (ownForeignMemory t) (deleteMemory t))
  (IVideoDriver_createImageFromData (ff-pointer self) format size data ownForeignMemory deleteMemory))

(cl:defmethod create-image-from-data ((self ivideo-driver) (format cl:integer) size data (ownForeignMemory t))
  (IVideoDriver_createImageFromData (ff-pointer self) format size data ownForeignMemory))

(cl:defmethod create-image-from-data ((self ivideo-driver) (format cl:integer) size data)
  (IVideoDriver_createImageFromData (ff-pointer self) format size data))

(cl:defmethod create-image ((self ivideo-driver) (format cl:integer) size)
  (IVideoDriver_createImage (ff-pointer self) format size))

(cl:defmethod create-image ((self ivideo-driver) (format cl:integer) (imageToCopy iimage))
  (IVideoDriver_createImage (ff-pointer self) format imageToCopy))

(cl:defmethod create-image ((self ivideo-driver) (imageToCopy iimage) pos size)
  (IVideoDriver_createImage (ff-pointer self) imageToCopy pos size))

(cl:defmethod create-image ((self ivideo-driver) (texture itexture) pos size)
  (IVideoDriver_createImage (ff-pointer self) texture pos size))

(cl:defmethod on-resize ((self ivideo-driver) size)
  (IVideoDriver_OnResize (ff-pointer self) size))

(cl:defmethod add-material-renderer ((self ivideo-driver) renderer (name cl:string))
  (IVideoDriver_addMaterialRenderer (ff-pointer self) renderer name))

(cl:defmethod add-material-renderer ((self ivideo-driver) renderer)
  (IVideoDriver_addMaterialRenderer (ff-pointer self) renderer))

(cl:defmethod get-material-renderer ((self ivideo-driver) (idx cl:integer))
  (IVideoDriver_getMaterialRenderer (ff-pointer self) idx))

(cl:defmethod get-material-renderer-count ((self ivideo-driver))
  (IVideoDriver_getMaterialRendererCount (ff-pointer self)))

(cl:defmethod get-material-renderer-name ((self ivideo-driver) (idx cl:integer))
  (IVideoDriver_getMaterialRendererName (ff-pointer self) idx))

(cl:defmethod set-material-renderer-name ((self ivideo-driver) (idx cl:integer) (name cl:string))
  (IVideoDriver_setMaterialRendererName (ff-pointer self) idx name))

(cl:defmethod create-attributes-from-material ((self ivideo-driver) (material smaterial) options)
  (IVideoDriver_createAttributesFromMaterial (ff-pointer self) material options))

(cl:defmethod create-attributes-from-material ((self ivideo-driver) (material smaterial))
  (IVideoDriver_createAttributesFromMaterial (ff-pointer self) material))

(cl:defmethod fill-material-structure-from-attributes ((self ivideo-driver) (outMaterial smaterial) attributes)
  (IVideoDriver_fillMaterialStructureFromAttributes (ff-pointer self) outMaterial attributes))

(cl:defmethod get-exposed-video-data ((self ivideo-driver))
  (IVideoDriver_getExposedVideoData (ff-pointer self)))

(cl:defmethod get-driver-type ((self ivideo-driver))
  (IVideoDriver_getDriverType (ff-pointer self)))

(cl:defmethod get-gpuprogramming-services ((self ivideo-driver))
  (IVideoDriver_getGPUProgrammingServices (ff-pointer self)))

(cl:defmethod get-mesh-manipulator ((self ivideo-driver))
  (IVideoDriver_getMeshManipulator (ff-pointer self)))

(cl:defmethod clear-zbuffer ((self ivideo-driver))
  (IVideoDriver_clearZBuffer (ff-pointer self)))

(cl:defmethod create-screen-shot ((self ivideo-driver) (format cl:integer) (target cl:integer))
  (IVideoDriver_createScreenShot (ff-pointer self) format target))

(cl:defmethod create-screen-shot ((self ivideo-driver) (format cl:integer))
  (IVideoDriver_createScreenShot (ff-pointer self) format))

(cl:defmethod create-screen-shot ((self ivideo-driver))
  (IVideoDriver_createScreenShot (ff-pointer self)))

(cl:defmethod find-texture ((self ivideo-driver) filename)
  (IVideoDriver_findTexture (ff-pointer self) filename))

(cl:defmethod set-clip-plane ((self ivideo-driver) (index cl:integer) plane (enable t))
  (IVideoDriver_setClipPlane (ff-pointer self) index plane enable))

(cl:defmethod set-clip-plane ((self ivideo-driver) (index cl:integer) plane)
  (IVideoDriver_setClipPlane (ff-pointer self) index plane))

(cl:defmethod enable-clip-plane ((self ivideo-driver) (index cl:integer) (enable t))
  (IVideoDriver_enableClipPlane (ff-pointer self) index enable))

(cl:defmethod set-min-hardware-buffer-vertex-count ((self ivideo-driver) (count cl:integer))
  (IVideoDriver_setMinHardwareBufferVertexCount (ff-pointer self) count))

(cl:defmethod get-override-material ((self ivideo-driver))
  (IVideoDriver_getOverrideMaterial (ff-pointer self)))

(cl:defmethod get-material2-d ((self ivideo-driver))
  (IVideoDriver_getMaterial2D (ff-pointer self)))

(cl:defmethod enable-material2-d ((self ivideo-driver) (enable t))
  (IVideoDriver_enableMaterial2D (ff-pointer self) enable))

(cl:defmethod enable-material2-d ((self ivideo-driver))
  (IVideoDriver_enableMaterial2D (ff-pointer self)))

(cl:defmethod get-vendor-info ((self ivideo-driver))
  (IVideoDriver_getVendorInfo (ff-pointer self)))

(cl:defmethod set-ambient-light ((self ivideo-driver) (color scolorf))
  (IVideoDriver_setAmbientLight (ff-pointer self) color))

(cl:defmethod set-allow-zwrite-on-transparent ((self ivideo-driver) (flag t))
  (IVideoDriver_setAllowZWriteOnTransparent (ff-pointer self) flag))

(cl:defmethod get-max-texture-size ((self ivideo-driver))
  (IVideoDriver_getMaxTextureSize (ff-pointer self)))

(cl:defmethod convert-color ((self ivideo-driver) sP (sF cl:integer) (sN cl:integer) dP (dF cl:integer))
  (IVideoDriver_convertColor (ff-pointer self) sP sF sN dP dF))


(cl:defclass ishader-manager(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj ishader-manager) &key)
  (setf (slot-value obj 'ff-pointer) (new_IShaderManager)))


(cl:defclass quaternion()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj quaternion) &key)
  (setf (slot-value obj 'ff-pointer) (new_quaternion)))

(cl:defmethod initialize-instance :after ((obj quaternion) &key (x cl:number) (y cl:number) (z cl:number) (w cl:number))
  (setf (slot-value obj 'ff-pointer) (new_quaternion x y z w)))

(cl:defmethod initialize-instance :after ((obj quaternion) &key (x cl:number) (y cl:number) (z cl:number))
  (setf (slot-value obj 'ff-pointer) (new_quaternion x y z)))

(cl:defmethod initialize-instance :after ((obj quaternion) &key vec)
  (setf (slot-value obj 'ff-pointer) (new_quaternion vec)))

(cl:defmethod initialize-instance :after ((obj quaternion) &key mat)
  (setf (slot-value obj 'ff-pointer) (new_quaternion mat)))

(cl:shadow "==")
(cl:defmethod == ((self quaternion) (other quaternion))
  (quaternion___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self quaternion) (other quaternion))
  (quaternion___ne__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "=")
(cl:defmethod = ((self quaternion) (other quaternion))
  (quaternion___assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "=")
(cl:defmethod = ((self quaternion) other)
  (quaternion___assign__ (ff-pointer self) other))

(cl:shadow "+")
(cl:defmethod + ((self quaternion) (other quaternion))
  (quaternion___add__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*")
(cl:defmethod * ((self quaternion) (other quaternion))
  (quaternion___mul__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*")
(cl:defmethod * ((self quaternion) (s cl:number))
  (quaternion___mul__ (ff-pointer self) s))

(cl:shadow "*=")
(cl:defmethod *= ((self quaternion) (s cl:number))
  (quaternion___mul_assign__ (ff-pointer self) s))

(cl:shadow "*")
(cl:defmethod * ((self quaternion) v)
  (quaternion___mul__ (ff-pointer self) v))

(cl:shadow "*=")
(cl:defmethod *= ((self quaternion) (other quaternion))
  (quaternion___mul_assign__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod dot-product ((self quaternion) (other quaternion))
  (quaternion_dotProduct (ff-pointer self) (ff-pointer other)))

(cl:defmethod set ((self quaternion) (x cl:number) (y cl:number) (z cl:number) (w cl:number))
  (quaternion_set (ff-pointer self) x y z w))

(cl:defmethod set ((self quaternion) (x cl:number) (y cl:number) (z cl:number))
  (quaternion_set (ff-pointer self) x y z))

(cl:defmethod set ((self quaternion) vec)
  (quaternion_set (ff-pointer self) vec))

(cl:defmethod set ((self quaternion) (quat quaternion))
  (quaternion_set (ff-pointer self) (ff-pointer quat)))

(cl:defmethod equals ((self quaternion) (other quaternion) (tolerance cl:number))
  (quaternion_equals (ff-pointer self) (ff-pointer other) tolerance))

(cl:defmethod equals ((self quaternion) (other quaternion))
  (quaternion_equals (ff-pointer self) (ff-pointer other)))

(cl:defmethod normalize ((self quaternion))
  (quaternion_normalize (ff-pointer self)))

(cl:defmethod get-matrix ((self quaternion))
  (quaternion_getMatrix (ff-pointer self)))

(cl:defmethod get-matrix ((self quaternion) dest translation)
  (quaternion_getMatrix (ff-pointer self) dest translation))

(cl:defmethod get-matrix ((self quaternion) dest)
  (quaternion_getMatrix (ff-pointer self) dest))

(cl:defmethod get-matrix-center ((self quaternion) dest center translation)
  (quaternion_getMatrixCenter (ff-pointer self) dest center translation))

(cl:defmethod get-matrix-transposed ((self quaternion) dest)
  (quaternion_getMatrix_transposed (ff-pointer self) dest))

(cl:defmethod make-inverse ((self quaternion))
  (quaternion_makeInverse (ff-pointer self)))

(cl:defmethod lerp ((self quaternion) (q1 quaternion) (q2 quaternion) (time cl:number))
  (quaternion_lerp (ff-pointer self) (ff-pointer q1) (ff-pointer q2) time))

(cl:defmethod slerp ((self quaternion) (q1 quaternion) (q2 quaternion) (time cl:number) (threshold cl:number))
  (quaternion_slerp (ff-pointer self) (ff-pointer q1) (ff-pointer q2) time threshold))

(cl:defmethod slerp ((self quaternion) (q1 quaternion) (q2 quaternion) (time cl:number))
  (quaternion_slerp (ff-pointer self) (ff-pointer q1) (ff-pointer q2) time))

(cl:defmethod from-angle-axis ((self quaternion) (angle cl:number) axis)
  (quaternion_fromAngleAxis (ff-pointer self) angle axis))

(cl:defmethod to-angle-axis ((self quaternion) angle axis)
  (quaternion_toAngleAxis (ff-pointer self) angle axis))

(cl:defmethod to-euler ((self quaternion) euler)
  (quaternion_toEuler (ff-pointer self) euler))

(cl:defmethod make-identity ((self quaternion))
  (quaternion_makeIdentity (ff-pointer self)))

(cl:defmethod rotation-from-to ((self quaternion) from to)
  (quaternion_rotationFromTo (ff-pointer self) from to))

(cl:defmethod (cl:setf X) (arg0 (obj quaternion))
  (quaternion_X_set (ff-pointer obj) arg0))

(cl:defmethod X ((obj quaternion))
  (quaternion_X_get (ff-pointer obj)))

(cl:defmethod (cl:setf Y) (arg0 (obj quaternion))
  (quaternion_Y_set (ff-pointer obj) arg0))

(cl:defmethod Y ((obj quaternion))
  (quaternion_Y_get (ff-pointer obj)))

(cl:defmethod (cl:setf Z) (arg0 (obj quaternion))
  (quaternion_Z_set (ff-pointer obj) arg0))

(cl:defmethod Z ((obj quaternion))
  (quaternion_Z_get (ff-pointer obj)))

(cl:defmethod (cl:setf W) (arg0 (obj quaternion))
  (quaternion_W_set (ff-pointer obj) arg0))

(cl:defmethod W ((obj quaternion))
  (quaternion_W_get (ff-pointer obj)))


(cl:defclass ianimated-mesh-md3(irr::scene::-ianimated-mesh)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-interpolation-shift ((self ianimated-mesh-md3) (shift cl:integer) (loopMode cl:integer))
  (IAnimatedMeshMD3_setInterpolationShift (ff-pointer self) shift loopMode))

(cl:defmethod get-tag-list ((self ianimated-mesh-md3) (frame cl:integer) (detailLevel cl:integer) (startFrameLoop cl:integer) (endFrameLoop cl:integer))
  (IAnimatedMeshMD3_getTagList (ff-pointer self) frame detailLevel startFrameLoop endFrameLoop))

(cl:defmethod get-original-mesh ((self ianimated-mesh-md3))
  (IAnimatedMeshMD3_getOriginalMesh (ff-pointer self)))


(cl:defclass iattribute-exchanging-object(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod serialize-attributes ((self iattribute-exchanging-object) out options)
  (IAttributeExchangingObject_serializeAttributes (ff-pointer self) out options))

(cl:defmethod serialize-attributes ((self iattribute-exchanging-object) out)
  (IAttributeExchangingObject_serializeAttributes (ff-pointer self) out))

(cl:defmethod deserialize-attributes ((self iattribute-exchanging-object) in options)
  (IAttributeExchangingObject_deserializeAttributes (ff-pointer self) in options))

(cl:defmethod deserialize-attributes ((self iattribute-exchanging-object) in)
  (IAttributeExchangingObject_deserializeAttributes (ff-pointer self) in))

(cl:defmethod initialize-instance :after ((obj iattribute-exchanging-object) &key)
  (setf (slot-value obj 'ff-pointer) (new_IAttributeExchangingObject)))


(cl:defclass ilogger(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-log-level ((self ilogger))
  (ILogger_getLogLevel (ff-pointer self)))

(cl:defmethod set-log-level ((self ilogger) (ll cl:integer))
  (ILogger_setLogLevel (ff-pointer self) ll))

(cl:defmethod log ((self ilogger) (text cl:string) (ll cl:integer))
  (ILogger_log (ff-pointer self) text ll))

(cl:defmethod log ((self ilogger) (text cl:string))
  (ILogger_log (ff-pointer self) text))

(cl:defmethod log ((self ilogger) (text cl:string) (hint cl:string) (ll cl:integer))
  (ILogger_log (ff-pointer self) text hint ll))

(cl:defmethod log ((self ilogger) (text cl:string) (hint cl:string))
  (ILogger_log (ff-pointer self) text hint))

(cl:defmethod log ((self ilogger) (text cl:string) hint (ll cl:integer))
  (ILogger_log (ff-pointer self) text hint ll))

(cl:defmethod log ((self ilogger) (text cl:string) hint)
  (ILogger_log (ff-pointer self) text hint))

(cl:defmethod log ((self ilogger) text hint (ll cl:integer))
  (ILogger_log (ff-pointer self) text hint ll))

(cl:defmethod log ((self ilogger) text hint)
  (ILogger_log (ff-pointer self) text hint))

(cl:defmethod log ((self ilogger) text (ll cl:integer))
  (ILogger_log (ff-pointer self) text ll))

(cl:defmethod log ((self ilogger) text)
  (ILogger_log (ff-pointer self) text))


(cl:defclass ievent-receiver()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod on-event ((self ievent-receiver) event)
  (IEventReceiver_OnEvent (ff-pointer self) event))


(cl:defclass iscene-node-animator(irr::io::-iattribute-exchanging-objectirr::-ievent-receiver)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod animate-node ((self iscene-node-animator) node (timeMs cl:integer))
  (ISceneNodeAnimator_animateNode (ff-pointer self) node timeMs))

(cl:defmethod create-clone ((self iscene-node-animator) node newManager)
  (ISceneNodeAnimator_createClone (ff-pointer self) node newManager))

(cl:defmethod create-clone ((self iscene-node-animator) node)
  (ISceneNodeAnimator_createClone (ff-pointer self) node))

(cl:defmethod is-event-receiver-enabled ((self iscene-node-animator))
  (ISceneNodeAnimator_isEventReceiverEnabled (ff-pointer self)))

(cl:defmethod get-type ((self iscene-node-animator))
  (ISceneNodeAnimator_getType (ff-pointer self)))

(cl:defmethod has-finished ((self iscene-node-animator))
  (ISceneNodeAnimator_hasFinished (ff-pointer self)))


(cl:defclass itriangle-selector(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-triangle-count ((self itriangle-selector))
  (ITriangleSelector_getTriangleCount (ff-pointer self)))

(cl:defmethod get-triangles ((self itriangle-selector) triangles (arraySize cl:integer) outTriangleCount transform)
  (ITriangleSelector_getTriangles (ff-pointer self) triangles arraySize outTriangleCount transform))

(cl:defmethod get-triangles ((self itriangle-selector) triangles (arraySize cl:integer) outTriangleCount)
  (ITriangleSelector_getTriangles (ff-pointer self) triangles arraySize outTriangleCount))

(cl:defmethod get-triangles ((self itriangle-selector) triangles (arraySize cl:integer) outTriangleCount box transform)
  (ITriangleSelector_getTriangles (ff-pointer self) triangles arraySize outTriangleCount box transform))

(cl:defmethod get-triangles ((self itriangle-selector) triangles (arraySize cl:integer) outTriangleCount box)
  (ITriangleSelector_getTriangles (ff-pointer self) triangles arraySize outTriangleCount box))

(cl:defmethod get-triangles ((self itriangle-selector) triangles (arraySize cl:integer) outTriangleCount line transform)
  (ITriangleSelector_getTriangles (ff-pointer self) triangles arraySize outTriangleCount line transform))

(cl:defmethod get-triangles ((self itriangle-selector) triangles (arraySize cl:integer) outTriangleCount line)
  (ITriangleSelector_getTriangles (ff-pointer self) triangles arraySize outTriangleCount line))

(cl:defmethod get-scene-node-for-triangle ((self itriangle-selector) (triangleIndex cl:integer))
  (ITriangleSelector_getSceneNodeForTriangle (ff-pointer self) triangleIndex))

(cl:defmethod get-selector-count ((self itriangle-selector))
  (ITriangleSelector_getSelectorCount (ff-pointer self)))

(cl:defmethod get-selector ((self itriangle-selector) (index cl:integer))
  (ITriangleSelector_getSelector (ff-pointer self) index))

(cl:defmethod get-selector ((self itriangle-selector) (index cl:integer))
  (ITriangleSelector_getSelector (ff-pointer self) index))


(cl:defclass iattributes(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-attribute-count ((self iattributes))
  (IAttributes_getAttributeCount (ff-pointer self)))

(cl:defmethod get-attribute-name ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeName (ff-pointer self) index))

(cl:defmethod get-attribute-type ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeType (ff-pointer self) attributeName))

(cl:defmethod get-attribute-type ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeType (ff-pointer self) index))

(cl:defmethod get-attribute-type-string ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeTypeString (ff-pointer self) attributeName))

(cl:defmethod get-attribute-type-string ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeTypeString (ff-pointer self) index))

(cl:defmethod exists-attribute ((self iattributes) (attributeName cl:string))
  (IAttributes_existsAttribute (ff-pointer self) attributeName))

(cl:defmethod find-attribute ((self iattributes) (attributeName cl:string))
  (IAttributes_findAttribute (ff-pointer self) attributeName))

(cl:defmethod clear ((self iattributes))
  (IAttributes_clear (ff-pointer self)))

(cl:defmethod read ((self iattributes) reader (readCurrentElementOnly t) elementName)
  (IAttributes_read (ff-pointer self) reader readCurrentElementOnly elementName))

(cl:defmethod read ((self iattributes) reader (readCurrentElementOnly t))
  (IAttributes_read (ff-pointer self) reader readCurrentElementOnly))

(cl:defmethod read ((self iattributes) reader)
  (IAttributes_read (ff-pointer self) reader))

(cl:defmethod write ((self iattributes) writer (writeXMLHeader t) elementName)
  (IAttributes_write (ff-pointer self) writer writeXMLHeader elementName))

(cl:defmethod write ((self iattributes) writer (writeXMLHeader t))
  (IAttributes_write (ff-pointer self) writer writeXMLHeader))

(cl:defmethod write ((self iattributes) writer)
  (IAttributes_write (ff-pointer self) writer))

(cl:defmethod add-int ((self iattributes) (attributeName cl:string) (value cl:integer))
  (IAttributes_addInt (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) (value cl:integer))
  (IAttributes_setAttribute (ff-pointer self) attributeName value))

(cl:defmethod get-attribute-as-int ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsInt (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-int ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsInt (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) (value cl:integer))
  (IAttributes_setAttribute (ff-pointer self) index value))

(cl:defmethod add-float ((self iattributes) (attributeName cl:string) (value cl:number))
  (IAttributes_addFloat (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) (value cl:number))
  (IAttributes_setAttribute (ff-pointer self) attributeName value))

(cl:defmethod get-attribute-as-float ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsFloat (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-float ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsFloat (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) (value cl:number))
  (IAttributes_setAttribute (ff-pointer self) index value))

(cl:defmethod add-string ((self iattributes) (attributeName cl:string) (value cl:string))
  (IAttributes_addString (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) (value cl:string))
  (IAttributes_setAttribute (ff-pointer self) attributeName value))

(cl:defmethod get-attribute-as-string ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsString (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-string ((self iattributes) (attributeName cl:string) (target cl:string))
  (IAttributes_getAttributeAsString (ff-pointer self) attributeName target))

(cl:defmethod get-attribute-as-string ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsString (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) (value cl:string))
  (IAttributes_setAttribute (ff-pointer self) index value))

(cl:defmethod add-string ((self iattributes) (attributeName cl:string) value)
  (IAttributes_addString (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) value)
  (IAttributes_setAttribute (ff-pointer self) attributeName value))

(cl:defmethod get-attribute-as-string-w ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsStringW (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-string-w ((self iattributes) (attributeName cl:string) target)
  (IAttributes_getAttributeAsStringW (ff-pointer self) attributeName target))

(cl:defmethod get-attribute-as-string-w ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsStringW (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) value)
  (IAttributes_setAttribute (ff-pointer self) index value))

(cl:defmethod add-binary ((self iattributes) (attributeName cl:string) data (dataSizeInBytes cl:integer))
  (IAttributes_addBinary (ff-pointer self) attributeName data dataSizeInBytes))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) data (dataSizeInBytes cl:integer))
  (IAttributes_setAttribute (ff-pointer self) attributeName data dataSizeInBytes))

(cl:defmethod get-attribute-as-binary-data ((self iattributes) (attributeName cl:string) outData (maxSizeInBytes cl:integer))
  (IAttributes_getAttributeAsBinaryData (ff-pointer self) attributeName outData maxSizeInBytes))

(cl:defmethod get-attribute-as-binary-data ((self iattributes) (index cl:integer) outData (maxSizeInBytes cl:integer))
  (IAttributes_getAttributeAsBinaryData (ff-pointer self) index outData maxSizeInBytes))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) data (dataSizeInBytes cl:integer))
  (IAttributes_setAttribute (ff-pointer self) index data dataSizeInBytes))

(cl:defmethod add-array ((self iattributes) (attributeName cl:string) value)
  (IAttributes_addArray (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) value)
  (IAttributes_setAttribute (ff-pointer self) attributeName value))

(cl:defmethod get-attribute-as-array ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsArray (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-array ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsArray (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) value)
  (IAttributes_setAttribute (ff-pointer self) index value))

(cl:defmethod add-bool ((self iattributes) (attributeName cl:string) (value t))
  (IAttributes_addBool (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) (value t))
  (IAttributes_setAttribute (ff-pointer self) attributeName value))

(cl:defmethod get-attribute-as-bool ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsBool (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-bool ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsBool (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) (value t))
  (IAttributes_setAttribute (ff-pointer self) index value))

(cl:defmethod add-enum ((self iattributes) (attributeName cl:string) (enumValue cl:string) enumerationLiterals)
  (IAttributes_addEnum (ff-pointer self) attributeName enumValue enumerationLiterals))

(cl:defmethod add-enum ((self iattributes) (attributeName cl:string) (enumValue cl:integer) enumerationLiterals)
  (IAttributes_addEnum (ff-pointer self) attributeName enumValue enumerationLiterals))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) (enumValue cl:string) enumerationLiterals)
  (IAttributes_setAttribute (ff-pointer self) attributeName enumValue enumerationLiterals))

(cl:defmethod get-attribute-as-enumeration ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsEnumeration (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-enumeration ((self iattributes) (attributeName cl:string) enumerationLiteralsToUse)
  (IAttributes_getAttributeAsEnumeration (ff-pointer self) attributeName enumerationLiteralsToUse))

(cl:defmethod get-attribute-as-enumeration ((self iattributes) (index cl:integer) enumerationLiteralsToUse)
  (IAttributes_getAttributeAsEnumeration (ff-pointer self) index enumerationLiteralsToUse))

(cl:defmethod get-attribute-as-enumeration ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsEnumeration (ff-pointer self) index))

(cl:defmethod get-attribute-enumeration-literals-of-enumeration ((self iattributes) (attributeName cl:string) outLiterals)
  (IAttributes_getAttributeEnumerationLiteralsOfEnumeration (ff-pointer self) attributeName outLiterals))

(cl:defmethod get-attribute-enumeration-literals-of-enumeration ((self iattributes) (index cl:integer) outLiterals)
  (IAttributes_getAttributeEnumerationLiteralsOfEnumeration (ff-pointer self) index outLiterals))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) (enumValue cl:string) enumerationLiterals)
  (IAttributes_setAttribute (ff-pointer self) index enumValue enumerationLiterals))

(cl:defmethod add-color ((self iattributes) (attributeName cl:string) (value scolor))
  (IAttributes_addColor (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) (color scolor))
  (IAttributes_setAttribute (ff-pointer self) attributeName color))

(cl:defmethod get-attribute-as-color ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsColor (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-color ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsColor (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) (color scolor))
  (IAttributes_setAttribute (ff-pointer self) index color))

(cl:defmethod add-colorf ((self iattributes) (attributeName cl:string) (value scolorf))
  (IAttributes_addColorf (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) (color scolorf))
  (IAttributes_setAttribute (ff-pointer self) attributeName color))

(cl:defmethod get-attribute-as-colorf ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsColorf (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-colorf ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsColorf (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) (color scolorf))
  (IAttributes_setAttribute (ff-pointer self) index color))

(cl:defmethod add-vector3d ((self iattributes) (attributeName cl:string) value)
  (IAttributes_addVector3d (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) v)
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-vector3d ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsVector3d (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-vector3d ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsVector3d (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) v)
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-vector2d ((self iattributes) (attributeName cl:string) value)
  (IAttributes_addVector2d (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) v)
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-vector2d ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsVector2d (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-vector2d ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsVector2d (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) v)
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-position2d ((self iattributes) (attributeName cl:string) value)
  (IAttributes_addPosition2d (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) v)
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-position2d ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsPosition2d (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-position2d ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsPosition2d (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) v)
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-rect ((self iattributes) (attributeName cl:string) value)
  (IAttributes_addRect (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) v)
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-rect ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsRect (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-rect ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsRect (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) v)
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-dimension2d ((self iattributes) (attributeName cl:string) value)
  (IAttributes_addDimension2d (ff-pointer self) attributeName value))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) v)
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-dimension2d ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsDimension2d (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-dimension2d ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsDimension2d (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) v)
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-matrix ((self iattributes) (attributeName cl:string) v)
  (IAttributes_addMatrix (ff-pointer self) attributeName v))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) v)
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-matrix ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsMatrix (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-matrix ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsMatrix (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) v)
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-quaternion ((self iattributes) (attributeName cl:string) (v quaternion))
  (IAttributes_addQuaternion (ff-pointer self) attributeName v))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) (v quaternion))
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-quaternion ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsQuaternion (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-quaternion ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsQuaternion (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) (v quaternion))
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-box3d ((self iattributes) (attributeName cl:string) v)
  (IAttributes_addBox3d (ff-pointer self) attributeName v))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) v)
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-box3d ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsBox3d (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-box3d ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsBox3d (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) v)
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-plane3d ((self iattributes) (attributeName cl:string) v)
  (IAttributes_addPlane3d (ff-pointer self) attributeName v))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) v)
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-plane3d ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsPlane3d (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-plane3d ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsPlane3d (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) v)
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-triangle3d ((self iattributes) (attributeName cl:string) v)
  (IAttributes_addTriangle3d (ff-pointer self) attributeName v))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) v)
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-triangle3d ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsTriangle3d (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-triangle3d ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsTriangle3d (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) v)
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-line2d ((self iattributes) (attributeName cl:string) v)
  (IAttributes_addLine2d (ff-pointer self) attributeName v))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) v)
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-line2d ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsLine2d (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-line2d ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsLine2d (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) v)
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-line3d ((self iattributes) (attributeName cl:string) v)
  (IAttributes_addLine3d (ff-pointer self) attributeName v))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) v)
  (IAttributes_setAttribute (ff-pointer self) attributeName v))

(cl:defmethod get-attribute-as-line3d ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsLine3d (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-line3d ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsLine3d (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) v)
  (IAttributes_setAttribute (ff-pointer self) index v))

(cl:defmethod add-texture ((self iattributes) (attributeName cl:string) (texture itexture) filename)
  (IAttributes_addTexture (ff-pointer self) attributeName texture filename))

(cl:defmethod add-texture ((self iattributes) (attributeName cl:string) (texture itexture))
  (IAttributes_addTexture (ff-pointer self) attributeName texture))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) (texture itexture) filename)
  (IAttributes_setAttribute (ff-pointer self) attributeName texture filename))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) (texture itexture))
  (IAttributes_setAttribute (ff-pointer self) attributeName texture))

(cl:defmethod get-attribute-as-texture ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsTexture (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-texture ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsTexture (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) (texture itexture) filename)
  (IAttributes_setAttribute (ff-pointer self) index texture filename))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) (texture itexture))
  (IAttributes_setAttribute (ff-pointer self) index texture))

(cl:defmethod add-user-pointer ((self iattributes) (attributeName cl:string) userPointer)
  (IAttributes_addUserPointer (ff-pointer self) attributeName userPointer))

(cl:defmethod set-attribute ((self iattributes) (attributeName cl:string) userPointer)
  (IAttributes_setAttribute (ff-pointer self) attributeName userPointer))

(cl:defmethod get-attribute-as-user-pointer ((self iattributes) (attributeName cl:string))
  (IAttributes_getAttributeAsUserPointer (ff-pointer self) attributeName))

(cl:defmethod get-attribute-as-user-pointer ((self iattributes) (index cl:integer))
  (IAttributes_getAttributeAsUserPointer (ff-pointer self) index))

(cl:defmethod set-attribute ((self iattributes) (index cl:integer) userPointer)
  (IAttributes_setAttribute (ff-pointer self) index userPointer))


(cl:defclass iscene-node(irr::io::-iattribute-exchanging-object)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod on-register-scene-node ((self iscene-node))
  (ISceneNode_OnRegisterSceneNode (ff-pointer self)))

(cl:defmethod on-animate ((self iscene-node) (timeMs cl:integer))
  (ISceneNode_OnAnimate (ff-pointer self) timeMs))

(cl:defmethod render ((self iscene-node))
  (ISceneNode_render (ff-pointer self)))

(cl:defmethod get-name ((self iscene-node))
  (ISceneNode_getName (ff-pointer self)))

(cl:defmethod set-name ((self iscene-node) (name cl:string))
  (ISceneNode_setName (ff-pointer self) name))

(cl:defmethod set-name ((self iscene-node) name)
  (ISceneNode_setName (ff-pointer self) name))

(cl:defmethod get-bounding-box ((self iscene-node))
  (ISceneNode_getBoundingBox (ff-pointer self)))

(cl:defmethod get-transformed-bounding-box ((self iscene-node))
  (ISceneNode_getTransformedBoundingBox (ff-pointer self)))

(cl:defmethod get-absolute-transformation ((self iscene-node))
  (ISceneNode_getAbsoluteTransformation (ff-pointer self)))

(cl:defmethod get-relative-transformation ((self iscene-node))
  (ISceneNode_getRelativeTransformation (ff-pointer self)))

(cl:defmethod is-visible ((self iscene-node))
  (ISceneNode_isVisible (ff-pointer self)))

(cl:defmethod is-truly-visible ((self iscene-node))
  (ISceneNode_isTrulyVisible (ff-pointer self)))

(cl:defmethod set-visible ((self iscene-node) (isVisible t))
  (ISceneNode_setVisible (ff-pointer self) isVisible))

(cl:defmethod get-id ((self iscene-node))
  (ISceneNode_getID (ff-pointer self)))

(cl:defmethod set-id ((self iscene-node) (id cl:integer))
  (ISceneNode_setID (ff-pointer self) id))

(cl:defmethod add-child ((self iscene-node) (child iscene-node))
  (ISceneNode_addChild (ff-pointer self) (ff-pointer child)))

(cl:defmethod remove-child ((self iscene-node) (child iscene-node))
  (ISceneNode_removeChild (ff-pointer self) (ff-pointer child)))

(cl:defmethod remove-all ((self iscene-node))
  (ISceneNode_removeAll (ff-pointer self)))

(cl:defmethod remove ((self iscene-node))
  (ISceneNode_remove (ff-pointer self)))

(cl:defmethod add-animator ((self iscene-node) (animator iscene-node-animator))
  (ISceneNode_addAnimator (ff-pointer self) animator))

(cl:defmethod get-animators ((self iscene-node))
  (ISceneNode_getAnimators (ff-pointer self)))

(cl:defmethod remove-animator ((self iscene-node) (animator iscene-node-animator))
  (ISceneNode_removeAnimator (ff-pointer self) animator))

(cl:defmethod remove-animators ((self iscene-node))
  (ISceneNode_removeAnimators (ff-pointer self)))

(cl:defmethod get-material ((self iscene-node) (num cl:integer))
  (ISceneNode_getMaterial (ff-pointer self) num))

(cl:defmethod get-material-count ((self iscene-node))
  (ISceneNode_getMaterialCount (ff-pointer self)))

(cl:defmethod set-material-flag ((self iscene-node) (flag cl:integer) (newvalue t))
  (ISceneNode_setMaterialFlag (ff-pointer self) flag newvalue))

(cl:defmethod set-material-texture ((self iscene-node) (textureLayer cl:integer) (texture itexture))
  (ISceneNode_setMaterialTexture (ff-pointer self) textureLayer texture))

(cl:defmethod set-material-type ((self iscene-node) (newType cl:integer))
  (ISceneNode_setMaterialType (ff-pointer self) newType))

(cl:defmethod get-scale ((self iscene-node))
  (ISceneNode_getScale (ff-pointer self)))

(cl:defmethod set-scale ((self iscene-node) scale)
  (ISceneNode_setScale (ff-pointer self) scale))

(cl:defmethod get-rotation ((self iscene-node))
  (ISceneNode_getRotation (ff-pointer self)))

(cl:defmethod set-rotation ((self iscene-node) rotation)
  (ISceneNode_setRotation (ff-pointer self) rotation))

(cl:defmethod get-position ((self iscene-node))
  (ISceneNode_getPosition (ff-pointer self)))

(cl:defmethod set-position ((self iscene-node) newpos)
  (ISceneNode_setPosition (ff-pointer self) newpos))

(cl:defmethod get-absolute-position ((self iscene-node))
  (ISceneNode_getAbsolutePosition (ff-pointer self)))

(cl:defmethod set-automatic-culling ((self iscene-node) (state cl:integer))
  (ISceneNode_setAutomaticCulling (ff-pointer self) state))

(cl:defmethod get-automatic-culling ((self iscene-node))
  (ISceneNode_getAutomaticCulling (ff-pointer self)))

(cl:defmethod set-debug-data-visible ((self iscene-node) (state cl:integer))
  (ISceneNode_setDebugDataVisible (ff-pointer self) state))

(cl:defmethod is-debug-data-visible ((self iscene-node))
  (ISceneNode_isDebugDataVisible (ff-pointer self)))

(cl:defmethod set-is-debug-object ((self iscene-node) (debugObject t))
  (ISceneNode_setIsDebugObject (ff-pointer self) debugObject))

(cl:defmethod is-debug-object ((self iscene-node))
  (ISceneNode_isDebugObject (ff-pointer self)))

(cl:defmethod get-children ((self iscene-node))
  (ISceneNode_getChildren (ff-pointer self)))

(cl:defmethod set-parent ((self iscene-node) (newParent iscene-node))
  (ISceneNode_setParent (ff-pointer self) (ff-pointer newParent)))

(cl:defmethod get-triangle-selector ((self iscene-node))
  (ISceneNode_getTriangleSelector (ff-pointer self)))

(cl:defmethod set-triangle-selector ((self iscene-node) (selector itriangle-selector))
  (ISceneNode_setTriangleSelector (ff-pointer self) selector))

(cl:defmethod update-absolute-position ((self iscene-node))
  (ISceneNode_updateAbsolutePosition (ff-pointer self)))

(cl:defmethod get-parent ((self iscene-node))
  (ISceneNode_getParent (ff-pointer self)))

(cl:defmethod get-type ((self iscene-node))
  (ISceneNode_getType (ff-pointer self)))

(cl:defmethod serialize-attributes ((self iscene-node) (out iattributes) options)
  (ISceneNode_serializeAttributes (ff-pointer self) out options))

(cl:defmethod serialize-attributes ((self iscene-node) (out iattributes))
  (ISceneNode_serializeAttributes (ff-pointer self) out))

(cl:defmethod deserialize-attributes ((self iscene-node) (in iattributes) options)
  (ISceneNode_deserializeAttributes (ff-pointer self) in options))

(cl:defmethod deserialize-attributes ((self iscene-node) (in iattributes))
  (ISceneNode_deserializeAttributes (ff-pointer self) in))

(cl:defmethod clone ((self iscene-node) (newParent iscene-node) newManager)
  (ISceneNode_clone (ff-pointer self) (ff-pointer newParent) newManager))

(cl:defmethod clone ((self iscene-node) (newParent iscene-node))
  (ISceneNode_clone (ff-pointer self) (ff-pointer newParent)))

(cl:defmethod clone ((self iscene-node))
  (ISceneNode_clone (ff-pointer self)))

(cl:defmethod get-scene-manager ((self iscene-node))
  (ISceneNode_getSceneManager (ff-pointer self)))


(cl:defclass ibone-scene-node(irr::scene::-iscene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-bone-name ((self ibone-scene-node))
  (IBoneSceneNode_getBoneName (ff-pointer self)))

(cl:defmethod get-bone-index ((self ibone-scene-node))
  (IBoneSceneNode_getBoneIndex (ff-pointer self)))

(cl:defmethod set-animation-mode ((self ibone-scene-node) (mode cl:integer))
  (IBoneSceneNode_setAnimationMode (ff-pointer self) mode))

(cl:defmethod get-animation-mode ((self ibone-scene-node))
  (IBoneSceneNode_getAnimationMode (ff-pointer self)))

(cl:defmethod set-skinning-space ((self ibone-scene-node) (space cl:integer))
  (IBoneSceneNode_setSkinningSpace (ff-pointer self) space))

(cl:defmethod get-skinning-space ((self ibone-scene-node))
  (IBoneSceneNode_getSkinningSpace (ff-pointer self)))

(cl:defmethod update-absolute-position-of-all-children ((self ibone-scene-node))
  (IBoneSceneNode_updateAbsolutePositionOfAllChildren (ff-pointer self)))

(cl:defmethod (cl:setf positionHint) (arg0 (obj ibone-scene-node))
  (IBoneSceneNode_positionHint_set (ff-pointer obj) arg0))

(cl:defmethod positionHint ((obj ibone-scene-node))
  (IBoneSceneNode_positionHint_get (ff-pointer obj)))

(cl:defmethod (cl:setf scaleHint) (arg0 (obj ibone-scene-node))
  (IBoneSceneNode_scaleHint_set (ff-pointer obj) arg0))

(cl:defmethod scaleHint ((obj ibone-scene-node))
  (IBoneSceneNode_scaleHint_get (ff-pointer obj)))

(cl:defmethod (cl:setf rotationHint) (arg0 (obj ibone-scene-node))
  (IBoneSceneNode_rotationHint_set (ff-pointer obj) arg0))

(cl:defmethod rotationHint ((obj ibone-scene-node))
  (IBoneSceneNode_rotationHint_get (ff-pointer obj)))


(cl:defclass ianimation-end-call-back(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod on-animation-end ((self ianimation-end-call-back) node)
  (IAnimationEndCallBack_OnAnimationEnd (ff-pointer self) node))


(cl:defclass ianimated-mesh-scene-node(irr::scene::-iscene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-current-frame ((self ianimated-mesh-scene-node) (frame cl:number))
  (IAnimatedMeshSceneNode_setCurrentFrame (ff-pointer self) frame))

(cl:defmethod set-frame-loop ((self ianimated-mesh-scene-node) (begin cl:integer) (end cl:integer))
  (IAnimatedMeshSceneNode_setFrameLoop (ff-pointer self) begin end))

(cl:defmethod set-animation-speed ((self ianimated-mesh-scene-node) (framesPerSecond cl:number))
  (IAnimatedMeshSceneNode_setAnimationSpeed (ff-pointer self) framesPerSecond))

(cl:defmethod get-animation-speed ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_getAnimationSpeed (ff-pointer self)))

(cl:defmethod add-shadow-volume-scene-node ((self ianimated-mesh-scene-node) (shadowMesh imesh) (id cl:integer) (zfailmethod t) (infinity cl:number))
  (IAnimatedMeshSceneNode_addShadowVolumeSceneNode (ff-pointer self) shadowMesh id zfailmethod infinity))

(cl:defmethod add-shadow-volume-scene-node ((self ianimated-mesh-scene-node) (shadowMesh imesh) (id cl:integer) (zfailmethod t))
  (IAnimatedMeshSceneNode_addShadowVolumeSceneNode (ff-pointer self) shadowMesh id zfailmethod))

(cl:defmethod add-shadow-volume-scene-node ((self ianimated-mesh-scene-node) (shadowMesh imesh) (id cl:integer))
  (IAnimatedMeshSceneNode_addShadowVolumeSceneNode (ff-pointer self) shadowMesh id))

(cl:defmethod add-shadow-volume-scene-node ((self ianimated-mesh-scene-node) (shadowMesh imesh))
  (IAnimatedMeshSceneNode_addShadowVolumeSceneNode (ff-pointer self) shadowMesh))

(cl:defmethod add-shadow-volume-scene-node ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_addShadowVolumeSceneNode (ff-pointer self)))

(cl:defmethod get-joint-node ((self ianimated-mesh-scene-node) (jointName cl:string))
  (IAnimatedMeshSceneNode_getJointNode (ff-pointer self) jointName))

(cl:defmethod get-joint-node ((self ianimated-mesh-scene-node) (jointID cl:integer))
  (IAnimatedMeshSceneNode_getJointNode (ff-pointer self) jointID))

(cl:defmethod get-joint-count ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_getJointCount (ff-pointer self)))

(cl:defmethod set-md2-animation ((self ianimated-mesh-scene-node) (anim cl:integer))
  (IAnimatedMeshSceneNode_setMD2Animation (ff-pointer self) anim))

(cl:defmethod set-md2-animation ((self ianimated-mesh-scene-node) (animationName cl:string))
  (IAnimatedMeshSceneNode_setMD2Animation (ff-pointer self) animationName))

(cl:defmethod get-frame-nr ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_getFrameNr (ff-pointer self)))

(cl:defmethod get-start-frame ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_getStartFrame (ff-pointer self)))

(cl:defmethod get-end-frame ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_getEndFrame (ff-pointer self)))

(cl:defmethod set-loop-mode ((self ianimated-mesh-scene-node) (playAnimationLooped t))
  (IAnimatedMeshSceneNode_setLoopMode (ff-pointer self) playAnimationLooped))

(cl:defmethod get-loop-mode ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_getLoopMode (ff-pointer self)))

(cl:defmethod set-animation-end-callback ((self ianimated-mesh-scene-node) (callback ianimation-end-call-back))
  (IAnimatedMeshSceneNode_setAnimationEndCallback (ff-pointer self) callback))

(cl:defmethod set-animation-end-callback ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_setAnimationEndCallback (ff-pointer self)))

(cl:defmethod set-read-only-materials ((self ianimated-mesh-scene-node) (readonly t))
  (IAnimatedMeshSceneNode_setReadOnlyMaterials (ff-pointer self) readonly))

(cl:defmethod is-read-only-materials ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_isReadOnlyMaterials (ff-pointer self)))

(cl:defmethod set-mesh ((self ianimated-mesh-scene-node) (mesh ianimated-mesh))
  (IAnimatedMeshSceneNode_setMesh (ff-pointer self) mesh))

(cl:defmethod get-mesh ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_getMesh (ff-pointer self)))

(cl:defmethod get-md3-tag-transformation ((self ianimated-mesh-scene-node) tagname)
  (IAnimatedMeshSceneNode_getMD3TagTransformation (ff-pointer self) tagname))

(cl:defmethod set-joint-mode ((self ianimated-mesh-scene-node) (mode cl:integer))
  (IAnimatedMeshSceneNode_setJointMode (ff-pointer self) mode))

(cl:defmethod set-transition-time ((self ianimated-mesh-scene-node) (Time cl:number))
  (IAnimatedMeshSceneNode_setTransitionTime (ff-pointer self) Time))

(cl:defmethod animate-joints ((self ianimated-mesh-scene-node) (CalculateAbsolutePositions t))
  (IAnimatedMeshSceneNode_animateJoints (ff-pointer self) CalculateAbsolutePositions))

(cl:defmethod animate-joints ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_animateJoints (ff-pointer self)))

(cl:defmethod set-render-from-identity ((self ianimated-mesh-scene-node) (On t))
  (IAnimatedMeshSceneNode_setRenderFromIdentity (ff-pointer self) On))

(cl:defmethod clone ((self ianimated-mesh-scene-node) (newParent iscene-node) newManager)
  (IAnimatedMeshSceneNode_clone (ff-pointer self) newParent newManager))

(cl:defmethod clone ((self ianimated-mesh-scene-node) (newParent iscene-node))
  (IAnimatedMeshSceneNode_clone (ff-pointer self) newParent))

(cl:defmethod clone ((self ianimated-mesh-scene-node))
  (IAnimatedMeshSceneNode_clone (ff-pointer self)))


(cl:defclass ibillboard-scene-node(irr::scene::-iscene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-size ((self ibillboard-scene-node) size)
  (IBillboardSceneNode_setSize (ff-pointer self) size))

(cl:defmethod set-size ((self ibillboard-scene-node) (height cl:number) (bottomEdgeWidth cl:number) (topEdgeWidth cl:number))
  (IBillboardSceneNode_setSize (ff-pointer self) height bottomEdgeWidth topEdgeWidth))

(cl:defmethod get-size ((self ibillboard-scene-node))
  (IBillboardSceneNode_getSize (ff-pointer self)))

(cl:defmethod get-size ((self ibillboard-scene-node) height bottomEdgeWidth topEdgeWidth)
  (IBillboardSceneNode_getSize (ff-pointer self) height bottomEdgeWidth topEdgeWidth))

(cl:defmethod set-color ((self ibillboard-scene-node) (overallColor scolor))
  (IBillboardSceneNode_setColor (ff-pointer self) overallColor))

(cl:defmethod set-color ((self ibillboard-scene-node) (topColor scolor) (bottomColor scolor))
  (IBillboardSceneNode_setColor (ff-pointer self) topColor bottomColor))

(cl:defmethod get-color ((self ibillboard-scene-node) (topColor scolor) (bottomColor scolor))
  (IBillboardSceneNode_getColor (ff-pointer self) topColor bottomColor))


(cl:defclass ibillboard-text-scene-node(irr::scene::-ibillboard-scene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-color ((self ibillboard-text-scene-node) (overallColor scolor))
  (IBillboardTextSceneNode_setColor (ff-pointer self) overallColor))

(cl:defmethod set-color ((self ibillboard-text-scene-node) (topColor scolor) (bottomColor scolor))
  (IBillboardTextSceneNode_setColor (ff-pointer self) topColor bottomColor))

(cl:defmethod set-text ((self ibillboard-text-scene-node) text)
  (IBillboardTextSceneNode_setText (ff-pointer self) text))

(cl:defmethod set-text-color ((self ibillboard-text-scene-node) (color scolor))
  (IBillboardTextSceneNode_setTextColor (ff-pointer self) color))


(cl:defclass icamera-scene-node(irr::scene::-iscene-nodeirr::-ievent-receiver)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-projection-matrix ((self icamera-scene-node) projection (isOrthogonal t))
  (ICameraSceneNode_setProjectionMatrix (ff-pointer self) projection isOrthogonal))

(cl:defmethod set-projection-matrix ((self icamera-scene-node) projection)
  (ICameraSceneNode_setProjectionMatrix (ff-pointer self) projection))

(cl:defmethod get-projection-matrix ((self icamera-scene-node))
  (ICameraSceneNode_getProjectionMatrix (ff-pointer self)))

(cl:defmethod get-view-matrix ((self icamera-scene-node))
  (ICameraSceneNode_getViewMatrix (ff-pointer self)))

(cl:defmethod set-view-matrix-affector ((self icamera-scene-node) affector)
  (ICameraSceneNode_setViewMatrixAffector (ff-pointer self) affector))

(cl:defmethod get-view-matrix-affector ((self icamera-scene-node))
  (ICameraSceneNode_getViewMatrixAffector (ff-pointer self)))

(cl:defmethod set-target ((self icamera-scene-node) pos)
  (ICameraSceneNode_setTarget (ff-pointer self) pos))

(cl:defmethod get-target ((self icamera-scene-node))
  (ICameraSceneNode_getTarget (ff-pointer self)))

(cl:defmethod set-up-vector ((self icamera-scene-node) pos)
  (ICameraSceneNode_setUpVector (ff-pointer self) pos))

(cl:defmethod get-up-vector ((self icamera-scene-node))
  (ICameraSceneNode_getUpVector (ff-pointer self)))

(cl:defmethod get-near-value ((self icamera-scene-node))
  (ICameraSceneNode_getNearValue (ff-pointer self)))

(cl:defmethod get-far-value ((self icamera-scene-node))
  (ICameraSceneNode_getFarValue (ff-pointer self)))

(cl:defmethod get-aspect-ratio ((self icamera-scene-node))
  (ICameraSceneNode_getAspectRatio (ff-pointer self)))

(cl:defmethod get-fov ((self icamera-scene-node))
  (ICameraSceneNode_getFOV (ff-pointer self)))

(cl:defmethod set-near-value ((self icamera-scene-node) (zn cl:number))
  (ICameraSceneNode_setNearValue (ff-pointer self) zn))

(cl:defmethod set-far-value ((self icamera-scene-node) (zf cl:number))
  (ICameraSceneNode_setFarValue (ff-pointer self) zf))

(cl:defmethod set-aspect-ratio ((self icamera-scene-node) (aspect cl:number))
  (ICameraSceneNode_setAspectRatio (ff-pointer self) aspect))

(cl:defmethod set-fov ((self icamera-scene-node) (fovy cl:number))
  (ICameraSceneNode_setFOV (ff-pointer self) fovy))

(cl:defmethod get-view-frustum ((self icamera-scene-node))
  (ICameraSceneNode_getViewFrustum (ff-pointer self)))

(cl:defmethod set-input-receiver-enabled ((self icamera-scene-node) (enabled t))
  (ICameraSceneNode_setInputReceiverEnabled (ff-pointer self) enabled))

(cl:defmethod is-input-receiver-enabled ((self icamera-scene-node))
  (ICameraSceneNode_isInputReceiverEnabled (ff-pointer self)))

(cl:defmethod is-orthogonal ((self icamera-scene-node))
  (ICameraSceneNode_isOrthogonal (ff-pointer self)))

(cl:defmethod bind-target-and-rotation ((self icamera-scene-node) (bound t))
  (ICameraSceneNode_bindTargetAndRotation (ff-pointer self) bound))

(cl:defmethod get-target-and-rotation-binding ((self icamera-scene-node))
  (ICameraSceneNode_getTargetAndRotationBinding (ff-pointer self)))

(cl:defmethod serialize-attributes ((self icamera-scene-node) (out iattributes) options)
  (ICameraSceneNode_serializeAttributes (ff-pointer self) out options))

(cl:defmethod serialize-attributes ((self icamera-scene-node) (out iattributes))
  (ICameraSceneNode_serializeAttributes (ff-pointer self) out))

(cl:defmethod deserialize-attributes ((self icamera-scene-node) (in iattributes) options)
  (ICameraSceneNode_deserializeAttributes (ff-pointer self) in options))

(cl:defmethod deserialize-attributes ((self icamera-scene-node) (in iattributes))
  (ICameraSceneNode_deserializeAttributes (ff-pointer self) in))


(cl:defclass icursor-control(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-visible ((self icursor-control) (visible t))
  (ICursorControl_setVisible (ff-pointer self) visible))

(cl:defmethod is-visible ((self icursor-control))
  (ICursorControl_isVisible (ff-pointer self)))

(cl:defmethod set-position ((self icursor-control) pos)
  (ICursorControl_setPosition (ff-pointer self) pos))

(cl:defmethod set-position ((self icursor-control) (x cl:number) (y cl:number))
  (ICursorControl_setPosition (ff-pointer self) x y))

(cl:defmethod set-position ((self icursor-control) pos)
  (ICursorControl_setPosition (ff-pointer self) pos))

(cl:defmethod set-position ((self icursor-control) (x cl:integer) (y cl:integer))
  (ICursorControl_setPosition (ff-pointer self) x y))

(cl:defmethod get-position ((self icursor-control))
  (ICursorControl_getPosition (ff-pointer self)))

(cl:defmethod get-relative-position ((self icursor-control))
  (ICursorControl_getRelativePosition (ff-pointer self)))

(cl:defmethod set-reference-rect ((self icursor-control) rect)
  (ICursorControl_setReferenceRect (ff-pointer self) rect))

(cl:defmethod set-reference-rect ((self icursor-control))
  (ICursorControl_setReferenceRect (ff-pointer self)))

(cl:defmethod set-active-icon ((self icursor-control) (iconId cl:integer))
  (ICursorControl_setActiveIcon (ff-pointer self) iconId))

(cl:defmethod get-active-icon ((self icursor-control))
  (ICursorControl_getActiveIcon (ff-pointer self)))

(cl:defmethod add-icon ((self icursor-control) icon)
  (ICursorControl_addIcon (ff-pointer self) icon))

(cl:defmethod change-icon ((self icursor-control) (iconId cl:integer) sprite)
  (ICursorControl_changeIcon (ff-pointer self) iconId sprite))

(cl:defmethod get-supported-icon-size ((self icursor-control))
  (ICursorControl_getSupportedIconSize (ff-pointer self)))

(cl:defmethod set-platform-behavior ((self icursor-control) (behavior cl:integer))
  (ICursorControl_setPlatformBehavior (ff-pointer self) behavior))

(cl:defmethod get-platform-behavior ((self icursor-control))
  (ICursorControl_getPlatformBehavior (ff-pointer self)))


(cl:defclass idummy-transformation-scene-node(irr::scene::-iscene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-relative-transformation-matrix ((self idummy-transformation-scene-node))
  (IDummyTransformationSceneNode_getRelativeTransformationMatrix (ff-pointer self)))


(cl:defclass igeometry-creator(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod create-cube-mesh ((self igeometry-creator) size)
  (IGeometryCreator_createCubeMesh (ff-pointer self) size))

(cl:defmethod create-cube-mesh ((self igeometry-creator))
  (IGeometryCreator_createCubeMesh (ff-pointer self)))

(cl:defmethod create-hill-plane-mesh ((self igeometry-creator) tileSize tileCount (material smaterial) (hillHeight cl:number) countHills textureRepeatCount)
  (IGeometryCreator_createHillPlaneMesh (ff-pointer self) tileSize tileCount material hillHeight countHills textureRepeatCount))

(cl:defmethod create-plane-mesh ((self igeometry-creator) tileSize tileCount (material smaterial) textureRepeatCount)
  (IGeometryCreator_createPlaneMesh (ff-pointer self) tileSize tileCount material textureRepeatCount))

(cl:defmethod create-plane-mesh ((self igeometry-creator) tileSize tileCount (material smaterial))
  (IGeometryCreator_createPlaneMesh (ff-pointer self) tileSize tileCount material))

(cl:defmethod create-plane-mesh ((self igeometry-creator) tileSize tileCount)
  (IGeometryCreator_createPlaneMesh (ff-pointer self) tileSize tileCount))

(cl:defmethod create-plane-mesh ((self igeometry-creator) tileSize)
  (IGeometryCreator_createPlaneMesh (ff-pointer self) tileSize))

(cl:defmethod create-terrain-mesh ((self igeometry-creator) (texture iimage) (heightmap iimage) stretchSize (maxHeight cl:number) (driver ivideo-driver) defaultVertexBlockSize (debugBorders t))
  (IGeometryCreator_createTerrainMesh (ff-pointer self) texture heightmap stretchSize maxHeight driver defaultVertexBlockSize debugBorders))

(cl:defmethod create-terrain-mesh ((self igeometry-creator) (texture iimage) (heightmap iimage) stretchSize (maxHeight cl:number) (driver ivideo-driver) defaultVertexBlockSize)
  (IGeometryCreator_createTerrainMesh (ff-pointer self) texture heightmap stretchSize maxHeight driver defaultVertexBlockSize))

(cl:defmethod create-arrow-mesh ((self igeometry-creator) (tesselationCylinder cl:integer) (tesselationCone cl:integer) (height cl:number) (cylinderHeight cl:number) (widthCylinder cl:number) (widthCone cl:number) (colorCylinder scolor) (colorCone scolor))
  (IGeometryCreator_createArrowMesh (ff-pointer self) tesselationCylinder tesselationCone height cylinderHeight widthCylinder widthCone colorCylinder colorCone))

(cl:defmethod create-arrow-mesh ((self igeometry-creator) (tesselationCylinder cl:integer) (tesselationCone cl:integer) (height cl:number) (cylinderHeight cl:number) (widthCylinder cl:number) (widthCone cl:number) (colorCylinder scolor))
  (IGeometryCreator_createArrowMesh (ff-pointer self) tesselationCylinder tesselationCone height cylinderHeight widthCylinder widthCone colorCylinder))

(cl:defmethod create-arrow-mesh ((self igeometry-creator) (tesselationCylinder cl:integer) (tesselationCone cl:integer) (height cl:number) (cylinderHeight cl:number) (widthCylinder cl:number) (widthCone cl:number))
  (IGeometryCreator_createArrowMesh (ff-pointer self) tesselationCylinder tesselationCone height cylinderHeight widthCylinder widthCone))

(cl:defmethod create-arrow-mesh ((self igeometry-creator) (tesselationCylinder cl:integer) (tesselationCone cl:integer) (height cl:number) (cylinderHeight cl:number) (widthCylinder cl:number))
  (IGeometryCreator_createArrowMesh (ff-pointer self) tesselationCylinder tesselationCone height cylinderHeight widthCylinder))

(cl:defmethod create-arrow-mesh ((self igeometry-creator) (tesselationCylinder cl:integer) (tesselationCone cl:integer) (height cl:number) (cylinderHeight cl:number))
  (IGeometryCreator_createArrowMesh (ff-pointer self) tesselationCylinder tesselationCone height cylinderHeight))

(cl:defmethod create-arrow-mesh ((self igeometry-creator) (tesselationCylinder cl:integer) (tesselationCone cl:integer) (height cl:number))
  (IGeometryCreator_createArrowMesh (ff-pointer self) tesselationCylinder tesselationCone height))

(cl:defmethod create-arrow-mesh ((self igeometry-creator) (tesselationCylinder cl:integer) (tesselationCone cl:integer))
  (IGeometryCreator_createArrowMesh (ff-pointer self) tesselationCylinder tesselationCone))

(cl:defmethod create-arrow-mesh ((self igeometry-creator) (tesselationCylinder cl:integer))
  (IGeometryCreator_createArrowMesh (ff-pointer self) tesselationCylinder))

(cl:defmethod create-arrow-mesh ((self igeometry-creator))
  (IGeometryCreator_createArrowMesh (ff-pointer self)))

(cl:defmethod create-sphere-mesh ((self igeometry-creator) (radius cl:number) (polyCountX cl:integer) (polyCountY cl:integer))
  (IGeometryCreator_createSphereMesh (ff-pointer self) radius polyCountX polyCountY))

(cl:defmethod create-sphere-mesh ((self igeometry-creator) (radius cl:number) (polyCountX cl:integer))
  (IGeometryCreator_createSphereMesh (ff-pointer self) radius polyCountX))

(cl:defmethod create-sphere-mesh ((self igeometry-creator) (radius cl:number))
  (IGeometryCreator_createSphereMesh (ff-pointer self) radius))

(cl:defmethod create-sphere-mesh ((self igeometry-creator))
  (IGeometryCreator_createSphereMesh (ff-pointer self)))

(cl:defmethod create-cylinder-mesh ((self igeometry-creator) (radius cl:number) (length cl:number) (tesselation cl:integer) (color scolor) (closeTop t) (oblique cl:number))
  (IGeometryCreator_createCylinderMesh (ff-pointer self) radius length tesselation color closeTop oblique))

(cl:defmethod create-cylinder-mesh ((self igeometry-creator) (radius cl:number) (length cl:number) (tesselation cl:integer) (color scolor) (closeTop t))
  (IGeometryCreator_createCylinderMesh (ff-pointer self) radius length tesselation color closeTop))

(cl:defmethod create-cylinder-mesh ((self igeometry-creator) (radius cl:number) (length cl:number) (tesselation cl:integer) (color scolor))
  (IGeometryCreator_createCylinderMesh (ff-pointer self) radius length tesselation color))

(cl:defmethod create-cylinder-mesh ((self igeometry-creator) (radius cl:number) (length cl:number) (tesselation cl:integer))
  (IGeometryCreator_createCylinderMesh (ff-pointer self) radius length tesselation))

(cl:defmethod create-cone-mesh ((self igeometry-creator) (radius cl:number) (length cl:number) (tesselation cl:integer) (colorTop scolor) (colorBottom scolor) (oblique cl:number))
  (IGeometryCreator_createConeMesh (ff-pointer self) radius length tesselation colorTop colorBottom oblique))

(cl:defmethod create-cone-mesh ((self igeometry-creator) (radius cl:number) (length cl:number) (tesselation cl:integer) (colorTop scolor) (colorBottom scolor))
  (IGeometryCreator_createConeMesh (ff-pointer self) radius length tesselation colorTop colorBottom))

(cl:defmethod create-cone-mesh ((self igeometry-creator) (radius cl:number) (length cl:number) (tesselation cl:integer) (colorTop scolor))
  (IGeometryCreator_createConeMesh (ff-pointer self) radius length tesselation colorTop))

(cl:defmethod create-cone-mesh ((self igeometry-creator) (radius cl:number) (length cl:number) (tesselation cl:integer))
  (IGeometryCreator_createConeMesh (ff-pointer self) radius length tesselation))

(cl:defmethod create-volume-light-mesh ((self igeometry-creator) (subdivideU cl:integer) (subdivideV cl:integer) (footColor scolor) (tailColor scolor) (lpDistance cl:number) lightDim)
  (IGeometryCreator_createVolumeLightMesh (ff-pointer self) subdivideU subdivideV footColor tailColor lpDistance lightDim))

(cl:defmethod create-volume-light-mesh ((self igeometry-creator) (subdivideU cl:integer) (subdivideV cl:integer) (footColor scolor) (tailColor scolor) (lpDistance cl:number))
  (IGeometryCreator_createVolumeLightMesh (ff-pointer self) subdivideU subdivideV footColor tailColor lpDistance))

(cl:defmethod create-volume-light-mesh ((self igeometry-creator) (subdivideU cl:integer) (subdivideV cl:integer) (footColor scolor) (tailColor scolor))
  (IGeometryCreator_createVolumeLightMesh (ff-pointer self) subdivideU subdivideV footColor tailColor))

(cl:defmethod create-volume-light-mesh ((self igeometry-creator) (subdivideU cl:integer) (subdivideV cl:integer) (footColor scolor))
  (IGeometryCreator_createVolumeLightMesh (ff-pointer self) subdivideU subdivideV footColor))

(cl:defmethod create-volume-light-mesh ((self igeometry-creator) (subdivideU cl:integer) (subdivideV cl:integer))
  (IGeometryCreator_createVolumeLightMesh (ff-pointer self) subdivideU subdivideV))

(cl:defmethod create-volume-light-mesh ((self igeometry-creator) (subdivideU cl:integer))
  (IGeometryCreator_createVolumeLightMesh (ff-pointer self) subdivideU))

(cl:defmethod create-volume-light-mesh ((self igeometry-creator))
  (IGeometryCreator_createVolumeLightMesh (ff-pointer self)))


(cl:defclass igpuprogramming-services()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram cl:string) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer) (userData cl:integer) (shadingLang cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback baseMaterial userData shadingLang))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram cl:string) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback baseMaterial userData))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram cl:string) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback baseMaterial))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram cl:string) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback)
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram cl:string) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType verticesOut))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram cl:string) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram cl:string) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram cl:string) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram cl:string) (geometryShaderEntryPointName cl:string))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram cl:string))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback (baseMaterial cl:integer) (userData cl:integer) (shadingLang cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget callback baseMaterial userData shadingLang))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget callback baseMaterial userData))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget callback baseMaterial))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback)
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget callback))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string) (pixelShaderEntryPointName cl:string))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram cl:string))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram callback baseMaterial userData))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram callback baseMaterial))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) callback)
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram callback))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) (geometryShaderProgram cl:string) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram geometryShaderProgram inType outType verticesOut callback baseMaterial userData))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) (geometryShaderProgram cl:string) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram geometryShaderProgram inType outType verticesOut callback baseMaterial))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) (geometryShaderProgram cl:string) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback)
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram geometryShaderProgram inType outType verticesOut callback))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) (geometryShaderProgram cl:string) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram geometryShaderProgram inType outType verticesOut))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) (geometryShaderProgram cl:string) (inType cl:integer) (outType cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram geometryShaderProgram inType outType))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) (geometryShaderProgram cl:string) (inType cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram geometryShaderProgram inType))

(cl:defmethod add-high-level-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) (geometryShaderProgram cl:string))
  (IGPUProgrammingServices_addHighLevelShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram geometryShaderProgram))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) geometryShaderProgramFileName (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer) (userData cl:integer) (shadingLang cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget geometryShaderProgramFileName geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback baseMaterial userData shadingLang))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) geometryShaderProgramFileName (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget geometryShaderProgramFileName geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback baseMaterial userData))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) geometryShaderProgramFileName (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget geometryShaderProgramFileName geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback baseMaterial))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) geometryShaderProgramFileName (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback)
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget geometryShaderProgramFileName geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) geometryShaderProgramFileName (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget geometryShaderProgramFileName geometryShaderEntryPointName gsCompileTarget inType outType verticesOut))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) geometryShaderProgramFileName (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget geometryShaderProgramFileName geometryShaderEntryPointName gsCompileTarget inType outType))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) geometryShaderProgramFileName (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget geometryShaderProgramFileName geometryShaderEntryPointName gsCompileTarget inType))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) geometryShaderProgramFileName (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget geometryShaderProgramFileName geometryShaderEntryPointName gsCompileTarget))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) geometryShaderProgramFileName (geometryShaderEntryPointName cl:string))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget geometryShaderProgramFileName geometryShaderEntryPointName))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) geometryShaderProgramFileName)
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget geometryShaderProgramFileName))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback (baseMaterial cl:integer) (userData cl:integer) (shadingLang cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget callback baseMaterial userData shadingLang))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget callback baseMaterial userData))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget callback baseMaterial))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback)
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget callback))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName psCompileTarget))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName (pixelShaderEntryPointName cl:string))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName pixelShaderEntryPointName))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) pixelShaderProgramFileName)
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget pixelShaderProgramFileName))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName vsCompileTarget))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName (vertexShaderEntryPointName cl:string))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName vertexShaderEntryPointName))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName callback baseMaterial userData))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName callback baseMaterial))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName callback)
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName callback))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName inType outType verticesOut callback baseMaterial userData))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName inType outType verticesOut callback baseMaterial))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback)
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName inType outType verticesOut callback))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName (inType cl:integer) (outType cl:integer) (verticesOut cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName inType outType verticesOut))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName (inType cl:integer) (outType cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName inType outType))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName (inType cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName inType))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName)
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName geometryShaderProgramFileName))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram iread-file) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer) (userData cl:integer) (shadingLang cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback baseMaterial userData shadingLang))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram iread-file) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback baseMaterial userData))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram iread-file) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback baseMaterial))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram iread-file) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer) callback)
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType verticesOut callback))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram iread-file) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer) (verticesOut cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType verticesOut))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram iread-file) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer) (outType cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType outType))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram iread-file) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer) (inType cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget inType))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram iread-file) (geometryShaderEntryPointName cl:string) (gsCompileTarget cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName gsCompileTarget))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram iread-file) (geometryShaderEntryPointName cl:string))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram geometryShaderEntryPointName))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) (geometryShaderProgram iread-file))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget geometryShaderProgram))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback (baseMaterial cl:integer) (userData cl:integer) (shadingLang cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget callback baseMaterial userData shadingLang))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget callback baseMaterial userData))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget callback baseMaterial))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer) callback)
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget callback))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string) (psCompileTarget cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName psCompileTarget))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file) (pixelShaderEntryPointName cl:string))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram pixelShaderEntryPointName))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer) (pixelShaderProgram iread-file))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget pixelShaderProgram))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string) (vsCompileTarget cl:integer))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName vsCompileTarget))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (vertexShaderEntryPointName cl:string))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram vertexShaderEntryPointName))

(cl:defmethod add-high-level-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file))
  (IGPUProgrammingServices_addHighLevelShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram))

(cl:defmethod add-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram callback baseMaterial userData))

(cl:defmethod add-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram callback baseMaterial))

(cl:defmethod add-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string) callback)
  (IGPUProgrammingServices_addShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram callback))

(cl:defmethod add-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string) (pixelShaderProgram cl:string))
  (IGPUProgrammingServices_addShaderMaterial (ff-pointer self) vertexShaderProgram pixelShaderProgram))

(cl:defmethod add-shader-material ((self igpuprogramming-services) (vertexShaderProgram cl:string))
  (IGPUProgrammingServices_addShaderMaterial (ff-pointer self) vertexShaderProgram))

(cl:defmethod add-shader-material ((self igpuprogramming-services))
  (IGPUProgrammingServices_addShaderMaterial (ff-pointer self)))

(cl:defmethod add-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (pixelShaderProgram iread-file) callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram pixelShaderProgram callback baseMaterial userData))

(cl:defmethod add-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (pixelShaderProgram iread-file) callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram pixelShaderProgram callback baseMaterial))

(cl:defmethod add-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (pixelShaderProgram iread-file) callback)
  (IGPUProgrammingServices_addShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram pixelShaderProgram callback))

(cl:defmethod add-shader-material-from-files ((self igpuprogramming-services) (vertexShaderProgram iread-file) (pixelShaderProgram iread-file))
  (IGPUProgrammingServices_addShaderMaterialFromFiles (ff-pointer self) vertexShaderProgram pixelShaderProgram))

(cl:defmethod add-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName callback (baseMaterial cl:integer) (userData cl:integer))
  (IGPUProgrammingServices_addShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName callback baseMaterial userData))

(cl:defmethod add-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName callback (baseMaterial cl:integer))
  (IGPUProgrammingServices_addShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName callback baseMaterial))

(cl:defmethod add-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName callback)
  (IGPUProgrammingServices_addShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName callback))

(cl:defmethod add-shader-material-from-files ((self igpuprogramming-services) vertexShaderProgramFileName pixelShaderProgramFileName)
  (IGPUProgrammingServices_addShaderMaterialFromFiles (ff-pointer self) vertexShaderProgramFileName pixelShaderProgramFileName))


(cl:defclass iguielement(irr::io::-iattribute-exchanging-objectirr::-ievent-receiver)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj iguielement) &key (type cl:integer) environment (parent iguielement) (id cl:integer) rectangle)
  (setf (slot-value obj 'ff-pointer) (new_IGUIElement type environment (ff-pointer parent) id rectangle)))

(cl:defmethod get-parent ((self iguielement))
  (IGUIElement_getParent (ff-pointer self)))

(cl:defmethod get-relative-position ((self iguielement))
  (IGUIElement_getRelativePosition (ff-pointer self)))

(cl:defmethod set-relative-position ((self iguielement) r)
  (IGUIElement_setRelativePosition (ff-pointer self) r))

(cl:defmethod set-relative-position ((self iguielement) position)
  (IGUIElement_setRelativePosition (ff-pointer self) position))

(cl:defmethod set-relative-position-proportional ((self iguielement) r)
  (IGUIElement_setRelativePositionProportional (ff-pointer self) r))

(cl:defmethod get-absolute-position ((self iguielement))
  (IGUIElement_getAbsolutePosition (ff-pointer self)))

(cl:defmethod get-absolute-clipping-rect ((self iguielement))
  (IGUIElement_getAbsoluteClippingRect (ff-pointer self)))

(cl:defmethod set-not-clipped ((self iguielement) (noClip t))
  (IGUIElement_setNotClipped (ff-pointer self) noClip))

(cl:defmethod is-not-clipped ((self iguielement))
  (IGUIElement_isNotClipped (ff-pointer self)))

(cl:defmethod set-max-size ((self iguielement) size)
  (IGUIElement_setMaxSize (ff-pointer self) size))

(cl:defmethod set-min-size ((self iguielement) size)
  (IGUIElement_setMinSize (ff-pointer self) size))

(cl:defmethod set-alignment ((self iguielement) (left cl:integer) (right cl:integer) (top cl:integer) (bottom cl:integer))
  (IGUIElement_setAlignment (ff-pointer self) left right top bottom))

(cl:defmethod update-absolute-position ((self iguielement))
  (IGUIElement_updateAbsolutePosition (ff-pointer self)))

(cl:defmethod get-element-from-point ((self iguielement) point)
  (IGUIElement_getElementFromPoint (ff-pointer self) point))

(cl:defmethod is-point-inside ((self iguielement) point)
  (IGUIElement_isPointInside (ff-pointer self) point))

(cl:defmethod add-child ((self iguielement) (child iguielement))
  (IGUIElement_addChild (ff-pointer self) (ff-pointer child)))

(cl:defmethod remove-child ((self iguielement) (child iguielement))
  (IGUIElement_removeChild (ff-pointer self) (ff-pointer child)))

(cl:defmethod remove ((self iguielement))
  (IGUIElement_remove (ff-pointer self)))

(cl:defmethod draw ((self iguielement))
  (IGUIElement_draw (ff-pointer self)))

(cl:defmethod on-post-render ((self iguielement) (timeMs cl:integer))
  (IGUIElement_OnPostRender (ff-pointer self) timeMs))

(cl:defmethod move ((self iguielement) absoluteMovement)
  (IGUIElement_move (ff-pointer self) absoluteMovement))

(cl:defmethod is-visible ((self iguielement))
  (IGUIElement_isVisible (ff-pointer self)))

(cl:defmethod set-visible ((self iguielement) (visible t))
  (IGUIElement_setVisible (ff-pointer self) visible))

(cl:defmethod is-sub-element ((self iguielement))
  (IGUIElement_isSubElement (ff-pointer self)))

(cl:defmethod set-sub-element ((self iguielement) (subElement t))
  (IGUIElement_setSubElement (ff-pointer self) subElement))

(cl:defmethod set-tab-stop ((self iguielement) (enable t))
  (IGUIElement_setTabStop (ff-pointer self) enable))

(cl:defmethod is-tab-stop ((self iguielement))
  (IGUIElement_isTabStop (ff-pointer self)))

(cl:defmethod set-tab-order ((self iguielement) (index cl:integer))
  (IGUIElement_setTabOrder (ff-pointer self) index))

(cl:defmethod get-tab-order ((self iguielement))
  (IGUIElement_getTabOrder (ff-pointer self)))

(cl:defmethod set-tab-group ((self iguielement) (isGroup t))
  (IGUIElement_setTabGroup (ff-pointer self) isGroup))

(cl:defmethod is-tab-group ((self iguielement))
  (IGUIElement_isTabGroup (ff-pointer self)))

(cl:defmethod get-tab-group ((self iguielement))
  (IGUIElement_getTabGroup (ff-pointer self)))

(cl:defmethod is-enabled ((self iguielement))
  (IGUIElement_isEnabled (ff-pointer self)))

(cl:defmethod set-enabled ((self iguielement) (enabled t))
  (IGUIElement_setEnabled (ff-pointer self) enabled))

(cl:defmethod set-text ((self iguielement) text)
  (IGUIElement_setText (ff-pointer self) text))

(cl:defmethod get-text ((self iguielement))
  (IGUIElement_getText (ff-pointer self)))

(cl:defmethod set-tool-tip-text ((self iguielement) text)
  (IGUIElement_setToolTipText (ff-pointer self) text))

(cl:defmethod get-tool-tip-text ((self iguielement))
  (IGUIElement_getToolTipText (ff-pointer self)))

(cl:defmethod get-id ((self iguielement))
  (IGUIElement_getID (ff-pointer self)))

(cl:defmethod set-id ((self iguielement) (id cl:integer))
  (IGUIElement_setID (ff-pointer self) id))

(cl:defmethod bring-to-front ((self iguielement) (element iguielement))
  (IGUIElement_bringToFront (ff-pointer self) (ff-pointer element)))

(cl:defmethod send-to-back ((self iguielement) (child iguielement))
  (IGUIElement_sendToBack (ff-pointer self) (ff-pointer child)))

(cl:defmethod get-children ((self iguielement))
  (IGUIElement_getChildren (ff-pointer self)))

(cl:defmethod get-element-from-id ((self iguielement) (id cl:integer) (searchchildren t))
  (IGUIElement_getElementFromId (ff-pointer self) id searchchildren))

(cl:defmethod get-element-from-id ((self iguielement) (id cl:integer))
  (IGUIElement_getElementFromId (ff-pointer self) id))

(cl:defmethod is-my-child ((self iguielement) (child iguielement))
  (IGUIElement_isMyChild (ff-pointer self) (ff-pointer child)))

(cl:defmethod get-next-element ((self iguielement) (startOrder cl:integer) (reverse t) (group t) first closest (includeInvisible t))
  (IGUIElement_getNextElement (ff-pointer self) startOrder reverse group first closest includeInvisible))

(cl:defmethod get-next-element ((self iguielement) (startOrder cl:integer) (reverse t) (group t) first closest)
  (IGUIElement_getNextElement (ff-pointer self) startOrder reverse group first closest))

(cl:defmethod get-type ((self iguielement))
  (IGUIElement_getType (ff-pointer self)))

(cl:defmethod has-type ((self iguielement) (type cl:integer))
  (IGUIElement_hasType (ff-pointer self) type))

(cl:defmethod get-type-name ((self iguielement))
  (IGUIElement_getTypeName (ff-pointer self)))

(cl:defmethod get-name ((self iguielement))
  (IGUIElement_getName (ff-pointer self)))

(cl:defmethod set-name ((self iguielement) (name cl:string))
  (IGUIElement_setName (ff-pointer self) name))

(cl:defmethod set-name ((self iguielement) name)
  (IGUIElement_setName (ff-pointer self) name))

(cl:defmethod serialize-attributes ((self iguielement) (out iattributes) options)
  (IGUIElement_serializeAttributes (ff-pointer self) out options))

(cl:defmethod serialize-attributes ((self iguielement) (out iattributes))
  (IGUIElement_serializeAttributes (ff-pointer self) out))

(cl:defmethod deserialize-attributes ((self iguielement) (in iattributes) options)
  (IGUIElement_deserializeAttributes (ff-pointer self) in options))

(cl:defmethod deserialize-attributes ((self iguielement) (in iattributes))
  (IGUIElement_deserializeAttributes (ff-pointer self) in))


(cl:defclass iguibutton(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-override-font ((self iguibutton) font)
  (IGUIButton_setOverrideFont (ff-pointer self) font))

(cl:defmethod set-override-font ((self iguibutton))
  (IGUIButton_setOverrideFont (ff-pointer self)))

(cl:defmethod get-override-font ((self iguibutton))
  (IGUIButton_getOverrideFont (ff-pointer self)))

(cl:defmethod get-active-font ((self iguibutton))
  (IGUIButton_getActiveFont (ff-pointer self)))

(cl:defmethod set-image ((self iguibutton) (image itexture))
  (IGUIButton_setImage (ff-pointer self) image))

(cl:defmethod set-image ((self iguibutton))
  (IGUIButton_setImage (ff-pointer self)))

(cl:defmethod set-image ((self iguibutton) (image itexture) pos)
  (IGUIButton_setImage (ff-pointer self) image pos))

(cl:defmethod set-pressed-image ((self iguibutton) (image itexture))
  (IGUIButton_setPressedImage (ff-pointer self) image))

(cl:defmethod set-pressed-image ((self iguibutton))
  (IGUIButton_setPressedImage (ff-pointer self)))

(cl:defmethod set-pressed-image ((self iguibutton) (image itexture) pos)
  (IGUIButton_setPressedImage (ff-pointer self) image pos))

(cl:defmethod set-sprite-bank ((self iguibutton) bank)
  (IGUIButton_setSpriteBank (ff-pointer self) bank))

(cl:defmethod set-sprite-bank ((self iguibutton))
  (IGUIButton_setSpriteBank (ff-pointer self)))

(cl:defmethod set-sprite ((self iguibutton) (state cl:integer) (index cl:integer) (color scolor) (loop t))
  (IGUIButton_setSprite (ff-pointer self) state index color loop))

(cl:defmethod set-sprite ((self iguibutton) (state cl:integer) (index cl:integer) (color scolor))
  (IGUIButton_setSprite (ff-pointer self) state index color))

(cl:defmethod set-sprite ((self iguibutton) (state cl:integer) (index cl:integer))
  (IGUIButton_setSprite (ff-pointer self) state index))

(cl:defmethod set-is-push-button ((self iguibutton) (isPushButton t))
  (IGUIButton_setIsPushButton (ff-pointer self) isPushButton))

(cl:defmethod set-is-push-button ((self iguibutton))
  (IGUIButton_setIsPushButton (ff-pointer self)))

(cl:defmethod set-pressed ((self iguibutton) (pressed t))
  (IGUIButton_setPressed (ff-pointer self) pressed))

(cl:defmethod set-pressed ((self iguibutton))
  (IGUIButton_setPressed (ff-pointer self)))

(cl:defmethod is-pressed ((self iguibutton))
  (IGUIButton_isPressed (ff-pointer self)))

(cl:defmethod set-use-alpha-channel ((self iguibutton) (useAlphaChannel t))
  (IGUIButton_setUseAlphaChannel (ff-pointer self) useAlphaChannel))

(cl:defmethod set-use-alpha-channel ((self iguibutton))
  (IGUIButton_setUseAlphaChannel (ff-pointer self)))

(cl:defmethod is-alpha-channel-used ((self iguibutton))
  (IGUIButton_isAlphaChannelUsed (ff-pointer self)))

(cl:defmethod is-push-button ((self iguibutton))
  (IGUIButton_isPushButton (ff-pointer self)))

(cl:defmethod set-draw-border ((self iguibutton) (border t))
  (IGUIButton_setDrawBorder (ff-pointer self) border))

(cl:defmethod set-draw-border ((self iguibutton))
  (IGUIButton_setDrawBorder (ff-pointer self)))

(cl:defmethod is-drawing-border ((self iguibutton))
  (IGUIButton_isDrawingBorder (ff-pointer self)))

(cl:defmethod set-scale-image ((self iguibutton) (scaleImage t))
  (IGUIButton_setScaleImage (ff-pointer self) scaleImage))

(cl:defmethod set-scale-image ((self iguibutton))
  (IGUIButton_setScaleImage (ff-pointer self)))

(cl:defmethod is-scaling-image ((self iguibutton))
  (IGUIButton_isScalingImage (ff-pointer self)))


(cl:defclass iguicheck-box(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-checked ((self iguicheck-box) (checked t))
  (IGUICheckBox_setChecked (ff-pointer self) checked))

(cl:defmethod is-checked ((self iguicheck-box))
  (IGUICheckBox_isChecked (ff-pointer self)))


(cl:defclass iguicolor-select-dialog(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj iguicolor-select-dialog) &key environment (parent iguielement) (id cl:integer) rectangle)
  (setf (slot-value obj 'ff-pointer) (new_IGUIColorSelectDialog environment parent id rectangle)))


(cl:defclass iguicombo-box(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-item-count ((self iguicombo-box))
  (IGUIComboBox_getItemCount (ff-pointer self)))

(cl:defmethod get-item ((self iguicombo-box) (idx cl:integer))
  (IGUIComboBox_getItem (ff-pointer self) idx))

(cl:defmethod get-item-data ((self iguicombo-box) (idx cl:integer))
  (IGUIComboBox_getItemData (ff-pointer self) idx))

(cl:defmethod get-index-for-item-data ((self iguicombo-box) (data cl:integer))
  (IGUIComboBox_getIndexForItemData (ff-pointer self) data))

(cl:defmethod add-item ((self iguicombo-box) text (data cl:integer))
  (IGUIComboBox_addItem (ff-pointer self) text data))

(cl:defmethod add-item ((self iguicombo-box) text)
  (IGUIComboBox_addItem (ff-pointer self) text))

(cl:defmethod remove-item ((self iguicombo-box) (idx cl:integer))
  (IGUIComboBox_removeItem (ff-pointer self) idx))

(cl:defmethod clear ((self iguicombo-box))
  (IGUIComboBox_clear (ff-pointer self)))

(cl:defmethod get-selected ((self iguicombo-box))
  (IGUIComboBox_getSelected (ff-pointer self)))

(cl:defmethod set-selected ((self iguicombo-box) (idx cl:integer))
  (IGUIComboBox_setSelected (ff-pointer self) idx))

(cl:defmethod set-text-alignment ((self iguicombo-box) (horizontal cl:integer) (vertical cl:integer))
  (IGUIComboBox_setTextAlignment (ff-pointer self) horizontal vertical))

(cl:defmethod set-max-selection-rows ((self iguicombo-box) (max cl:integer))
  (IGUIComboBox_setMaxSelectionRows (ff-pointer self) max))

(cl:defmethod get-max-selection-rows ((self iguicombo-box))
  (IGUIComboBox_getMaxSelectionRows (ff-pointer self)))


(cl:defclass iguicontext-menu(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-close-handling ((self iguicontext-menu) (onClose cl:integer))
  (IGUIContextMenu_setCloseHandling (ff-pointer self) onClose))

(cl:defmethod get-close-handling ((self iguicontext-menu))
  (IGUIContextMenu_getCloseHandling (ff-pointer self)))

(cl:defmethod get-item-count ((self iguicontext-menu))
  (IGUIContextMenu_getItemCount (ff-pointer self)))

(cl:defmethod add-item ((self iguicontext-menu) text (commandId cl:integer) (enabled t) (hasSubMenu t) (checked t) (autoChecking t))
  (IGUIContextMenu_addItem (ff-pointer self) text commandId enabled hasSubMenu checked autoChecking))

(cl:defmethod add-item ((self iguicontext-menu) text (commandId cl:integer) (enabled t) (hasSubMenu t) (checked t))
  (IGUIContextMenu_addItem (ff-pointer self) text commandId enabled hasSubMenu checked))

(cl:defmethod add-item ((self iguicontext-menu) text (commandId cl:integer) (enabled t) (hasSubMenu t))
  (IGUIContextMenu_addItem (ff-pointer self) text commandId enabled hasSubMenu))

(cl:defmethod add-item ((self iguicontext-menu) text (commandId cl:integer) (enabled t))
  (IGUIContextMenu_addItem (ff-pointer self) text commandId enabled))

(cl:defmethod add-item ((self iguicontext-menu) text (commandId cl:integer))
  (IGUIContextMenu_addItem (ff-pointer self) text commandId))

(cl:defmethod add-item ((self iguicontext-menu) text)
  (IGUIContextMenu_addItem (ff-pointer self) text))

(cl:defmethod insert-item ((self iguicontext-menu) (idx cl:integer) text (commandId cl:integer) (enabled t) (hasSubMenu t) (checked t) (autoChecking t))
  (IGUIContextMenu_insertItem (ff-pointer self) idx text commandId enabled hasSubMenu checked autoChecking))

(cl:defmethod insert-item ((self iguicontext-menu) (idx cl:integer) text (commandId cl:integer) (enabled t) (hasSubMenu t) (checked t))
  (IGUIContextMenu_insertItem (ff-pointer self) idx text commandId enabled hasSubMenu checked))

(cl:defmethod insert-item ((self iguicontext-menu) (idx cl:integer) text (commandId cl:integer) (enabled t) (hasSubMenu t))
  (IGUIContextMenu_insertItem (ff-pointer self) idx text commandId enabled hasSubMenu))

(cl:defmethod insert-item ((self iguicontext-menu) (idx cl:integer) text (commandId cl:integer) (enabled t))
  (IGUIContextMenu_insertItem (ff-pointer self) idx text commandId enabled))

(cl:defmethod insert-item ((self iguicontext-menu) (idx cl:integer) text (commandId cl:integer))
  (IGUIContextMenu_insertItem (ff-pointer self) idx text commandId))

(cl:defmethod insert-item ((self iguicontext-menu) (idx cl:integer) text)
  (IGUIContextMenu_insertItem (ff-pointer self) idx text))

(cl:defmethod find-item-with-command-id ((self iguicontext-menu) (commandId cl:integer) (idxStartSearch cl:integer))
  (IGUIContextMenu_findItemWithCommandId (ff-pointer self) commandId idxStartSearch))

(cl:defmethod find-item-with-command-id ((self iguicontext-menu) (commandId cl:integer))
  (IGUIContextMenu_findItemWithCommandId (ff-pointer self) commandId))

(cl:defmethod add-separator ((self iguicontext-menu))
  (IGUIContextMenu_addSeparator (ff-pointer self)))

(cl:defmethod get-item-text ((self iguicontext-menu) (idx cl:integer))
  (IGUIContextMenu_getItemText (ff-pointer self) idx))

(cl:defmethod set-item-text ((self iguicontext-menu) (idx cl:integer) text)
  (IGUIContextMenu_setItemText (ff-pointer self) idx text))

(cl:defmethod is-item-enabled ((self iguicontext-menu) (idx cl:integer))
  (IGUIContextMenu_isItemEnabled (ff-pointer self) idx))

(cl:defmethod set-item-enabled ((self iguicontext-menu) (idx cl:integer) (enabled t))
  (IGUIContextMenu_setItemEnabled (ff-pointer self) idx enabled))

(cl:defmethod set-item-checked ((self iguicontext-menu) (idx cl:integer) (enabled t))
  (IGUIContextMenu_setItemChecked (ff-pointer self) idx enabled))

(cl:defmethod is-item-checked ((self iguicontext-menu) (idx cl:integer))
  (IGUIContextMenu_isItemChecked (ff-pointer self) idx))

(cl:defmethod remove-item ((self iguicontext-menu) (idx cl:integer))
  (IGUIContextMenu_removeItem (ff-pointer self) idx))

(cl:defmethod remove-all-items ((self iguicontext-menu))
  (IGUIContextMenu_removeAllItems (ff-pointer self)))

(cl:defmethod get-selected-item ((self iguicontext-menu))
  (IGUIContextMenu_getSelectedItem (ff-pointer self)))

(cl:defmethod get-item-command-id ((self iguicontext-menu) (idx cl:integer))
  (IGUIContextMenu_getItemCommandId (ff-pointer self) idx))

(cl:defmethod set-item-command-id ((self iguicontext-menu) (idx cl:integer) (id cl:integer))
  (IGUIContextMenu_setItemCommandId (ff-pointer self) idx id))

(cl:defmethod get-sub-menu ((self iguicontext-menu) (idx cl:integer))
  (IGUIContextMenu_getSubMenu (ff-pointer self) idx))

(cl:defmethod set-item-auto-checking ((self iguicontext-menu) (idx cl:integer) (autoChecking t))
  (IGUIContextMenu_setItemAutoChecking (ff-pointer self) idx autoChecking))

(cl:defmethod get-item-auto-checking ((self iguicontext-menu) (idx cl:integer))
  (IGUIContextMenu_getItemAutoChecking (ff-pointer self) idx))

(cl:defmethod set-event-parent ((self iguicontext-menu) (parent iguielement))
  (IGUIContextMenu_setEventParent (ff-pointer self) parent))


(cl:defclass iguiedit-box(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-override-font ((self iguiedit-box) font)
  (IGUIEditBox_setOverrideFont (ff-pointer self) font))

(cl:defmethod set-override-font ((self iguiedit-box))
  (IGUIEditBox_setOverrideFont (ff-pointer self)))

(cl:defmethod get-override-font ((self iguiedit-box))
  (IGUIEditBox_getOverrideFont (ff-pointer self)))

(cl:defmethod get-active-font ((self iguiedit-box))
  (IGUIEditBox_getActiveFont (ff-pointer self)))

(cl:defmethod set-override-color ((self iguiedit-box) (color scolor))
  (IGUIEditBox_setOverrideColor (ff-pointer self) color))

(cl:defmethod get-override-color ((self iguiedit-box))
  (IGUIEditBox_getOverrideColor (ff-pointer self)))

(cl:defmethod enable-override-color ((self iguiedit-box) (enable t))
  (IGUIEditBox_enableOverrideColor (ff-pointer self) enable))

(cl:defmethod is-override-color-enabled ((self iguiedit-box))
  (IGUIEditBox_isOverrideColorEnabled (ff-pointer self)))

(cl:defmethod set-draw-background ((self iguiedit-box) (draw t))
  (IGUIEditBox_setDrawBackground (ff-pointer self) draw))

(cl:defmethod set-draw-border ((self iguiedit-box) (border t))
  (IGUIEditBox_setDrawBorder (ff-pointer self) border))

(cl:defmethod set-text-alignment ((self iguiedit-box) (horizontal cl:integer) (vertical cl:integer))
  (IGUIEditBox_setTextAlignment (ff-pointer self) horizontal vertical))

(cl:defmethod set-word-wrap ((self iguiedit-box) (enable t))
  (IGUIEditBox_setWordWrap (ff-pointer self) enable))

(cl:defmethod is-word-wrap-enabled ((self iguiedit-box))
  (IGUIEditBox_isWordWrapEnabled (ff-pointer self)))

(cl:defmethod set-multi-line ((self iguiedit-box) (enable t))
  (IGUIEditBox_setMultiLine (ff-pointer self) enable))

(cl:defmethod is-multi-line-enabled ((self iguiedit-box))
  (IGUIEditBox_isMultiLineEnabled (ff-pointer self)))

(cl:defmethod set-auto-scroll ((self iguiedit-box) (enable t))
  (IGUIEditBox_setAutoScroll (ff-pointer self) enable))

(cl:defmethod is-auto-scroll-enabled ((self iguiedit-box))
  (IGUIEditBox_isAutoScrollEnabled (ff-pointer self)))

(cl:defmethod set-password-box ((self iguiedit-box) (passwordBox t) passwordChar)
  (IGUIEditBox_setPasswordBox (ff-pointer self) passwordBox passwordChar))

(cl:defmethod set-password-box ((self iguiedit-box) (passwordBox t))
  (IGUIEditBox_setPasswordBox (ff-pointer self) passwordBox))

(cl:defmethod is-password-box ((self iguiedit-box))
  (IGUIEditBox_isPasswordBox (ff-pointer self)))

(cl:defmethod get-text-dimension ((self iguiedit-box))
  (IGUIEditBox_getTextDimension (ff-pointer self)))

(cl:defmethod set-max ((self iguiedit-box) (max cl:integer))
  (IGUIEditBox_setMax (ff-pointer self) max))

(cl:defmethod get-max ((self iguiedit-box))
  (IGUIEditBox_getMax (ff-pointer self)))


(cl:defclass iguielement-factory(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod add-guielement ((self iguielement-factory) (type cl:integer) (parent iguielement))
  (IGUIElementFactory_addGUIElement (ff-pointer self) type parent))

(cl:defmethod add-guielement ((self iguielement-factory) (type cl:integer))
  (IGUIElementFactory_addGUIElement (ff-pointer self) type))

(cl:defmethod add-guielement ((self iguielement-factory) (typeName cl:string) (parent iguielement))
  (IGUIElementFactory_addGUIElement (ff-pointer self) typeName parent))

(cl:defmethod add-guielement ((self iguielement-factory) (typeName cl:string))
  (IGUIElementFactory_addGUIElement (ff-pointer self) typeName))

(cl:defmethod get-creatable-guielement-type-count ((self iguielement-factory))
  (IGUIElementFactory_getCreatableGUIElementTypeCount (ff-pointer self)))

(cl:defmethod get-createable-guielement-type ((self iguielement-factory) (idx cl:integer))
  (IGUIElementFactory_getCreateableGUIElementType (ff-pointer self) idx))

(cl:defmethod get-createable-guielement-type-name ((self iguielement-factory) (idx cl:integer))
  (IGUIElementFactory_getCreateableGUIElementTypeName (ff-pointer self) idx))

(cl:defmethod get-createable-guielement-type-name ((self iguielement-factory) (type cl:integer))
  (IGUIElementFactory_getCreateableGUIElementTypeName (ff-pointer self) type))


(cl:defclass iguiskin(irr::io::-iattribute-exchanging-object)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-color ((self iguiskin) (color cl:integer))
  (IGUISkin_getColor (ff-pointer self) color))

(cl:defmethod set-color ((self iguiskin) (which cl:integer) (newColor scolor))
  (IGUISkin_setColor (ff-pointer self) which newColor))

(cl:defmethod get-size ((self iguiskin) (size cl:integer))
  (IGUISkin_getSize (ff-pointer self) size))

(cl:defmethod get-default-text ((self iguiskin) (text cl:integer))
  (IGUISkin_getDefaultText (ff-pointer self) text))

(cl:defmethod set-default-text ((self iguiskin) (which cl:integer) newText)
  (IGUISkin_setDefaultText (ff-pointer self) which newText))

(cl:defmethod set-size ((self iguiskin) (which cl:integer) (size cl:integer))
  (IGUISkin_setSize (ff-pointer self) which size))

(cl:defmethod get-font ((self iguiskin) (which cl:integer))
  (IGUISkin_getFont (ff-pointer self) which))

(cl:defmethod get-font ((self iguiskin))
  (IGUISkin_getFont (ff-pointer self)))

(cl:defmethod set-font ((self iguiskin) font (which cl:integer))
  (IGUISkin_setFont (ff-pointer self) font which))

(cl:defmethod set-font ((self iguiskin) font)
  (IGUISkin_setFont (ff-pointer self) font))

(cl:defmethod get-sprite-bank ((self iguiskin))
  (IGUISkin_getSpriteBank (ff-pointer self)))

(cl:defmethod set-sprite-bank ((self iguiskin) bank)
  (IGUISkin_setSpriteBank (ff-pointer self) bank))

(cl:defmethod get-icon ((self iguiskin) (icon cl:integer))
  (IGUISkin_getIcon (ff-pointer self) icon))

(cl:defmethod set-icon ((self iguiskin) (icon cl:integer) (index cl:integer))
  (IGUISkin_setIcon (ff-pointer self) icon index))

(cl:defmethod draw3-dbutton-pane-standard ((self iguiskin) (element iguielement) rect clip)
  (IGUISkin_draw3DButtonPaneStandard (ff-pointer self) element rect clip))

(cl:defmethod draw3-dbutton-pane-standard ((self iguiskin) (element iguielement) rect)
  (IGUISkin_draw3DButtonPaneStandard (ff-pointer self) element rect))

(cl:defmethod draw3-dbutton-pane-pressed ((self iguiskin) (element iguielement) rect clip)
  (IGUISkin_draw3DButtonPanePressed (ff-pointer self) element rect clip))

(cl:defmethod draw3-dbutton-pane-pressed ((self iguiskin) (element iguielement) rect)
  (IGUISkin_draw3DButtonPanePressed (ff-pointer self) element rect))

(cl:defmethod draw3-dsunken-pane ((self iguiskin) (element iguielement) (bgcolor scolor) (flat t) (fillBackGround t) rect clip)
  (IGUISkin_draw3DSunkenPane (ff-pointer self) element bgcolor flat fillBackGround rect clip))

(cl:defmethod draw3-dsunken-pane ((self iguiskin) (element iguielement) (bgcolor scolor) (flat t) (fillBackGround t) rect)
  (IGUISkin_draw3DSunkenPane (ff-pointer self) element bgcolor flat fillBackGround rect))

(cl:defmethod draw3-dwindow-background ((self iguiskin) (element iguielement) (drawTitleBar t) (titleBarColor scolor) rect clip checkClientArea)
  (IGUISkin_draw3DWindowBackground (ff-pointer self) element drawTitleBar titleBarColor rect clip checkClientArea))

(cl:defmethod draw3-dwindow-background ((self iguiskin) (element iguielement) (drawTitleBar t) (titleBarColor scolor) rect clip)
  (IGUISkin_draw3DWindowBackground (ff-pointer self) element drawTitleBar titleBarColor rect clip))

(cl:defmethod draw3-dwindow-background ((self iguiskin) (element iguielement) (drawTitleBar t) (titleBarColor scolor) rect)
  (IGUISkin_draw3DWindowBackground (ff-pointer self) element drawTitleBar titleBarColor rect))

(cl:defmethod draw3-dmenu-pane ((self iguiskin) (element iguielement) rect clip)
  (IGUISkin_draw3DMenuPane (ff-pointer self) element rect clip))

(cl:defmethod draw3-dmenu-pane ((self iguiskin) (element iguielement) rect)
  (IGUISkin_draw3DMenuPane (ff-pointer self) element rect))

(cl:defmethod draw3-dtool-bar ((self iguiskin) (element iguielement) rect clip)
  (IGUISkin_draw3DToolBar (ff-pointer self) element rect clip))

(cl:defmethod draw3-dtool-bar ((self iguiskin) (element iguielement) rect)
  (IGUISkin_draw3DToolBar (ff-pointer self) element rect))

(cl:defmethod draw3-dtab-button ((self iguiskin) (element iguielement) (active t) rect clip (alignment cl:integer))
  (IGUISkin_draw3DTabButton (ff-pointer self) element active rect clip alignment))

(cl:defmethod draw3-dtab-button ((self iguiskin) (element iguielement) (active t) rect clip)
  (IGUISkin_draw3DTabButton (ff-pointer self) element active rect clip))

(cl:defmethod draw3-dtab-button ((self iguiskin) (element iguielement) (active t) rect)
  (IGUISkin_draw3DTabButton (ff-pointer self) element active rect))

(cl:defmethod draw3-dtab-body ((self iguiskin) (element iguielement) (border t) (background t) rect clip (tabHeight cl:integer) (alignment cl:integer))
  (IGUISkin_draw3DTabBody (ff-pointer self) element border background rect clip tabHeight alignment))

(cl:defmethod draw3-dtab-body ((self iguiskin) (element iguielement) (border t) (background t) rect clip (tabHeight cl:integer))
  (IGUISkin_draw3DTabBody (ff-pointer self) element border background rect clip tabHeight))

(cl:defmethod draw3-dtab-body ((self iguiskin) (element iguielement) (border t) (background t) rect clip)
  (IGUISkin_draw3DTabBody (ff-pointer self) element border background rect clip))

(cl:defmethod draw3-dtab-body ((self iguiskin) (element iguielement) (border t) (background t) rect)
  (IGUISkin_draw3DTabBody (ff-pointer self) element border background rect))

(cl:defmethod draw-icon ((self iguiskin) (element iguielement) (icon cl:integer) position (starttime cl:integer) (currenttime cl:integer) (loop t) clip)
  (IGUISkin_drawIcon (ff-pointer self) element icon position starttime currenttime loop clip))

(cl:defmethod draw-icon ((self iguiskin) (element iguielement) (icon cl:integer) position (starttime cl:integer) (currenttime cl:integer) (loop t))
  (IGUISkin_drawIcon (ff-pointer self) element icon position starttime currenttime loop))

(cl:defmethod draw-icon ((self iguiskin) (element iguielement) (icon cl:integer) position (starttime cl:integer) (currenttime cl:integer))
  (IGUISkin_drawIcon (ff-pointer self) element icon position starttime currenttime))

(cl:defmethod draw-icon ((self iguiskin) (element iguielement) (icon cl:integer) position (starttime cl:integer))
  (IGUISkin_drawIcon (ff-pointer self) element icon position starttime))

(cl:defmethod draw-icon ((self iguiskin) (element iguielement) (icon cl:integer) position)
  (IGUISkin_drawIcon (ff-pointer self) element icon position))

(cl:defmethod draw2-drectangle ((self iguiskin) (element iguielement) (color scolor) pos clip)
  (IGUISkin_draw2DRectangle (ff-pointer self) element color pos clip))

(cl:defmethod draw2-drectangle ((self iguiskin) (element iguielement) (color scolor) pos)
  (IGUISkin_draw2DRectangle (ff-pointer self) element color pos))

(cl:defmethod get-type ((self iguiskin))
  (IGUISkin_getType (ff-pointer self)))


(cl:defclass iguienvironment(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod draw-all ((self iguienvironment))
  (IGUIEnvironment_drawAll (ff-pointer self)))

(cl:defmethod set-focus ((self iguienvironment) (element iguielement))
  (IGUIEnvironment_setFocus (ff-pointer self) element))

(cl:defmethod get-focus ((self iguienvironment))
  (IGUIEnvironment_getFocus (ff-pointer self)))

(cl:defmethod get-hovered ((self iguienvironment))
  (IGUIEnvironment_getHovered (ff-pointer self)))

(cl:defmethod remove-focus ((self iguienvironment) (element iguielement))
  (IGUIEnvironment_removeFocus (ff-pointer self) element))

(cl:defmethod has-focus ((self iguienvironment) (element iguielement))
  (IGUIEnvironment_hasFocus (ff-pointer self) element))

(cl:defmethod get-video-driver ((self iguienvironment))
  (IGUIEnvironment_getVideoDriver (ff-pointer self)))

(cl:defmethod get-file-system ((self iguienvironment))
  (IGUIEnvironment_getFileSystem (ff-pointer self)))

(cl:defmethod get-osoperator ((self iguienvironment))
  (IGUIEnvironment_getOSOperator (ff-pointer self)))

(cl:defmethod clear ((self iguienvironment))
  (IGUIEnvironment_clear (ff-pointer self)))

(cl:defmethod post-event-from-user ((self iguienvironment) event)
  (IGUIEnvironment_postEventFromUser (ff-pointer self) event))

(cl:defmethod set-user-event-receiver ((self iguienvironment) (evr ievent-receiver))
  (IGUIEnvironment_setUserEventReceiver (ff-pointer self) evr))

(cl:defmethod get-skin ((self iguienvironment))
  (IGUIEnvironment_getSkin (ff-pointer self)))

(cl:defmethod set-skin ((self iguienvironment) (skin iguiskin))
  (IGUIEnvironment_setSkin (ff-pointer self) skin))

(cl:defmethod create-skin ((self iguienvironment) (type cl:integer))
  (IGUIEnvironment_createSkin (ff-pointer self) type))

(cl:defmethod create-image-list ((self iguienvironment) (texture itexture) imageSize (useAlphaChannel t))
  (IGUIEnvironment_createImageList (ff-pointer self) texture imageSize useAlphaChannel))

(cl:defmethod get-font ((self iguienvironment) filename)
  (IGUIEnvironment_getFont (ff-pointer self) filename))

(cl:defmethod add-font ((self iguienvironment) name font)
  (IGUIEnvironment_addFont (ff-pointer self) name font))

(cl:defmethod remove-font ((self iguienvironment) font)
  (IGUIEnvironment_removeFont (ff-pointer self) font))

(cl:defmethod get-built-in-font ((self iguienvironment))
  (IGUIEnvironment_getBuiltInFont (ff-pointer self)))

(cl:defmethod get-sprite-bank ((self iguienvironment) filename)
  (IGUIEnvironment_getSpriteBank (ff-pointer self) filename))

(cl:defmethod add-empty-sprite-bank ((self iguienvironment) name)
  (IGUIEnvironment_addEmptySpriteBank (ff-pointer self) name))

(cl:defmethod get-root-guielement ((self iguienvironment))
  (IGUIEnvironment_getRootGUIElement (ff-pointer self)))

(cl:defmethod add-button ((self iguienvironment) rectangle (parent iguielement) (id cl:integer) text tooltiptext)
  (IGUIEnvironment_addButton (ff-pointer self) rectangle parent id text tooltiptext))

(cl:defmethod add-button ((self iguienvironment) rectangle (parent iguielement) (id cl:integer) text)
  (IGUIEnvironment_addButton (ff-pointer self) rectangle parent id text))

(cl:defmethod add-button ((self iguienvironment) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addButton (ff-pointer self) rectangle parent id))

(cl:defmethod add-button ((self iguienvironment) rectangle (parent iguielement))
  (IGUIEnvironment_addButton (ff-pointer self) rectangle parent))

(cl:defmethod add-button ((self iguienvironment) rectangle)
  (IGUIEnvironment_addButton (ff-pointer self) rectangle))

(cl:defmethod add-window ((self iguienvironment) rectangle (modal t) text (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addWindow (ff-pointer self) rectangle modal text parent id))

(cl:defmethod add-window ((self iguienvironment) rectangle (modal t) text (parent iguielement))
  (IGUIEnvironment_addWindow (ff-pointer self) rectangle modal text parent))

(cl:defmethod add-window ((self iguienvironment) rectangle (modal t) text)
  (IGUIEnvironment_addWindow (ff-pointer self) rectangle modal text))

(cl:defmethod add-window ((self iguienvironment) rectangle (modal t))
  (IGUIEnvironment_addWindow (ff-pointer self) rectangle modal))

(cl:defmethod add-window ((self iguienvironment) rectangle)
  (IGUIEnvironment_addWindow (ff-pointer self) rectangle))

(cl:defmethod add-modal-screen ((self iguienvironment) (parent iguielement))
  (IGUIEnvironment_addModalScreen (ff-pointer self) parent))

(cl:defmethod add-message-box ((self iguienvironment) caption text (modal t) (flags cl:integer) (parent iguielement) (id cl:integer) (image itexture))
  (IGUIEnvironment_addMessageBox (ff-pointer self) caption text modal flags parent id image))

(cl:defmethod add-message-box ((self iguienvironment) caption text (modal t) (flags cl:integer) (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addMessageBox (ff-pointer self) caption text modal flags parent id))

(cl:defmethod add-message-box ((self iguienvironment) caption text (modal t) (flags cl:integer) (parent iguielement))
  (IGUIEnvironment_addMessageBox (ff-pointer self) caption text modal flags parent))

(cl:defmethod add-message-box ((self iguienvironment) caption text (modal t) (flags cl:integer))
  (IGUIEnvironment_addMessageBox (ff-pointer self) caption text modal flags))

(cl:defmethod add-message-box ((self iguienvironment) caption text (modal t))
  (IGUIEnvironment_addMessageBox (ff-pointer self) caption text modal))

(cl:defmethod add-message-box ((self iguienvironment) caption text)
  (IGUIEnvironment_addMessageBox (ff-pointer self) caption text))

(cl:defmethod add-message-box ((self iguienvironment) caption)
  (IGUIEnvironment_addMessageBox (ff-pointer self) caption))

(cl:defmethod add-scroll-bar ((self iguienvironment) (horizontal t) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addScrollBar (ff-pointer self) horizontal rectangle parent id))

(cl:defmethod add-scroll-bar ((self iguienvironment) (horizontal t) rectangle (parent iguielement))
  (IGUIEnvironment_addScrollBar (ff-pointer self) horizontal rectangle parent))

(cl:defmethod add-scroll-bar ((self iguienvironment) (horizontal t) rectangle)
  (IGUIEnvironment_addScrollBar (ff-pointer self) horizontal rectangle))

(cl:defmethod add-image ((self iguienvironment) (image itexture) pos (useAlphaChannel t) (parent iguielement) (id cl:integer) text)
  (IGUIEnvironment_addImage (ff-pointer self) image pos useAlphaChannel parent id text))

(cl:defmethod add-image ((self iguienvironment) (image itexture) pos (useAlphaChannel t) (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addImage (ff-pointer self) image pos useAlphaChannel parent id))

(cl:defmethod add-image ((self iguienvironment) (image itexture) pos (useAlphaChannel t) (parent iguielement))
  (IGUIEnvironment_addImage (ff-pointer self) image pos useAlphaChannel parent))

(cl:defmethod add-image ((self iguienvironment) (image itexture) pos (useAlphaChannel t))
  (IGUIEnvironment_addImage (ff-pointer self) image pos useAlphaChannel))

(cl:defmethod add-image ((self iguienvironment) (image itexture) pos)
  (IGUIEnvironment_addImage (ff-pointer self) image pos))

(cl:defmethod add-image ((self iguienvironment) rectangle (parent iguielement) (id cl:integer) text (useAlphaChannel t))
  (IGUIEnvironment_addImage (ff-pointer self) rectangle parent id text useAlphaChannel))

(cl:defmethod add-image ((self iguienvironment) rectangle (parent iguielement) (id cl:integer) text)
  (IGUIEnvironment_addImage (ff-pointer self) rectangle parent id text))

(cl:defmethod add-image ((self iguienvironment) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addImage (ff-pointer self) rectangle parent id))

(cl:defmethod add-image ((self iguienvironment) rectangle (parent iguielement))
  (IGUIEnvironment_addImage (ff-pointer self) rectangle parent))

(cl:defmethod add-image ((self iguienvironment) rectangle)
  (IGUIEnvironment_addImage (ff-pointer self) rectangle))

(cl:defmethod add-check-box ((self iguienvironment) (checked t) rectangle (parent iguielement) (id cl:integer) text)
  (IGUIEnvironment_addCheckBox (ff-pointer self) checked rectangle parent id text))

(cl:defmethod add-check-box ((self iguienvironment) (checked t) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addCheckBox (ff-pointer self) checked rectangle parent id))

(cl:defmethod add-check-box ((self iguienvironment) (checked t) rectangle (parent iguielement))
  (IGUIEnvironment_addCheckBox (ff-pointer self) checked rectangle parent))

(cl:defmethod add-check-box ((self iguienvironment) (checked t) rectangle)
  (IGUIEnvironment_addCheckBox (ff-pointer self) checked rectangle))

(cl:defmethod add-list-box ((self iguienvironment) rectangle (parent iguielement) (id cl:integer) (drawBackground t))
  (IGUIEnvironment_addListBox (ff-pointer self) rectangle parent id drawBackground))

(cl:defmethod add-list-box ((self iguienvironment) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addListBox (ff-pointer self) rectangle parent id))

(cl:defmethod add-list-box ((self iguienvironment) rectangle (parent iguielement))
  (IGUIEnvironment_addListBox (ff-pointer self) rectangle parent))

(cl:defmethod add-list-box ((self iguienvironment) rectangle)
  (IGUIEnvironment_addListBox (ff-pointer self) rectangle))

(cl:defmethod add-tree-view ((self iguienvironment) rectangle (parent iguielement) (id cl:integer) (drawBackground t) (scrollBarVertical t) (scrollBarHorizontal t))
  (IGUIEnvironment_addTreeView (ff-pointer self) rectangle parent id drawBackground scrollBarVertical scrollBarHorizontal))

(cl:defmethod add-tree-view ((self iguienvironment) rectangle (parent iguielement) (id cl:integer) (drawBackground t) (scrollBarVertical t))
  (IGUIEnvironment_addTreeView (ff-pointer self) rectangle parent id drawBackground scrollBarVertical))

(cl:defmethod add-tree-view ((self iguienvironment) rectangle (parent iguielement) (id cl:integer) (drawBackground t))
  (IGUIEnvironment_addTreeView (ff-pointer self) rectangle parent id drawBackground))

(cl:defmethod add-tree-view ((self iguienvironment) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addTreeView (ff-pointer self) rectangle parent id))

(cl:defmethod add-tree-view ((self iguienvironment) rectangle (parent iguielement))
  (IGUIEnvironment_addTreeView (ff-pointer self) rectangle parent))

(cl:defmethod add-tree-view ((self iguienvironment) rectangle)
  (IGUIEnvironment_addTreeView (ff-pointer self) rectangle))

(cl:defmethod add-mesh-viewer ((self iguienvironment) rectangle (parent iguielement) (id cl:integer) text)
  (IGUIEnvironment_addMeshViewer (ff-pointer self) rectangle parent id text))

(cl:defmethod add-mesh-viewer ((self iguienvironment) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addMeshViewer (ff-pointer self) rectangle parent id))

(cl:defmethod add-mesh-viewer ((self iguienvironment) rectangle (parent iguielement))
  (IGUIEnvironment_addMeshViewer (ff-pointer self) rectangle parent))

(cl:defmethod add-mesh-viewer ((self iguienvironment) rectangle)
  (IGUIEnvironment_addMeshViewer (ff-pointer self) rectangle))

(cl:defmethod add-file-open-dialog ((self iguienvironment) title (modal t) (parent iguielement) (id cl:integer) (restoreCWD t) startDir)
  (IGUIEnvironment_addFileOpenDialog (ff-pointer self) title modal parent id restoreCWD startDir))

(cl:defmethod add-file-open-dialog ((self iguienvironment) title (modal t) (parent iguielement) (id cl:integer) (restoreCWD t))
  (IGUIEnvironment_addFileOpenDialog (ff-pointer self) title modal parent id restoreCWD))

(cl:defmethod add-file-open-dialog ((self iguienvironment) title (modal t) (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addFileOpenDialog (ff-pointer self) title modal parent id))

(cl:defmethod add-file-open-dialog ((self iguienvironment) title (modal t) (parent iguielement))
  (IGUIEnvironment_addFileOpenDialog (ff-pointer self) title modal parent))

(cl:defmethod add-file-open-dialog ((self iguienvironment) title (modal t))
  (IGUIEnvironment_addFileOpenDialog (ff-pointer self) title modal))

(cl:defmethod add-file-open-dialog ((self iguienvironment) title)
  (IGUIEnvironment_addFileOpenDialog (ff-pointer self) title))

(cl:defmethod add-file-open-dialog ((self iguienvironment))
  (IGUIEnvironment_addFileOpenDialog (ff-pointer self)))

(cl:defmethod add-color-select-dialog ((self iguienvironment) title (modal t) (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addColorSelectDialog (ff-pointer self) title modal parent id))

(cl:defmethod add-color-select-dialog ((self iguienvironment) title (modal t) (parent iguielement))
  (IGUIEnvironment_addColorSelectDialog (ff-pointer self) title modal parent))

(cl:defmethod add-color-select-dialog ((self iguienvironment) title (modal t))
  (IGUIEnvironment_addColorSelectDialog (ff-pointer self) title modal))

(cl:defmethod add-color-select-dialog ((self iguienvironment) title)
  (IGUIEnvironment_addColorSelectDialog (ff-pointer self) title))

(cl:defmethod add-color-select-dialog ((self iguienvironment))
  (IGUIEnvironment_addColorSelectDialog (ff-pointer self)))

(cl:defmethod add-static-text ((self iguienvironment) text rectangle (border t) (wordWrap t) (parent iguielement) (id cl:integer) (fillBackground t))
  (IGUIEnvironment_addStaticText (ff-pointer self) text rectangle border wordWrap parent id fillBackground))

(cl:defmethod add-static-text ((self iguienvironment) text rectangle (border t) (wordWrap t) (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addStaticText (ff-pointer self) text rectangle border wordWrap parent id))

(cl:defmethod add-static-text ((self iguienvironment) text rectangle (border t) (wordWrap t) (parent iguielement))
  (IGUIEnvironment_addStaticText (ff-pointer self) text rectangle border wordWrap parent))

(cl:defmethod add-static-text ((self iguienvironment) text rectangle (border t) (wordWrap t))
  (IGUIEnvironment_addStaticText (ff-pointer self) text rectangle border wordWrap))

(cl:defmethod add-static-text ((self iguienvironment) text rectangle (border t))
  (IGUIEnvironment_addStaticText (ff-pointer self) text rectangle border))

(cl:defmethod add-static-text ((self iguienvironment) text rectangle)
  (IGUIEnvironment_addStaticText (ff-pointer self) text rectangle))

(cl:defmethod add-edit-box ((self iguienvironment) text rectangle (border t) (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addEditBox (ff-pointer self) text rectangle border parent id))

(cl:defmethod add-edit-box ((self iguienvironment) text rectangle (border t) (parent iguielement))
  (IGUIEnvironment_addEditBox (ff-pointer self) text rectangle border parent))

(cl:defmethod add-edit-box ((self iguienvironment) text rectangle (border t))
  (IGUIEnvironment_addEditBox (ff-pointer self) text rectangle border))

(cl:defmethod add-edit-box ((self iguienvironment) text rectangle)
  (IGUIEnvironment_addEditBox (ff-pointer self) text rectangle))

(cl:defmethod add-spin-box ((self iguienvironment) text rectangle (border t) (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addSpinBox (ff-pointer self) text rectangle border parent id))

(cl:defmethod add-spin-box ((self iguienvironment) text rectangle (border t) (parent iguielement))
  (IGUIEnvironment_addSpinBox (ff-pointer self) text rectangle border parent))

(cl:defmethod add-spin-box ((self iguienvironment) text rectangle (border t))
  (IGUIEnvironment_addSpinBox (ff-pointer self) text rectangle border))

(cl:defmethod add-spin-box ((self iguienvironment) text rectangle)
  (IGUIEnvironment_addSpinBox (ff-pointer self) text rectangle))

(cl:defmethod add-in-out-fader ((self iguienvironment) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addInOutFader (ff-pointer self) rectangle parent id))

(cl:defmethod add-in-out-fader ((self iguienvironment) rectangle (parent iguielement))
  (IGUIEnvironment_addInOutFader (ff-pointer self) rectangle parent))

(cl:defmethod add-in-out-fader ((self iguienvironment) rectangle)
  (IGUIEnvironment_addInOutFader (ff-pointer self) rectangle))

(cl:defmethod add-in-out-fader ((self iguienvironment))
  (IGUIEnvironment_addInOutFader (ff-pointer self)))

(cl:defmethod add-tab-control ((self iguienvironment) rectangle (parent iguielement) (fillbackground t) (border t) (id cl:integer))
  (IGUIEnvironment_addTabControl (ff-pointer self) rectangle parent fillbackground border id))

(cl:defmethod add-tab-control ((self iguienvironment) rectangle (parent iguielement) (fillbackground t) (border t))
  (IGUIEnvironment_addTabControl (ff-pointer self) rectangle parent fillbackground border))

(cl:defmethod add-tab-control ((self iguienvironment) rectangle (parent iguielement) (fillbackground t))
  (IGUIEnvironment_addTabControl (ff-pointer self) rectangle parent fillbackground))

(cl:defmethod add-tab-control ((self iguienvironment) rectangle (parent iguielement))
  (IGUIEnvironment_addTabControl (ff-pointer self) rectangle parent))

(cl:defmethod add-tab-control ((self iguienvironment) rectangle)
  (IGUIEnvironment_addTabControl (ff-pointer self) rectangle))

(cl:defmethod add-tab ((self iguienvironment) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addTab (ff-pointer self) rectangle parent id))

(cl:defmethod add-tab ((self iguienvironment) rectangle (parent iguielement))
  (IGUIEnvironment_addTab (ff-pointer self) rectangle parent))

(cl:defmethod add-tab ((self iguienvironment) rectangle)
  (IGUIEnvironment_addTab (ff-pointer self) rectangle))

(cl:defmethod add-context-menu ((self iguienvironment) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addContextMenu (ff-pointer self) rectangle parent id))

(cl:defmethod add-context-menu ((self iguienvironment) rectangle (parent iguielement))
  (IGUIEnvironment_addContextMenu (ff-pointer self) rectangle parent))

(cl:defmethod add-context-menu ((self iguienvironment) rectangle)
  (IGUIEnvironment_addContextMenu (ff-pointer self) rectangle))

(cl:defmethod add-menu ((self iguienvironment) (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addMenu (ff-pointer self) parent id))

(cl:defmethod add-menu ((self iguienvironment) (parent iguielement))
  (IGUIEnvironment_addMenu (ff-pointer self) parent))

(cl:defmethod add-menu ((self iguienvironment))
  (IGUIEnvironment_addMenu (ff-pointer self)))

(cl:defmethod add-tool-bar ((self iguienvironment) (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addToolBar (ff-pointer self) parent id))

(cl:defmethod add-tool-bar ((self iguienvironment) (parent iguielement))
  (IGUIEnvironment_addToolBar (ff-pointer self) parent))

(cl:defmethod add-tool-bar ((self iguienvironment))
  (IGUIEnvironment_addToolBar (ff-pointer self)))

(cl:defmethod add-combo-box ((self iguienvironment) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addComboBox (ff-pointer self) rectangle parent id))

(cl:defmethod add-combo-box ((self iguienvironment) rectangle (parent iguielement))
  (IGUIEnvironment_addComboBox (ff-pointer self) rectangle parent))

(cl:defmethod add-combo-box ((self iguienvironment) rectangle)
  (IGUIEnvironment_addComboBox (ff-pointer self) rectangle))

(cl:defmethod add-table ((self iguienvironment) rectangle (parent iguielement) (id cl:integer) (drawBackground t))
  (IGUIEnvironment_addTable (ff-pointer self) rectangle parent id drawBackground))

(cl:defmethod add-table ((self iguienvironment) rectangle (parent iguielement) (id cl:integer))
  (IGUIEnvironment_addTable (ff-pointer self) rectangle parent id))

(cl:defmethod add-table ((self iguienvironment) rectangle (parent iguielement))
  (IGUIEnvironment_addTable (ff-pointer self) rectangle parent))

(cl:defmethod add-table ((self iguienvironment) rectangle)
  (IGUIEnvironment_addTable (ff-pointer self) rectangle))

(cl:defmethod get-default-guielement-factory ((self iguienvironment))
  (IGUIEnvironment_getDefaultGUIElementFactory (ff-pointer self)))

(cl:defmethod register-guielement-factory ((self iguienvironment) (factoryToAdd iguielement-factory))
  (IGUIEnvironment_registerGUIElementFactory (ff-pointer self) factoryToAdd))

(cl:defmethod get-registered-guielement-factory-count ((self iguienvironment))
  (IGUIEnvironment_getRegisteredGUIElementFactoryCount (ff-pointer self)))

(cl:defmethod get-guielement-factory ((self iguienvironment) (index cl:integer))
  (IGUIEnvironment_getGUIElementFactory (ff-pointer self) index))

(cl:defmethod add-guielement ((self iguienvironment) (elementName cl:string) (parent iguielement))
  (IGUIEnvironment_addGUIElement (ff-pointer self) elementName parent))

(cl:defmethod add-guielement ((self iguienvironment) (elementName cl:string))
  (IGUIEnvironment_addGUIElement (ff-pointer self) elementName))

(cl:defmethod save-gui ((self iguienvironment) filename (start iguielement))
  (IGUIEnvironment_saveGUI (ff-pointer self) filename start))

(cl:defmethod save-gui ((self iguienvironment) filename)
  (IGUIEnvironment_saveGUI (ff-pointer self) filename))

(cl:defmethod save-gui ((self iguienvironment) file (start iguielement))
  (IGUIEnvironment_saveGUI (ff-pointer self) file start))

(cl:defmethod save-gui ((self iguienvironment) file)
  (IGUIEnvironment_saveGUI (ff-pointer self) file))

(cl:defmethod load-gui ((self iguienvironment) filename (parent iguielement))
  (IGUIEnvironment_loadGUI (ff-pointer self) filename parent))

(cl:defmethod load-gui ((self iguienvironment) filename)
  (IGUIEnvironment_loadGUI (ff-pointer self) filename))

(cl:defmethod load-gui ((self iguienvironment) (file iread-file) (parent iguielement))
  (IGUIEnvironment_loadGUI (ff-pointer self) file parent))

(cl:defmethod load-gui ((self iguienvironment) (file iread-file))
  (IGUIEnvironment_loadGUI (ff-pointer self) file))

(cl:defmethod serialize-attributes ((self iguienvironment) (out iattributes) options)
  (IGUIEnvironment_serializeAttributes (ff-pointer self) out options))

(cl:defmethod serialize-attributes ((self iguienvironment) (out iattributes))
  (IGUIEnvironment_serializeAttributes (ff-pointer self) out))

(cl:defmethod deserialize-attributes ((self iguienvironment) (in iattributes) options)
  (IGUIEnvironment_deserializeAttributes (ff-pointer self) in options))

(cl:defmethod deserialize-attributes ((self iguienvironment) (in iattributes))
  (IGUIEnvironment_deserializeAttributes (ff-pointer self) in))

(cl:defmethod write-guielement ((self iguienvironment) writer (node iguielement))
  (IGUIEnvironment_writeGUIElement (ff-pointer self) writer node))

(cl:defmethod read-guielement ((self iguienvironment) reader (node iguielement))
  (IGUIEnvironment_readGUIElement (ff-pointer self) reader node))


(cl:defclass iguifile-open-dialog(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-file-name ((self iguifile-open-dialog))
  (IGUIFileOpenDialog_getFileName (ff-pointer self)))

(cl:defmethod get-directory-name ((self iguifile-open-dialog))
  (IGUIFileOpenDialog_getDirectoryName (ff-pointer self)))


(cl:defclass iguifont(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod draw ((self iguifont) text position (color scolor) (hcenter t) (vcenter t) clip)
  (IGUIFont_draw (ff-pointer self) text position color hcenter vcenter clip))

(cl:defmethod draw ((self iguifont) text position (color scolor) (hcenter t) (vcenter t))
  (IGUIFont_draw (ff-pointer self) text position color hcenter vcenter))

(cl:defmethod draw ((self iguifont) text position (color scolor) (hcenter t))
  (IGUIFont_draw (ff-pointer self) text position color hcenter))

(cl:defmethod draw ((self iguifont) text position (color scolor))
  (IGUIFont_draw (ff-pointer self) text position color))

(cl:defmethod get-dimension ((self iguifont) text)
  (IGUIFont_getDimension (ff-pointer self) text))

(cl:defmethod get-character-from-pos ((self iguifont) text (pixel_x cl:integer))
  (IGUIFont_getCharacterFromPos (ff-pointer self) text pixel_x))

(cl:defmethod get-type ((self iguifont))
  (IGUIFont_getType (ff-pointer self)))

(cl:defmethod set-kerning-width ((self iguifont) (kerning cl:integer))
  (IGUIFont_setKerningWidth (ff-pointer self) kerning))

(cl:defmethod set-kerning-height ((self iguifont) (kerning cl:integer))
  (IGUIFont_setKerningHeight (ff-pointer self) kerning))

(cl:defmethod get-kerning-width ((self iguifont) thisLetter previousLetter)
  (IGUIFont_getKerningWidth (ff-pointer self) thisLetter previousLetter))

(cl:defmethod get-kerning-width ((self iguifont) thisLetter)
  (IGUIFont_getKerningWidth (ff-pointer self) thisLetter))

(cl:defmethod get-kerning-width ((self iguifont))
  (IGUIFont_getKerningWidth (ff-pointer self)))

(cl:defmethod get-kerning-height ((self iguifont))
  (IGUIFont_getKerningHeight (ff-pointer self)))

(cl:defmethod set-invisible-characters ((self iguifont) s)
  (IGUIFont_setInvisibleCharacters (ff-pointer self) s))


(cl:defclass iguifont-bitmap(irr::gui::-iguifont)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-sprite-bank ((self iguifont-bitmap))
  (IGUIFontBitmap_getSpriteBank (ff-pointer self)))

(cl:defmethod get-sprite-no-from-char ((self iguifont-bitmap) c)
  (IGUIFontBitmap_getSpriteNoFromChar (ff-pointer self) c))

(cl:defmethod get-kerning-width ((self iguifont-bitmap) thisLetter previousLetter)
  (IGUIFontBitmap_getKerningWidth (ff-pointer self) thisLetter previousLetter))

(cl:defmethod get-kerning-width ((self iguifont-bitmap) thisLetter)
  (IGUIFontBitmap_getKerningWidth (ff-pointer self) thisLetter))

(cl:defmethod get-kerning-width ((self iguifont-bitmap))
  (IGUIFontBitmap_getKerningWidth (ff-pointer self)))


(cl:defclass iguiimage(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-image ((self iguiimage) (image itexture))
  (IGUIImage_setImage (ff-pointer self) image))

(cl:defmethod get-image ((self iguiimage))
  (IGUIImage_getImage (ff-pointer self)))

(cl:defmethod set-color ((self iguiimage) (color scolor))
  (IGUIImage_setColor (ff-pointer self) color))

(cl:defmethod set-scale-image ((self iguiimage) (scale t))
  (IGUIImage_setScaleImage (ff-pointer self) scale))

(cl:defmethod set-use-alpha-channel ((self iguiimage) (use t))
  (IGUIImage_setUseAlphaChannel (ff-pointer self) use))

(cl:defmethod get-color ((self iguiimage))
  (IGUIImage_getColor (ff-pointer self)))

(cl:defmethod is-image-scaled ((self iguiimage))
  (IGUIImage_isImageScaled (ff-pointer self)))

(cl:defmethod is-alpha-channel-used ((self iguiimage))
  (IGUIImage_isAlphaChannelUsed (ff-pointer self)))


(cl:defclass iguiin-out-fader(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-color ((self iguiin-out-fader))
  (IGUIInOutFader_getColor (ff-pointer self)))

(cl:defmethod set-color ((self iguiin-out-fader) (color scolor))
  (IGUIInOutFader_setColor (ff-pointer self) color))

(cl:defmethod set-color ((self iguiin-out-fader) (source scolor) (dest scolor))
  (IGUIInOutFader_setColor (ff-pointer self) source dest))

(cl:defmethod fade-in ((self iguiin-out-fader) (time cl:integer))
  (IGUIInOutFader_fadeIn (ff-pointer self) time))

(cl:defmethod fade-out ((self iguiin-out-fader) (time cl:integer))
  (IGUIInOutFader_fadeOut (ff-pointer self) time))

(cl:defmethod is-ready ((self iguiin-out-fader))
  (IGUIInOutFader_isReady (ff-pointer self)))


(cl:defclass iguilist-box(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-item-count ((self iguilist-box))
  (IGUIListBox_getItemCount (ff-pointer self)))

(cl:defmethod get-list-item ((self iguilist-box) (id cl:integer))
  (IGUIListBox_getListItem (ff-pointer self) id))

(cl:defmethod add-item ((self iguilist-box) text)
  (IGUIListBox_addItem (ff-pointer self) text))

(cl:defmethod add-item ((self iguilist-box) text (icon cl:integer))
  (IGUIListBox_addItem (ff-pointer self) text icon))

(cl:defmethod remove-item ((self iguilist-box) (index cl:integer))
  (IGUIListBox_removeItem (ff-pointer self) index))

(cl:defmethod get-item-at ((self iguilist-box) (xpos cl:integer) (ypos cl:integer))
  (IGUIListBox_getItemAt (ff-pointer self) xpos ypos))

(cl:defmethod get-icon ((self iguilist-box) (index cl:integer))
  (IGUIListBox_getIcon (ff-pointer self) index))

(cl:defmethod set-sprite-bank ((self iguilist-box) bank)
  (IGUIListBox_setSpriteBank (ff-pointer self) bank))

(cl:defmethod clear ((self iguilist-box))
  (IGUIListBox_clear (ff-pointer self)))

(cl:defmethod get-selected ((self iguilist-box))
  (IGUIListBox_getSelected (ff-pointer self)))

(cl:defmethod set-selected ((self iguilist-box) (index cl:integer))
  (IGUIListBox_setSelected (ff-pointer self) index))

(cl:defmethod set-selected ((self iguilist-box) item)
  (IGUIListBox_setSelected (ff-pointer self) item))

(cl:defmethod set-auto-scroll-enabled ((self iguilist-box) (scroll t))
  (IGUIListBox_setAutoScrollEnabled (ff-pointer self) scroll))

(cl:defmethod is-auto-scroll-enabled ((self iguilist-box))
  (IGUIListBox_isAutoScrollEnabled (ff-pointer self)))

(cl:defmethod set-item-override-color ((self iguilist-box) (index cl:integer) (color scolor))
  (IGUIListBox_setItemOverrideColor (ff-pointer self) index color))

(cl:defmethod set-item-override-color ((self iguilist-box) (index cl:integer) (colorType cl:integer) (color scolor))
  (IGUIListBox_setItemOverrideColor (ff-pointer self) index colorType color))

(cl:defmethod clear-item-override-color ((self iguilist-box) (index cl:integer))
  (IGUIListBox_clearItemOverrideColor (ff-pointer self) index))

(cl:defmethod clear-item-override-color ((self iguilist-box) (index cl:integer) (colorType cl:integer))
  (IGUIListBox_clearItemOverrideColor (ff-pointer self) index colorType))

(cl:defmethod has-item-override-color ((self iguilist-box) (index cl:integer) (colorType cl:integer))
  (IGUIListBox_hasItemOverrideColor (ff-pointer self) index colorType))

(cl:defmethod get-item-override-color ((self iguilist-box) (index cl:integer) (colorType cl:integer))
  (IGUIListBox_getItemOverrideColor (ff-pointer self) index colorType))

(cl:defmethod get-item-default-color ((self iguilist-box) (colorType cl:integer))
  (IGUIListBox_getItemDefaultColor (ff-pointer self) colorType))

(cl:defmethod set-item ((self iguilist-box) (index cl:integer) text (icon cl:integer))
  (IGUIListBox_setItem (ff-pointer self) index text icon))

(cl:defmethod insert-item ((self iguilist-box) (index cl:integer) text (icon cl:integer))
  (IGUIListBox_insertItem (ff-pointer self) index text icon))

(cl:defmethod swap-items ((self iguilist-box) (index1 cl:integer) (index2 cl:integer))
  (IGUIListBox_swapItems (ff-pointer self) index1 index2))

(cl:defmethod set-item-height ((self iguilist-box) (height cl:integer))
  (IGUIListBox_setItemHeight (ff-pointer self) height))

(cl:defmethod set-draw-background ((self iguilist-box) (draw t))
  (IGUIListBox_setDrawBackground (ff-pointer self) draw))


(cl:defclass iguimesh-viewer(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-mesh ((self iguimesh-viewer) (mesh ianimated-mesh))
  (IGUIMeshViewer_setMesh (ff-pointer self) mesh))

(cl:defmethod get-mesh ((self iguimesh-viewer))
  (IGUIMeshViewer_getMesh (ff-pointer self)))

(cl:defmethod set-material ((self iguimesh-viewer) (material smaterial))
  (IGUIMeshViewer_setMaterial (ff-pointer self) material))

(cl:defmethod get-material ((self iguimesh-viewer))
  (IGUIMeshViewer_getMaterial (ff-pointer self)))


(cl:defclass iguiscroll-bar(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-max ((self iguiscroll-bar) (max cl:integer))
  (IGUIScrollBar_setMax (ff-pointer self) max))

(cl:defmethod get-max ((self iguiscroll-bar))
  (IGUIScrollBar_getMax (ff-pointer self)))

(cl:defmethod set-min ((self iguiscroll-bar) (min cl:integer))
  (IGUIScrollBar_setMin (ff-pointer self) min))

(cl:defmethod get-min ((self iguiscroll-bar))
  (IGUIScrollBar_getMin (ff-pointer self)))

(cl:defmethod get-small-step ((self iguiscroll-bar))
  (IGUIScrollBar_getSmallStep (ff-pointer self)))

(cl:defmethod set-small-step ((self iguiscroll-bar) (step cl:integer))
  (IGUIScrollBar_setSmallStep (ff-pointer self) step))

(cl:defmethod get-large-step ((self iguiscroll-bar))
  (IGUIScrollBar_getLargeStep (ff-pointer self)))

(cl:defmethod set-large-step ((self iguiscroll-bar) (step cl:integer))
  (IGUIScrollBar_setLargeStep (ff-pointer self) step))

(cl:defmethod get-pos ((self iguiscroll-bar))
  (IGUIScrollBar_getPos (ff-pointer self)))

(cl:defmethod set-pos ((self iguiscroll-bar) (pos cl:integer))
  (IGUIScrollBar_setPos (ff-pointer self) pos))


(cl:defclass iguispin-box(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-edit-box ((self iguispin-box))
  (IGUISpinBox_getEditBox (ff-pointer self)))

(cl:defmethod set-value ((self iguispin-box) (val cl:number))
  (IGUISpinBox_setValue (ff-pointer self) val))

(cl:defmethod get-value ((self iguispin-box))
  (IGUISpinBox_getValue (ff-pointer self)))

(cl:defmethod set-range ((self iguispin-box) (min cl:number) (max cl:number))
  (IGUISpinBox_setRange (ff-pointer self) min max))

(cl:defmethod get-min ((self iguispin-box))
  (IGUISpinBox_getMin (ff-pointer self)))

(cl:defmethod get-max ((self iguispin-box))
  (IGUISpinBox_getMax (ff-pointer self)))

(cl:defmethod set-step-size ((self iguispin-box) (step cl:number))
  (IGUISpinBox_setStepSize (ff-pointer self) step))

(cl:defmethod set-step-size ((self iguispin-box))
  (IGUISpinBox_setStepSize (ff-pointer self)))

(cl:defmethod set-decimal-places ((self iguispin-box) (places cl:integer))
  (IGUISpinBox_setDecimalPlaces (ff-pointer self) places))

(cl:defmethod get-step-size ((self iguispin-box))
  (IGUISpinBox_getStepSize (ff-pointer self)))


(cl:defclass iguisprite-bank(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-positions ((self iguisprite-bank))
  (IGUISpriteBank_getPositions (ff-pointer self)))

(cl:defmethod get-sprites ((self iguisprite-bank))
  (IGUISpriteBank_getSprites (ff-pointer self)))

(cl:defmethod get-texture-count ((self iguisprite-bank))
  (IGUISpriteBank_getTextureCount (ff-pointer self)))

(cl:defmethod get-texture ((self iguisprite-bank) (index cl:integer))
  (IGUISpriteBank_getTexture (ff-pointer self) index))

(cl:defmethod add-texture ((self iguisprite-bank) (texture itexture))
  (IGUISpriteBank_addTexture (ff-pointer self) texture))

(cl:defmethod set-texture ((self iguisprite-bank) (index cl:integer) (texture itexture))
  (IGUISpriteBank_setTexture (ff-pointer self) index texture))

(cl:defmethod add-texture-as-sprite ((self iguisprite-bank) (texture itexture))
  (IGUISpriteBank_addTextureAsSprite (ff-pointer self) texture))

(cl:defmethod clear ((self iguisprite-bank))
  (IGUISpriteBank_clear (ff-pointer self)))

(cl:defmethod draw2-dsprite ((self iguisprite-bank) (index cl:integer) pos clip (color scolor) (starttime cl:integer) (currenttime cl:integer) (loop t) (center t))
  (IGUISpriteBank_draw2DSprite (ff-pointer self) index pos clip color starttime currenttime loop center))

(cl:defmethod draw2-dsprite ((self iguisprite-bank) (index cl:integer) pos clip (color scolor) (starttime cl:integer) (currenttime cl:integer) (loop t))
  (IGUISpriteBank_draw2DSprite (ff-pointer self) index pos clip color starttime currenttime loop))

(cl:defmethod draw2-dsprite ((self iguisprite-bank) (index cl:integer) pos clip (color scolor) (starttime cl:integer) (currenttime cl:integer))
  (IGUISpriteBank_draw2DSprite (ff-pointer self) index pos clip color starttime currenttime))

(cl:defmethod draw2-dsprite ((self iguisprite-bank) (index cl:integer) pos clip (color scolor) (starttime cl:integer))
  (IGUISpriteBank_draw2DSprite (ff-pointer self) index pos clip color starttime))

(cl:defmethod draw2-dsprite ((self iguisprite-bank) (index cl:integer) pos clip (color scolor))
  (IGUISpriteBank_draw2DSprite (ff-pointer self) index pos clip color))

(cl:defmethod draw2-dsprite ((self iguisprite-bank) (index cl:integer) pos clip)
  (IGUISpriteBank_draw2DSprite (ff-pointer self) index pos clip))

(cl:defmethod draw2-dsprite ((self iguisprite-bank) (index cl:integer) pos)
  (IGUISpriteBank_draw2DSprite (ff-pointer self) index pos))

(cl:defmethod draw2-dsprite-batch ((self iguisprite-bank) indices pos clip (color scolor) (starttime cl:integer) (currenttime cl:integer) (loop t) (center t))
  (IGUISpriteBank_draw2DSpriteBatch (ff-pointer self) indices pos clip color starttime currenttime loop center))

(cl:defmethod draw2-dsprite-batch ((self iguisprite-bank) indices pos clip (color scolor) (starttime cl:integer) (currenttime cl:integer) (loop t))
  (IGUISpriteBank_draw2DSpriteBatch (ff-pointer self) indices pos clip color starttime currenttime loop))

(cl:defmethod draw2-dsprite-batch ((self iguisprite-bank) indices pos clip (color scolor) (starttime cl:integer) (currenttime cl:integer))
  (IGUISpriteBank_draw2DSpriteBatch (ff-pointer self) indices pos clip color starttime currenttime))

(cl:defmethod draw2-dsprite-batch ((self iguisprite-bank) indices pos clip (color scolor) (starttime cl:integer))
  (IGUISpriteBank_draw2DSpriteBatch (ff-pointer self) indices pos clip color starttime))

(cl:defmethod draw2-dsprite-batch ((self iguisprite-bank) indices pos clip (color scolor))
  (IGUISpriteBank_draw2DSpriteBatch (ff-pointer self) indices pos clip color))

(cl:defmethod draw2-dsprite-batch ((self iguisprite-bank) indices pos clip)
  (IGUISpriteBank_draw2DSpriteBatch (ff-pointer self) indices pos clip))

(cl:defmethod draw2-dsprite-batch ((self iguisprite-bank) indices pos)
  (IGUISpriteBank_draw2DSpriteBatch (ff-pointer self) indices pos))


(cl:defclass iguistatic-text(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-override-font ((self iguistatic-text) (font iguifont))
  (IGUIStaticText_setOverrideFont (ff-pointer self) font))

(cl:defmethod set-override-font ((self iguistatic-text))
  (IGUIStaticText_setOverrideFont (ff-pointer self)))

(cl:defmethod get-override-font ((self iguistatic-text))
  (IGUIStaticText_getOverrideFont (ff-pointer self)))

(cl:defmethod get-active-font ((self iguistatic-text))
  (IGUIStaticText_getActiveFont (ff-pointer self)))

(cl:defmethod set-override-color ((self iguistatic-text) (color scolor))
  (IGUIStaticText_setOverrideColor (ff-pointer self) color))

(cl:defmethod get-override-color ((self iguistatic-text))
  (IGUIStaticText_getOverrideColor (ff-pointer self)))

(cl:defmethod enable-override-color ((self iguistatic-text) (enable t))
  (IGUIStaticText_enableOverrideColor (ff-pointer self) enable))

(cl:defmethod is-override-color-enabled ((self iguistatic-text))
  (IGUIStaticText_isOverrideColorEnabled (ff-pointer self)))

(cl:defmethod set-background-color ((self iguistatic-text) (color scolor))
  (IGUIStaticText_setBackgroundColor (ff-pointer self) color))

(cl:defmethod set-draw-background ((self iguistatic-text) (draw t))
  (IGUIStaticText_setDrawBackground (ff-pointer self) draw))

(cl:defmethod get-background-color ((self iguistatic-text))
  (IGUIStaticText_getBackgroundColor (ff-pointer self)))

(cl:defmethod is-draw-background-enabled ((self iguistatic-text))
  (IGUIStaticText_isDrawBackgroundEnabled (ff-pointer self)))

(cl:defmethod set-draw-border ((self iguistatic-text) (draw t))
  (IGUIStaticText_setDrawBorder (ff-pointer self) draw))

(cl:defmethod is-draw-border-enabled ((self iguistatic-text))
  (IGUIStaticText_isDrawBorderEnabled (ff-pointer self)))

(cl:defmethod set-text-alignment ((self iguistatic-text) (horizontal cl:integer) (vertical cl:integer))
  (IGUIStaticText_setTextAlignment (ff-pointer self) horizontal vertical))

(cl:defmethod set-word-wrap ((self iguistatic-text) (enable t))
  (IGUIStaticText_setWordWrap (ff-pointer self) enable))

(cl:defmethod is-word-wrap-enabled ((self iguistatic-text))
  (IGUIStaticText_isWordWrapEnabled (ff-pointer self)))

(cl:defmethod get-text-height ((self iguistatic-text))
  (IGUIStaticText_getTextHeight (ff-pointer self)))

(cl:defmethod get-text-width ((self iguistatic-text))
  (IGUIStaticText_getTextWidth (ff-pointer self)))

(cl:defmethod set-text-restrained-inside ((self iguistatic-text) (restrainedInside t))
  (IGUIStaticText_setTextRestrainedInside (ff-pointer self) restrainedInside))

(cl:defmethod is-text-restrained-inside ((self iguistatic-text))
  (IGUIStaticText_isTextRestrainedInside (ff-pointer self)))

(cl:defmethod set-right-to-left ((self iguistatic-text) (rtl t))
  (IGUIStaticText_setRightToLeft (ff-pointer self) rtl))

(cl:defmethod is-right-to-left ((self iguistatic-text))
  (IGUIStaticText_isRightToLeft (ff-pointer self)))


(cl:defclass iguitab(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-number ((self iguitab))
  (IGUITab_getNumber (ff-pointer self)))

(cl:defmethod set-draw-background ((self iguitab) (draw t))
  (IGUITab_setDrawBackground (ff-pointer self) draw))

(cl:defmethod set-draw-background ((self iguitab))
  (IGUITab_setDrawBackground (ff-pointer self)))

(cl:defmethod set-background-color ((self iguitab) (c scolor))
  (IGUITab_setBackgroundColor (ff-pointer self) c))

(cl:defmethod is-drawing-background ((self iguitab))
  (IGUITab_isDrawingBackground (ff-pointer self)))

(cl:defmethod get-background-color ((self iguitab))
  (IGUITab_getBackgroundColor (ff-pointer self)))

(cl:defmethod set-text-color ((self iguitab) (c scolor))
  (IGUITab_setTextColor (ff-pointer self) c))

(cl:defmethod get-text-color ((self iguitab))
  (IGUITab_getTextColor (ff-pointer self)))


(cl:defclass iguitab-control(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod add-tab ((self iguitab-control) caption (id cl:integer))
  (IGUITabControl_addTab (ff-pointer self) caption id))

(cl:defmethod add-tab ((self iguitab-control) caption)
  (IGUITabControl_addTab (ff-pointer self) caption))

(cl:defmethod insert-tab ((self iguitab-control) (idx cl:integer) caption (id cl:integer))
  (IGUITabControl_insertTab (ff-pointer self) idx caption id))

(cl:defmethod insert-tab ((self iguitab-control) (idx cl:integer) caption)
  (IGUITabControl_insertTab (ff-pointer self) idx caption))

(cl:defmethod remove-tab ((self iguitab-control) (idx cl:integer))
  (IGUITabControl_removeTab (ff-pointer self) idx))

(cl:defmethod clear ((self iguitab-control))
  (IGUITabControl_clear (ff-pointer self)))

(cl:defmethod get-tab-count ((self iguitab-control))
  (IGUITabControl_getTabCount (ff-pointer self)))

(cl:defmethod get-tab ((self iguitab-control) (idx cl:integer))
  (IGUITabControl_getTab (ff-pointer self) idx))

(cl:defmethod set-active-tab ((self iguitab-control) (idx cl:integer))
  (IGUITabControl_setActiveTab (ff-pointer self) idx))

(cl:defmethod set-active-tab ((self iguitab-control) (tab iguitab))
  (IGUITabControl_setActiveTab (ff-pointer self) tab))

(cl:defmethod get-active-tab ((self iguitab-control))
  (IGUITabControl_getActiveTab (ff-pointer self)))

(cl:defmethod get-tab-at ((self iguitab-control) (xpos cl:integer) (ypos cl:integer))
  (IGUITabControl_getTabAt (ff-pointer self) xpos ypos))

(cl:defmethod set-tab-height ((self iguitab-control) (height cl:integer))
  (IGUITabControl_setTabHeight (ff-pointer self) height))

(cl:defmethod get-tab-height ((self iguitab-control))
  (IGUITabControl_getTabHeight (ff-pointer self)))

(cl:defmethod set-tab-max-width ((self iguitab-control) (width cl:integer))
  (IGUITabControl_setTabMaxWidth (ff-pointer self) width))

(cl:defmethod get-tab-max-width ((self iguitab-control))
  (IGUITabControl_getTabMaxWidth (ff-pointer self)))

(cl:defmethod set-tab-vertical-alignment ((self iguitab-control) (alignment cl:integer))
  (IGUITabControl_setTabVerticalAlignment (ff-pointer self) alignment))

(cl:defmethod get-tab-vertical-alignment ((self iguitab-control))
  (IGUITabControl_getTabVerticalAlignment (ff-pointer self)))

(cl:defmethod set-tab-extra-width ((self iguitab-control) (extraWidth cl:integer))
  (IGUITabControl_setTabExtraWidth (ff-pointer self) extraWidth))

(cl:defmethod get-tab-extra-width ((self iguitab-control))
  (IGUITabControl_getTabExtraWidth (ff-pointer self)))


(cl:defclass iguitable(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod add-column ((self iguitable) caption (columnIndex cl:integer))
  (IGUITable_addColumn (ff-pointer self) caption columnIndex))

(cl:defmethod add-column ((self iguitable) caption)
  (IGUITable_addColumn (ff-pointer self) caption))

(cl:defmethod remove-column ((self iguitable) (columnIndex cl:integer))
  (IGUITable_removeColumn (ff-pointer self) columnIndex))

(cl:defmethod get-column-count ((self iguitable))
  (IGUITable_getColumnCount (ff-pointer self)))

(cl:defmethod set-active-column ((self iguitable) (idx cl:integer) (doOrder t))
  (IGUITable_setActiveColumn (ff-pointer self) idx doOrder))

(cl:defmethod set-active-column ((self iguitable) (idx cl:integer))
  (IGUITable_setActiveColumn (ff-pointer self) idx))

(cl:defmethod get-active-column ((self iguitable))
  (IGUITable_getActiveColumn (ff-pointer self)))

(cl:defmethod get-active-column-ordering ((self iguitable))
  (IGUITable_getActiveColumnOrdering (ff-pointer self)))

(cl:defmethod set-column-width ((self iguitable) (columnIndex cl:integer) (width cl:integer))
  (IGUITable_setColumnWidth (ff-pointer self) columnIndex width))

(cl:defmethod get-column-width ((self iguitable) (columnIndex cl:integer))
  (IGUITable_getColumnWidth (ff-pointer self) columnIndex))

(cl:defmethod set-resizable-columns ((self iguitable) (resizable t))
  (IGUITable_setResizableColumns (ff-pointer self) resizable))

(cl:defmethod has-resizable-columns ((self iguitable))
  (IGUITable_hasResizableColumns (ff-pointer self)))

(cl:defmethod set-column-ordering ((self iguitable) (columnIndex cl:integer) (mode cl:integer))
  (IGUITable_setColumnOrdering (ff-pointer self) columnIndex mode))

(cl:defmethod get-selected ((self iguitable))
  (IGUITable_getSelected (ff-pointer self)))

(cl:defmethod set-selected ((self iguitable) (index cl:integer))
  (IGUITable_setSelected (ff-pointer self) index))

(cl:defmethod get-row-count ((self iguitable))
  (IGUITable_getRowCount (ff-pointer self)))

(cl:defmethod add-row ((self iguitable) (rowIndex cl:integer))
  (IGUITable_addRow (ff-pointer self) rowIndex))

(cl:defmethod remove-row ((self iguitable) (rowIndex cl:integer))
  (IGUITable_removeRow (ff-pointer self) rowIndex))

(cl:defmethod clear-rows ((self iguitable))
  (IGUITable_clearRows (ff-pointer self)))

(cl:defmethod swap-rows ((self iguitable) (rowIndexA cl:integer) (rowIndexB cl:integer))
  (IGUITable_swapRows (ff-pointer self) rowIndexA rowIndexB))

(cl:defmethod order-rows ((self iguitable) (columnIndex cl:integer) (mode cl:integer))
  (IGUITable_orderRows (ff-pointer self) columnIndex mode))

(cl:defmethod order-rows ((self iguitable) (columnIndex cl:integer))
  (IGUITable_orderRows (ff-pointer self) columnIndex))

(cl:defmethod order-rows ((self iguitable))
  (IGUITable_orderRows (ff-pointer self)))

(cl:defmethod set-cell-text ((self iguitable) (rowIndex cl:integer) (columnIndex cl:integer) text)
  (IGUITable_setCellText (ff-pointer self) rowIndex columnIndex text))

(cl:defmethod set-cell-text ((self iguitable) (rowIndex cl:integer) (columnIndex cl:integer) text (color scolor))
  (IGUITable_setCellText (ff-pointer self) rowIndex columnIndex text color))

(cl:defmethod set-cell-data ((self iguitable) (rowIndex cl:integer) (columnIndex cl:integer) data)
  (IGUITable_setCellData (ff-pointer self) rowIndex columnIndex data))

(cl:defmethod set-cell-color ((self iguitable) (rowIndex cl:integer) (columnIndex cl:integer) (color scolor))
  (IGUITable_setCellColor (ff-pointer self) rowIndex columnIndex color))

(cl:defmethod get-cell-text ((self iguitable) (rowIndex cl:integer) (columnIndex cl:integer))
  (IGUITable_getCellText (ff-pointer self) rowIndex columnIndex))

(cl:defmethod get-cell-data ((self iguitable) (rowIndex cl:integer) (columnIndex cl:integer))
  (IGUITable_getCellData (ff-pointer self) rowIndex columnIndex))

(cl:defmethod clear ((self iguitable))
  (IGUITable_clear (ff-pointer self)))

(cl:defmethod set-draw-flags ((self iguitable) (flags cl:integer))
  (IGUITable_setDrawFlags (ff-pointer self) flags))

(cl:defmethod get-draw-flags ((self iguitable))
  (IGUITable_getDrawFlags (ff-pointer self)))


(cl:defclass iguitool-bar(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod add-button ((self iguitool-bar) (id cl:integer) text tooltiptext (img itexture) (pressedimg itexture) (isPushButton t) (useAlphaChannel t))
  (IGUIToolBar_addButton (ff-pointer self) id text tooltiptext img pressedimg isPushButton useAlphaChannel))

(cl:defmethod add-button ((self iguitool-bar) (id cl:integer) text tooltiptext (img itexture) (pressedimg itexture) (isPushButton t))
  (IGUIToolBar_addButton (ff-pointer self) id text tooltiptext img pressedimg isPushButton))

(cl:defmethod add-button ((self iguitool-bar) (id cl:integer) text tooltiptext (img itexture) (pressedimg itexture))
  (IGUIToolBar_addButton (ff-pointer self) id text tooltiptext img pressedimg))

(cl:defmethod add-button ((self iguitool-bar) (id cl:integer) text tooltiptext (img itexture))
  (IGUIToolBar_addButton (ff-pointer self) id text tooltiptext img))

(cl:defmethod add-button ((self iguitool-bar) (id cl:integer) text tooltiptext)
  (IGUIToolBar_addButton (ff-pointer self) id text tooltiptext))

(cl:defmethod add-button ((self iguitool-bar) (id cl:integer) text)
  (IGUIToolBar_addButton (ff-pointer self) id text))

(cl:defmethod add-button ((self iguitool-bar) (id cl:integer))
  (IGUIToolBar_addButton (ff-pointer self) id))

(cl:defmethod add-button ((self iguitool-bar))
  (IGUIToolBar_addButton (ff-pointer self)))


(cl:defclass iguiwindow(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-close-button ((self iguiwindow))
  (IGUIWindow_getCloseButton (ff-pointer self)))

(cl:defmethod get-minimize-button ((self iguiwindow))
  (IGUIWindow_getMinimizeButton (ff-pointer self)))

(cl:defmethod get-maximize-button ((self iguiwindow))
  (IGUIWindow_getMaximizeButton (ff-pointer self)))

(cl:defmethod is-draggable ((self iguiwindow))
  (IGUIWindow_isDraggable (ff-pointer self)))

(cl:defmethod set-draggable ((self iguiwindow) (draggable t))
  (IGUIWindow_setDraggable (ff-pointer self) draggable))

(cl:defmethod set-draw-background ((self iguiwindow) (draw t))
  (IGUIWindow_setDrawBackground (ff-pointer self) draw))

(cl:defmethod get-draw-background ((self iguiwindow))
  (IGUIWindow_getDrawBackground (ff-pointer self)))

(cl:defmethod set-draw-titlebar ((self iguiwindow) (draw t))
  (IGUIWindow_setDrawTitlebar (ff-pointer self) draw))

(cl:defmethod get-draw-titlebar ((self iguiwindow))
  (IGUIWindow_getDrawTitlebar (ff-pointer self)))

(cl:defmethod get-client-rect ((self iguiwindow))
  (IGUIWindow_getClientRect (ff-pointer self)))


(cl:defclass iguiimage-list(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod draw ((self iguiimage-list) (index cl:integer) destPos clip)
  (IGUIImageList_draw (ff-pointer self) index destPos clip))

(cl:defmethod draw ((self iguiimage-list) (index cl:integer) destPos)
  (IGUIImageList_draw (ff-pointer self) index destPos))

(cl:defmethod get-image-count ((self iguiimage-list))
  (IGUIImageList_getImageCount (ff-pointer self)))

(cl:defmethod get-image-size ((self iguiimage-list))
  (IGUIImageList_getImageSize (ff-pointer self)))


(cl:defclass iguitree-view-node(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-owner ((self iguitree-view-node))
  (IGUITreeViewNode_getOwner (ff-pointer self)))

(cl:defmethod get-parent ((self iguitree-view-node))
  (IGUITreeViewNode_getParent (ff-pointer self)))

(cl:defmethod get-text ((self iguitree-view-node))
  (IGUITreeViewNode_getText (ff-pointer self)))

(cl:defmethod set-text ((self iguitree-view-node) text)
  (IGUITreeViewNode_setText (ff-pointer self) text))

(cl:defmethod get-icon ((self iguitree-view-node))
  (IGUITreeViewNode_getIcon (ff-pointer self)))

(cl:defmethod set-icon ((self iguitree-view-node) icon)
  (IGUITreeViewNode_setIcon (ff-pointer self) icon))

(cl:defmethod get-image-index ((self iguitree-view-node))
  (IGUITreeViewNode_getImageIndex (ff-pointer self)))

(cl:defmethod set-image-index ((self iguitree-view-node) (imageIndex cl:integer))
  (IGUITreeViewNode_setImageIndex (ff-pointer self) imageIndex))

(cl:defmethod get-selected-image-index ((self iguitree-view-node))
  (IGUITreeViewNode_getSelectedImageIndex (ff-pointer self)))

(cl:defmethod set-selected-image-index ((self iguitree-view-node) (imageIndex cl:integer))
  (IGUITreeViewNode_setSelectedImageIndex (ff-pointer self) imageIndex))

(cl:defmethod get-data ((self iguitree-view-node))
  (IGUITreeViewNode_getData (ff-pointer self)))

(cl:defmethod set-data ((self iguitree-view-node) data)
  (IGUITreeViewNode_setData (ff-pointer self) data))

(cl:defmethod get-data2 ((self iguitree-view-node))
  (IGUITreeViewNode_getData2 (ff-pointer self)))

(cl:defmethod set-data2 ((self iguitree-view-node) (data ireference-counted))
  (IGUITreeViewNode_setData2 (ff-pointer self) data))

(cl:defmethod get-child-count ((self iguitree-view-node))
  (IGUITreeViewNode_getChildCount (ff-pointer self)))

(cl:defmethod clear-children ((self iguitree-view-node))
  (IGUITreeViewNode_clearChildren (ff-pointer self)))

(cl:defmethod clear-childs ((self iguitree-view-node))
  (IGUITreeViewNode_clearChilds (ff-pointer self)))

(cl:defmethod has-children ((self iguitree-view-node))
  (IGUITreeViewNode_hasChildren (ff-pointer self)))

(cl:defmethod has-childs ((self iguitree-view-node))
  (IGUITreeViewNode_hasChilds (ff-pointer self)))

(cl:defmethod add-child-back ((self iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer) data (data2 ireference-counted))
  (IGUITreeViewNode_addChildBack (ff-pointer self) text icon imageIndex selectedImageIndex data data2))

(cl:defmethod add-child-back ((self iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer) data)
  (IGUITreeViewNode_addChildBack (ff-pointer self) text icon imageIndex selectedImageIndex data))

(cl:defmethod add-child-back ((self iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer))
  (IGUITreeViewNode_addChildBack (ff-pointer self) text icon imageIndex selectedImageIndex))

(cl:defmethod add-child-back ((self iguitree-view-node) text icon (imageIndex cl:integer))
  (IGUITreeViewNode_addChildBack (ff-pointer self) text icon imageIndex))

(cl:defmethod add-child-back ((self iguitree-view-node) text icon)
  (IGUITreeViewNode_addChildBack (ff-pointer self) text icon))

(cl:defmethod add-child-back ((self iguitree-view-node) text)
  (IGUITreeViewNode_addChildBack (ff-pointer self) text))

(cl:defmethod add-child-front ((self iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer) data (data2 ireference-counted))
  (IGUITreeViewNode_addChildFront (ff-pointer self) text icon imageIndex selectedImageIndex data data2))

(cl:defmethod add-child-front ((self iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer) data)
  (IGUITreeViewNode_addChildFront (ff-pointer self) text icon imageIndex selectedImageIndex data))

(cl:defmethod add-child-front ((self iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer))
  (IGUITreeViewNode_addChildFront (ff-pointer self) text icon imageIndex selectedImageIndex))

(cl:defmethod add-child-front ((self iguitree-view-node) text icon (imageIndex cl:integer))
  (IGUITreeViewNode_addChildFront (ff-pointer self) text icon imageIndex))

(cl:defmethod add-child-front ((self iguitree-view-node) text icon)
  (IGUITreeViewNode_addChildFront (ff-pointer self) text icon))

(cl:defmethod add-child-front ((self iguitree-view-node) text)
  (IGUITreeViewNode_addChildFront (ff-pointer self) text))

(cl:defmethod insert-child-after ((self iguitree-view-node) (other iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer) data (data2 ireference-counted))
  (IGUITreeViewNode_insertChildAfter (ff-pointer self) (ff-pointer other) text icon imageIndex selectedImageIndex data data2))

(cl:defmethod insert-child-after ((self iguitree-view-node) (other iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer) data)
  (IGUITreeViewNode_insertChildAfter (ff-pointer self) (ff-pointer other) text icon imageIndex selectedImageIndex data))

(cl:defmethod insert-child-after ((self iguitree-view-node) (other iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer))
  (IGUITreeViewNode_insertChildAfter (ff-pointer self) (ff-pointer other) text icon imageIndex selectedImageIndex))

(cl:defmethod insert-child-after ((self iguitree-view-node) (other iguitree-view-node) text icon (imageIndex cl:integer))
  (IGUITreeViewNode_insertChildAfter (ff-pointer self) (ff-pointer other) text icon imageIndex))

(cl:defmethod insert-child-after ((self iguitree-view-node) (other iguitree-view-node) text icon)
  (IGUITreeViewNode_insertChildAfter (ff-pointer self) (ff-pointer other) text icon))

(cl:defmethod insert-child-after ((self iguitree-view-node) (other iguitree-view-node) text)
  (IGUITreeViewNode_insertChildAfter (ff-pointer self) (ff-pointer other) text))

(cl:defmethod insert-child-before ((self iguitree-view-node) (other iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer) data (data2 ireference-counted))
  (IGUITreeViewNode_insertChildBefore (ff-pointer self) (ff-pointer other) text icon imageIndex selectedImageIndex data data2))

(cl:defmethod insert-child-before ((self iguitree-view-node) (other iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer) data)
  (IGUITreeViewNode_insertChildBefore (ff-pointer self) (ff-pointer other) text icon imageIndex selectedImageIndex data))

(cl:defmethod insert-child-before ((self iguitree-view-node) (other iguitree-view-node) text icon (imageIndex cl:integer) (selectedImageIndex cl:integer))
  (IGUITreeViewNode_insertChildBefore (ff-pointer self) (ff-pointer other) text icon imageIndex selectedImageIndex))

(cl:defmethod insert-child-before ((self iguitree-view-node) (other iguitree-view-node) text icon (imageIndex cl:integer))
  (IGUITreeViewNode_insertChildBefore (ff-pointer self) (ff-pointer other) text icon imageIndex))

(cl:defmethod insert-child-before ((self iguitree-view-node) (other iguitree-view-node) text icon)
  (IGUITreeViewNode_insertChildBefore (ff-pointer self) (ff-pointer other) text icon))

(cl:defmethod insert-child-before ((self iguitree-view-node) (other iguitree-view-node) text)
  (IGUITreeViewNode_insertChildBefore (ff-pointer self) (ff-pointer other) text))

(cl:defmethod get-first-child ((self iguitree-view-node))
  (IGUITreeViewNode_getFirstChild (ff-pointer self)))

(cl:defmethod get-last-child ((self iguitree-view-node))
  (IGUITreeViewNode_getLastChild (ff-pointer self)))

(cl:defmethod get-prev-sibling ((self iguitree-view-node))
  (IGUITreeViewNode_getPrevSibling (ff-pointer self)))

(cl:defmethod get-next-sibling ((self iguitree-view-node))
  (IGUITreeViewNode_getNextSibling (ff-pointer self)))

(cl:defmethod get-next-visible ((self iguitree-view-node))
  (IGUITreeViewNode_getNextVisible (ff-pointer self)))

(cl:defmethod delete-child ((self iguitree-view-node) (child iguitree-view-node))
  (IGUITreeViewNode_deleteChild (ff-pointer self) (ff-pointer child)))

(cl:defmethod move-child-up ((self iguitree-view-node) (child iguitree-view-node))
  (IGUITreeViewNode_moveChildUp (ff-pointer self) (ff-pointer child)))

(cl:defmethod move-child-down ((self iguitree-view-node) (child iguitree-view-node))
  (IGUITreeViewNode_moveChildDown (ff-pointer self) (ff-pointer child)))

(cl:defmethod get-expanded ((self iguitree-view-node))
  (IGUITreeViewNode_getExpanded (ff-pointer self)))

(cl:defmethod set-expanded ((self iguitree-view-node) (expanded t))
  (IGUITreeViewNode_setExpanded (ff-pointer self) expanded))

(cl:defmethod get-selected ((self iguitree-view-node))
  (IGUITreeViewNode_getSelected (ff-pointer self)))

(cl:defmethod set-selected ((self iguitree-view-node) (selected t))
  (IGUITreeViewNode_setSelected (ff-pointer self) selected))

(cl:defmethod is-root ((self iguitree-view-node))
  (IGUITreeViewNode_isRoot (ff-pointer self)))

(cl:defmethod get-level ((self iguitree-view-node))
  (IGUITreeViewNode_getLevel (ff-pointer self)))

(cl:defmethod is-visible ((self iguitree-view-node))
  (IGUITreeViewNode_isVisible (ff-pointer self)))


(cl:defclass iguitree-view(irr::gui::-iguielement)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-root ((self iguitree-view))
  (IGUITreeView_getRoot (ff-pointer self)))

(cl:defmethod get-selected ((self iguitree-view))
  (IGUITreeView_getSelected (ff-pointer self)))

(cl:defmethod get-lines-visible ((self iguitree-view))
  (IGUITreeView_getLinesVisible (ff-pointer self)))

(cl:defmethod set-lines-visible ((self iguitree-view) (visible t))
  (IGUITreeView_setLinesVisible (ff-pointer self) visible))

(cl:defmethod set-icon-font ((self iguitree-view) (font iguifont))
  (IGUITreeView_setIconFont (ff-pointer self) font))

(cl:defmethod set-image-list ((self iguitree-view) (imageList iguiimage-list))
  (IGUITreeView_setImageList (ff-pointer self) imageList))

(cl:defmethod get-image-list ((self iguitree-view))
  (IGUITreeView_getImageList (ff-pointer self)))

(cl:defmethod set-image-left-of-icon ((self iguitree-view) (bLeftOf t))
  (IGUITreeView_setImageLeftOfIcon (ff-pointer self) bLeftOf))

(cl:defmethod get-image-left-of-icon ((self iguitree-view))
  (IGUITreeView_getImageLeftOfIcon (ff-pointer self)))

(cl:defmethod get-last-event-node ((self iguitree-view))
  (IGUITreeView_getLastEventNode (ff-pointer self)))


(cl:defclass iimage-loader(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod is-aloadable-file-extension ((self iimage-loader) filename)
  (IImageLoader_isALoadableFileExtension (ff-pointer self) filename))

(cl:defmethod is-aloadable-file-format ((self iimage-loader) (file iread-file))
  (IImageLoader_isALoadableFileFormat (ff-pointer self) file))

(cl:defmethod load-image ((self iimage-loader) (file iread-file))
  (IImageLoader_loadImage (ff-pointer self) file))


(cl:defclass iimage-writer(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod is-awriteable-file-extension ((self iimage-writer) filename)
  (IImageWriter_isAWriteableFileExtension (ff-pointer self) filename))

(cl:defmethod write-image ((self iimage-writer) file (image iimage) (param cl:integer))
  (IImageWriter_writeImage (ff-pointer self) file image param))

(cl:defmethod write-image ((self iimage-writer) file (image iimage))
  (IImageWriter_writeImage (ff-pointer self) file image))


(cl:defclass ilight-scene-node(irr::scene::-iscene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-light-data ((self ilight-scene-node) light)
  (ILightSceneNode_setLightData (ff-pointer self) light))

(cl:defmethod get-light-data ((self ilight-scene-node))
  (ILightSceneNode_getLightData (ff-pointer self)))

(cl:defmethod get-light-data ((self ilight-scene-node))
  (ILightSceneNode_getLightData (ff-pointer self)))

(cl:defmethod set-radius ((self ilight-scene-node) (radius cl:number))
  (ILightSceneNode_setRadius (ff-pointer self) radius))

(cl:defmethod get-radius ((self ilight-scene-node))
  (ILightSceneNode_getRadius (ff-pointer self)))

(cl:defmethod set-light-type ((self ilight-scene-node) (type cl:integer))
  (ILightSceneNode_setLightType (ff-pointer self) type))

(cl:defmethod get-light-type ((self ilight-scene-node))
  (ILightSceneNode_getLightType (ff-pointer self)))

(cl:defmethod enable-cast-shadow ((self ilight-scene-node) (shadow t))
  (ILightSceneNode_enableCastShadow (ff-pointer self) shadow))

(cl:defmethod enable-cast-shadow ((self ilight-scene-node))
  (ILightSceneNode_enableCastShadow (ff-pointer self)))

(cl:defmethod get-cast-shadow ((self ilight-scene-node))
  (ILightSceneNode_getCastShadow (ff-pointer self)))


(cl:defclass imaterial-renderer(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod on-set-material ((self imaterial-renderer) (material smaterial) (lastMaterial smaterial) (resetAllRenderstates t) services)
  (IMaterialRenderer_OnSetMaterial (ff-pointer self) material lastMaterial resetAllRenderstates services))

(cl:defmethod on-render ((self imaterial-renderer) service (vtxtype cl:integer))
  (IMaterialRenderer_OnRender (ff-pointer self) service vtxtype))

(cl:defmethod on-unset-material ((self imaterial-renderer))
  (IMaterialRenderer_OnUnsetMaterial (ff-pointer self)))

(cl:defmethod is-transparent ((self imaterial-renderer))
  (IMaterialRenderer_isTransparent (ff-pointer self)))

(cl:defmethod get-render-capability ((self imaterial-renderer))
  (IMaterialRenderer_getRenderCapability (ff-pointer self)))

(cl:defmethod initialize-instance :after ((obj imaterial-renderer) &key)
  (setf (slot-value obj 'ff-pointer) (new_IMaterialRenderer)))


(cl:defclass imaterial-renderer-services()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-basic-render-states ((self imaterial-renderer-services) (material smaterial) (lastMaterial smaterial) (resetAllRenderstates t))
  (IMaterialRendererServices_setBasicRenderStates (ff-pointer self) material lastMaterial resetAllRenderstates))

(cl:defmethod set-vertex-shader-constant ((self imaterial-renderer-services) (name cl:string) floats (count cl:integer))
  (IMaterialRendererServices_setVertexShaderConstant (ff-pointer self) name floats count))

(cl:defmethod set-vertex-shader-constant ((self imaterial-renderer-services) (name cl:string) bools (count cl:integer))
  (IMaterialRendererServices_setVertexShaderConstant (ff-pointer self) name bools count))

(cl:defmethod set-vertex-shader-constant ((self imaterial-renderer-services) (name cl:string) ints (count cl:integer))
  (IMaterialRendererServices_setVertexShaderConstant (ff-pointer self) name ints count))

(cl:defmethod set-vertex-shader-constant ((self imaterial-renderer-services) data (startRegister cl:integer) (constantAmount cl:integer))
  (IMaterialRendererServices_setVertexShaderConstant (ff-pointer self) data startRegister constantAmount))

(cl:defmethod set-vertex-shader-constant ((self imaterial-renderer-services) data (startRegister cl:integer))
  (IMaterialRendererServices_setVertexShaderConstant (ff-pointer self) data startRegister))

(cl:defmethod set-pixel-shader-constant ((self imaterial-renderer-services) (name cl:string) floats (count cl:integer))
  (IMaterialRendererServices_setPixelShaderConstant (ff-pointer self) name floats count))

(cl:defmethod set-pixel-shader-constant ((self imaterial-renderer-services) (name cl:string) bools (count cl:integer))
  (IMaterialRendererServices_setPixelShaderConstant (ff-pointer self) name bools count))

(cl:defmethod set-pixel-shader-constant ((self imaterial-renderer-services) (name cl:string) ints (count cl:integer))
  (IMaterialRendererServices_setPixelShaderConstant (ff-pointer self) name ints count))

(cl:defmethod set-pixel-shader-constant ((self imaterial-renderer-services) data (startRegister cl:integer) (constantAmount cl:integer))
  (IMaterialRendererServices_setPixelShaderConstant (ff-pointer self) data startRegister constantAmount))

(cl:defmethod set-pixel-shader-constant ((self imaterial-renderer-services) data (startRegister cl:integer))
  (IMaterialRendererServices_setPixelShaderConstant (ff-pointer self) data startRegister))

(cl:defmethod get-video-driver ((self imaterial-renderer-services))
  (IMaterialRendererServices_getVideoDriver (ff-pointer self)))


(cl:defclass imesh-cache(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod add-mesh ((self imesh-cache) name (mesh ianimated-mesh))
  (IMeshCache_addMesh (ff-pointer self) name mesh))

(cl:defmethod remove-mesh ((self imesh-cache) (mesh imesh))
  (IMeshCache_removeMesh (ff-pointer self) mesh))

(cl:defmethod get-mesh-count ((self imesh-cache))
  (IMeshCache_getMeshCount (ff-pointer self)))

(cl:defmethod get-mesh-index ((self imesh-cache) (mesh imesh))
  (IMeshCache_getMeshIndex (ff-pointer self) mesh))

(cl:defmethod get-mesh-by-index ((self imesh-cache) (index cl:integer))
  (IMeshCache_getMeshByIndex (ff-pointer self) index))

(cl:defmethod get-mesh-by-filename ((self imesh-cache) filename)
  (IMeshCache_getMeshByFilename (ff-pointer self) filename))

(cl:defmethod get-mesh-filename ((self imesh-cache) (index cl:integer))
  (IMeshCache_getMeshFilename (ff-pointer self) index))

(cl:defmethod get-mesh-filename ((self imesh-cache) (mesh imesh))
  (IMeshCache_getMeshFilename (ff-pointer self) mesh))

(cl:defmethod set-mesh-filename ((self imesh-cache) (index cl:integer) filename)
  (IMeshCache_setMeshFilename (ff-pointer self) index filename))

(cl:defmethod set-mesh-filename ((self imesh-cache) (mesh imesh) filename)
  (IMeshCache_setMeshFilename (ff-pointer self) mesh filename))

(cl:defmethod get-mesh-by-name ((self imesh-cache) name)
  (IMeshCache_getMeshByName (ff-pointer self) name))

(cl:defmethod get-mesh-name ((self imesh-cache) (index cl:integer))
  (IMeshCache_getMeshName (ff-pointer self) index))

(cl:defmethod get-mesh-name ((self imesh-cache) (mesh imesh))
  (IMeshCache_getMeshName (ff-pointer self) mesh))

(cl:defmethod rename-mesh ((self imesh-cache) (index cl:integer) name)
  (IMeshCache_renameMesh (ff-pointer self) index name))

(cl:defmethod rename-mesh ((self imesh-cache) (mesh imesh) name)
  (IMeshCache_renameMesh (ff-pointer self) mesh name))

(cl:defmethod is-mesh-loaded ((self imesh-cache) name)
  (IMeshCache_isMeshLoaded (ff-pointer self) name))

(cl:defmethod clear ((self imesh-cache))
  (IMeshCache_clear (ff-pointer self)))

(cl:defmethod clear-unused-meshes ((self imesh-cache))
  (IMeshCache_clearUnusedMeshes (ff-pointer self)))


(cl:defclass imesh-loader(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod is-aloadable-file-extension ((self imesh-loader) filename)
  (IMeshLoader_isALoadableFileExtension (ff-pointer self) filename))

(cl:defmethod create-mesh ((self imesh-loader) (file iread-file))
  (IMeshLoader_createMesh (ff-pointer self) file))


(cl:defclass ivertex-manipulator()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj ivertex-manipulator) &key)
  (setf (slot-value obj 'ff-pointer) (new_IVertexManipulator)))


(cl:defclass svertex-color-set-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-color-set-manipulator) &key (color scolor))
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorSetManipulator color)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-set-manipulator) vertex)
  (SVertexColorSetManipulator___funcall__ (ff-pointer self) vertex))


(cl:defclass svertex-color-set-alpha-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-color-set-alpha-manipulator) &key (alpha cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorSetAlphaManipulator alpha)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-set-alpha-manipulator) vertex)
  (SVertexColorSetAlphaManipulator___funcall__ (ff-pointer self) vertex))


(cl:defclass svertex-color-invert-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-invert-manipulator) vertex)
  (SVertexColorInvertManipulator___funcall__ (ff-pointer self) vertex))

(cl:defmethod initialize-instance :after ((obj svertex-color-invert-manipulator) &key)
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorInvertManipulator)))


(cl:defclass svertex-color-threshold-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-color-threshold-manipulator) &key (threshold cl:integer) (low scolor) (high scolor))
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorThresholdManipulator threshold low high)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-threshold-manipulator) vertex)
  (SVertexColorThresholdManipulator___funcall__ (ff-pointer self) vertex))


(cl:defclass svertex-color-brightness-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-color-brightness-manipulator) &key (amount cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorBrightnessManipulator amount)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-brightness-manipulator) vertex)
  (SVertexColorBrightnessManipulator___funcall__ (ff-pointer self) vertex))


(cl:defclass svertex-color-contrast-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-color-contrast-manipulator) &key (factor cl:number))
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorContrastManipulator factor)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-contrast-manipulator) vertex)
  (SVertexColorContrastManipulator___funcall__ (ff-pointer self) vertex))


(cl:defclass svertex-color-contrast-brightness-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-color-contrast-brightness-manipulator) &key (factor cl:number) (amount cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorContrastBrightnessManipulator factor amount)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-contrast-brightness-manipulator) vertex)
  (SVertexColorContrastBrightnessManipulator___funcall__ (ff-pointer self) vertex))


(cl:defclass svertex-color-gamma-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-color-gamma-manipulator) &key (gamma cl:number))
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorGammaManipulator gamma)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-gamma-manipulator) vertex)
  (SVertexColorGammaManipulator___funcall__ (ff-pointer self) vertex))


(cl:defclass svertex-color-scale-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-color-scale-manipulator) &key (factor cl:number))
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorScaleManipulator factor)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-scale-manipulator) vertex)
  (SVertexColorScaleManipulator___funcall__ (ff-pointer self) vertex))


(cl:defclass svertex-color-desaturate-to-lightness-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-desaturate-to-lightness-manipulator) vertex)
  (SVertexColorDesaturateToLightnessManipulator___funcall__ (ff-pointer self) vertex))

(cl:defmethod initialize-instance :after ((obj svertex-color-desaturate-to-lightness-manipulator) &key)
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorDesaturateToLightnessManipulator)))


(cl:defclass svertex-color-desaturate-to-average-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-desaturate-to-average-manipulator) vertex)
  (SVertexColorDesaturateToAverageManipulator___funcall__ (ff-pointer self) vertex))

(cl:defmethod initialize-instance :after ((obj svertex-color-desaturate-to-average-manipulator) &key)
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorDesaturateToAverageManipulator)))


(cl:defclass svertex-color-desaturate-to-luminance-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-desaturate-to-luminance-manipulator) vertex)
  (SVertexColorDesaturateToLuminanceManipulator___funcall__ (ff-pointer self) vertex))

(cl:defmethod initialize-instance :after ((obj svertex-color-desaturate-to-luminance-manipulator) &key)
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorDesaturateToLuminanceManipulator)))


(cl:defclass svertex-color-interpolate-linear-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-color-interpolate-linear-manipulator) &key (color scolor) (factor cl:number))
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorInterpolateLinearManipulator color factor)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-interpolate-linear-manipulator) vertex)
  (SVertexColorInterpolateLinearManipulator___funcall__ (ff-pointer self) vertex))


(cl:defclass svertex-color-interpolate-quadratic-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-color-interpolate-quadratic-manipulator) &key (color1 scolor) (color2 scolor) (factor cl:number))
  (setf (slot-value obj 'ff-pointer) (new_SVertexColorInterpolateQuadraticManipulator color1 color2 factor)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-color-interpolate-quadratic-manipulator) vertex)
  (SVertexColorInterpolateQuadraticManipulator___funcall__ (ff-pointer self) vertex))


(cl:defclass svertex-position-scale-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-position-scale-manipulator) &key factor)
  (setf (slot-value obj 'ff-pointer) (new_SVertexPositionScaleManipulator factor)))


(cl:defclass svertex-position-scale-along-normals-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-position-scale-along-normals-manipulator) &key factor)
  (setf (slot-value obj 'ff-pointer) (new_SVertexPositionScaleAlongNormalsManipulator factor)))


(cl:defclass svertex-position-transform-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-position-transform-manipulator) &key m)
  (setf (slot-value obj 'ff-pointer) (new_SVertexPositionTransformManipulator m)))


(cl:defclass svertex-tcoords-scale-manipulator(irr::scene::-ivertex-manipulator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj svertex-tcoords-scale-manipulator) &key factor (uvSet cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_SVertexTCoordsScaleManipulator factor uvSet)))

(cl:defmethod initialize-instance :after ((obj svertex-tcoords-scale-manipulator) &key factor)
  (setf (slot-value obj 'ff-pointer) (new_SVertexTCoordsScaleManipulator factor)))

(cl:shadow "()")
(cl:defmethod () ((self svertex-tcoords-scale-manipulator) vertex)
  (SVertexTCoordsScaleManipulator___funcall__ (ff-pointer self) vertex))


(cl:defclass imesh-manipulator(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod flip-surfaces ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_flipSurfaces (ff-pointer self) mesh))

(cl:defmethod set-vertex-color-alpha ((self imesh-manipulator) (mesh imesh) (alpha cl:integer))
  (IMeshManipulator_setVertexColorAlpha (ff-pointer self) mesh alpha))

(cl:defmethod set-vertex-color-alpha ((self imesh-manipulator) (buffer imesh-buffer) (alpha cl:integer))
  (IMeshManipulator_setVertexColorAlpha (ff-pointer self) buffer alpha))

(cl:defmethod set-vertex-colors ((self imesh-manipulator) (mesh imesh) (color scolor))
  (IMeshManipulator_setVertexColors (ff-pointer self) mesh color))

(cl:defmethod set-vertex-colors ((self imesh-manipulator) (buffer imesh-buffer) (color scolor))
  (IMeshManipulator_setVertexColors (ff-pointer self) buffer color))

(cl:defmethod recalculate-normals ((self imesh-manipulator) (mesh imesh) (smooth t) (angleWeighted t))
  (IMeshManipulator_recalculateNormals (ff-pointer self) mesh smooth angleWeighted))

(cl:defmethod recalculate-normals ((self imesh-manipulator) (mesh imesh) (smooth t))
  (IMeshManipulator_recalculateNormals (ff-pointer self) mesh smooth))

(cl:defmethod recalculate-normals ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_recalculateNormals (ff-pointer self) mesh))

(cl:defmethod recalculate-normals ((self imesh-manipulator) (buffer imesh-buffer) (smooth t) (angleWeighted t))
  (IMeshManipulator_recalculateNormals (ff-pointer self) buffer smooth angleWeighted))

(cl:defmethod recalculate-normals ((self imesh-manipulator) (buffer imesh-buffer) (smooth t))
  (IMeshManipulator_recalculateNormals (ff-pointer self) buffer smooth))

(cl:defmethod recalculate-normals ((self imesh-manipulator) (buffer imesh-buffer))
  (IMeshManipulator_recalculateNormals (ff-pointer self) buffer))

(cl:defmethod recalculate-tangents ((self imesh-manipulator) (mesh imesh) (recalculateNormals t) (smooth t) (angleWeighted t))
  (IMeshManipulator_recalculateTangents (ff-pointer self) mesh recalculateNormals smooth angleWeighted))

(cl:defmethod recalculate-tangents ((self imesh-manipulator) (mesh imesh) (recalculateNormals t) (smooth t))
  (IMeshManipulator_recalculateTangents (ff-pointer self) mesh recalculateNormals smooth))

(cl:defmethod recalculate-tangents ((self imesh-manipulator) (mesh imesh) (recalculateNormals t))
  (IMeshManipulator_recalculateTangents (ff-pointer self) mesh recalculateNormals))

(cl:defmethod recalculate-tangents ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_recalculateTangents (ff-pointer self) mesh))

(cl:defmethod recalculate-tangents ((self imesh-manipulator) (buffer imesh-buffer) (recalculateNormals t) (smooth t) (angleWeighted t))
  (IMeshManipulator_recalculateTangents (ff-pointer self) buffer recalculateNormals smooth angleWeighted))

(cl:defmethod recalculate-tangents ((self imesh-manipulator) (buffer imesh-buffer) (recalculateNormals t) (smooth t))
  (IMeshManipulator_recalculateTangents (ff-pointer self) buffer recalculateNormals smooth))

(cl:defmethod recalculate-tangents ((self imesh-manipulator) (buffer imesh-buffer) (recalculateNormals t))
  (IMeshManipulator_recalculateTangents (ff-pointer self) buffer recalculateNormals))

(cl:defmethod recalculate-tangents ((self imesh-manipulator) (buffer imesh-buffer))
  (IMeshManipulator_recalculateTangents (ff-pointer self) buffer))

(cl:defmethod scale ((self imesh-manipulator) (mesh imesh) factor)
  (IMeshManipulator_scale (ff-pointer self) mesh factor))

(cl:defmethod scale ((self imesh-manipulator) (buffer imesh-buffer) factor)
  (IMeshManipulator_scale (ff-pointer self) buffer factor))

(cl:defmethod scale-mesh ((self imesh-manipulator) (mesh imesh) factor)
  (IMeshManipulator_scaleMesh (ff-pointer self) mesh factor))

(cl:defmethod scale-tcoords ((self imesh-manipulator) (mesh imesh) factor (level cl:integer))
  (IMeshManipulator_scaleTCoords (ff-pointer self) mesh factor level))

(cl:defmethod scale-tcoords ((self imesh-manipulator) (mesh imesh) factor)
  (IMeshManipulator_scaleTCoords (ff-pointer self) mesh factor))

(cl:defmethod scale-tcoords ((self imesh-manipulator) (buffer imesh-buffer) factor (level cl:integer))
  (IMeshManipulator_scaleTCoords (ff-pointer self) buffer factor level))

(cl:defmethod scale-tcoords ((self imesh-manipulator) (buffer imesh-buffer) factor)
  (IMeshManipulator_scaleTCoords (ff-pointer self) buffer factor))

(cl:defmethod transform ((self imesh-manipulator) (mesh imesh) m)
  (IMeshManipulator_transform (ff-pointer self) mesh m))

(cl:defmethod transform ((self imesh-manipulator) (buffer imesh-buffer) m)
  (IMeshManipulator_transform (ff-pointer self) buffer m))

(cl:defmethod transform-mesh ((self imesh-manipulator) (mesh imesh) m)
  (IMeshManipulator_transformMesh (ff-pointer self) mesh m))

(cl:defmethod make-planar-texture-mapping ((self imesh-manipulator) (mesh imesh) (resolution cl:number))
  (IMeshManipulator_makePlanarTextureMapping (ff-pointer self) mesh resolution))

(cl:defmethod make-planar-texture-mapping ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_makePlanarTextureMapping (ff-pointer self) mesh))

(cl:defmethod make-planar-texture-mapping ((self imesh-manipulator) (meshbuffer imesh-buffer) (resolution cl:number))
  (IMeshManipulator_makePlanarTextureMapping (ff-pointer self) meshbuffer resolution))

(cl:defmethod make-planar-texture-mapping ((self imesh-manipulator) (meshbuffer imesh-buffer))
  (IMeshManipulator_makePlanarTextureMapping (ff-pointer self) meshbuffer))

(cl:defmethod make-planar-texture-mapping ((self imesh-manipulator) (mesh imesh) (resolutionS cl:number) (resolutionT cl:number) (axis cl:integer) offset)
  (IMeshManipulator_makePlanarTextureMapping (ff-pointer self) mesh resolutionS resolutionT axis offset))

(cl:defmethod make-planar-texture-mapping ((self imesh-manipulator) (buffer imesh-buffer) (resolutionS cl:number) (resolutionT cl:number) (axis cl:integer) offset)
  (IMeshManipulator_makePlanarTextureMapping (ff-pointer self) buffer resolutionS resolutionT axis offset))

(cl:defmethod create-mesh-copy ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_createMeshCopy (ff-pointer self) mesh))

(cl:defmethod create-mesh-with-tangents ((self imesh-manipulator) (mesh imesh) (recalculateNormals t) (smooth t) (angleWeighted t) (recalculateTangents t))
  (IMeshManipulator_createMeshWithTangents (ff-pointer self) mesh recalculateNormals smooth angleWeighted recalculateTangents))

(cl:defmethod create-mesh-with-tangents ((self imesh-manipulator) (mesh imesh) (recalculateNormals t) (smooth t) (angleWeighted t))
  (IMeshManipulator_createMeshWithTangents (ff-pointer self) mesh recalculateNormals smooth angleWeighted))

(cl:defmethod create-mesh-with-tangents ((self imesh-manipulator) (mesh imesh) (recalculateNormals t) (smooth t))
  (IMeshManipulator_createMeshWithTangents (ff-pointer self) mesh recalculateNormals smooth))

(cl:defmethod create-mesh-with-tangents ((self imesh-manipulator) (mesh imesh) (recalculateNormals t))
  (IMeshManipulator_createMeshWithTangents (ff-pointer self) mesh recalculateNormals))

(cl:defmethod create-mesh-with-tangents ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_createMeshWithTangents (ff-pointer self) mesh))

(cl:defmethod create-mesh-with2-tcoords ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_createMeshWith2TCoords (ff-pointer self) mesh))

(cl:defmethod create-mesh-with1-tcoords ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_createMeshWith1TCoords (ff-pointer self) mesh))

(cl:defmethod create-mesh-unique-primitives ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_createMeshUniquePrimitives (ff-pointer self) mesh))

(cl:defmethod create-mesh-welded ((self imesh-manipulator) (mesh imesh) (tolerance cl:number))
  (IMeshManipulator_createMeshWelded (ff-pointer self) mesh tolerance))

(cl:defmethod create-mesh-welded ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_createMeshWelded (ff-pointer self) mesh))

(cl:defmethod get-poly-count ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_getPolyCount (ff-pointer self) mesh))

(cl:defmethod get-poly-count ((self imesh-manipulator) (mesh ianimated-mesh))
  (IMeshManipulator_getPolyCount (ff-pointer self) mesh))

(cl:defmethod create-animated-mesh ((self imesh-manipulator) (mesh imesh) (type cl:integer))
  (IMeshManipulator_createAnimatedMesh (ff-pointer self) mesh type))

(cl:defmethod create-animated-mesh ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_createAnimatedMesh (ff-pointer self) mesh))

(cl:defmethod create-forsyth-optimized-mesh ((self imesh-manipulator) (mesh imesh))
  (IMeshManipulator_createForsythOptimizedMesh (ff-pointer self) mesh))


(cl:defclass imesh-scene-node(irr::scene::-iscene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-mesh ((self imesh-scene-node) (mesh imesh))
  (IMeshSceneNode_setMesh (ff-pointer self) mesh))

(cl:defmethod get-mesh ((self imesh-scene-node))
  (IMeshSceneNode_getMesh (ff-pointer self)))

(cl:defmethod add-shadow-volume-scene-node ((self imesh-scene-node) (shadowMesh imesh) (id cl:integer) (zfailmethod t) (infinity cl:number))
  (IMeshSceneNode_addShadowVolumeSceneNode (ff-pointer self) shadowMesh id zfailmethod infinity))

(cl:defmethod add-shadow-volume-scene-node ((self imesh-scene-node) (shadowMesh imesh) (id cl:integer) (zfailmethod t))
  (IMeshSceneNode_addShadowVolumeSceneNode (ff-pointer self) shadowMesh id zfailmethod))

(cl:defmethod add-shadow-volume-scene-node ((self imesh-scene-node) (shadowMesh imesh) (id cl:integer))
  (IMeshSceneNode_addShadowVolumeSceneNode (ff-pointer self) shadowMesh id))

(cl:defmethod add-shadow-volume-scene-node ((self imesh-scene-node) (shadowMesh imesh))
  (IMeshSceneNode_addShadowVolumeSceneNode (ff-pointer self) shadowMesh))

(cl:defmethod add-shadow-volume-scene-node ((self imesh-scene-node))
  (IMeshSceneNode_addShadowVolumeSceneNode (ff-pointer self)))

(cl:defmethod set-read-only-materials ((self imesh-scene-node) (readonly t))
  (IMeshSceneNode_setReadOnlyMaterials (ff-pointer self) readonly))

(cl:defmethod is-read-only-materials ((self imesh-scene-node))
  (IMeshSceneNode_isReadOnlyMaterials (ff-pointer self)))


(cl:defclass imesh-writer(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-type ((self imesh-writer))
  (IMeshWriter_getType (ff-pointer self)))

(cl:defmethod write-mesh ((self imesh-writer) file (mesh imesh) (flags cl:integer))
  (IMeshWriter_writeMesh (ff-pointer self) file mesh flags))

(cl:defmethod write-mesh ((self imesh-writer) file (mesh imesh))
  (IMeshWriter_writeMesh (ff-pointer self) file mesh))


(cl:defclass icollada-mesh-writer-properties(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-technique-fx ((self icollada-mesh-writer-properties) (material smaterial))
  (IColladaMeshWriterProperties_getTechniqueFx (ff-pointer self) material))

(cl:defmethod get-texture-idx ((self icollada-mesh-writer-properties) (material smaterial) (cs cl:integer))
  (IColladaMeshWriterProperties_getTextureIdx (ff-pointer self) material cs))

(cl:defmethod get-color-mapping ((self icollada-mesh-writer-properties) (material smaterial) (cs cl:integer))
  (IColladaMeshWriterProperties_getColorMapping (ff-pointer self) material cs))

(cl:defmethod get-custom-color ((self icollada-mesh-writer-properties) (material smaterial) (cs cl:integer))
  (IColladaMeshWriterProperties_getCustomColor (ff-pointer self) material cs))

(cl:defmethod get-transparent-fx ((self icollada-mesh-writer-properties) (material smaterial))
  (IColladaMeshWriterProperties_getTransparentFx (ff-pointer self) material))

(cl:defmethod get-transparency ((self icollada-mesh-writer-properties) (material smaterial))
  (IColladaMeshWriterProperties_getTransparency (ff-pointer self) material))

(cl:defmethod get-reflectivity ((self icollada-mesh-writer-properties) (material smaterial))
  (IColladaMeshWriterProperties_getReflectivity (ff-pointer self) material))

(cl:defmethod get-index-of-refraction ((self icollada-mesh-writer-properties) (material smaterial))
  (IColladaMeshWriterProperties_getIndexOfRefraction (ff-pointer self) material))

(cl:defmethod is-exportable ((self icollada-mesh-writer-properties) (node iscene-node))
  (IColladaMeshWriterProperties_isExportable (ff-pointer self) node))

(cl:defmethod get-mesh ((self icollada-mesh-writer-properties) (node iscene-node))
  (IColladaMeshWriterProperties_getMesh (ff-pointer self) node))

(cl:defmethod use-node-material ((self icollada-mesh-writer-properties) (node iscene-node))
  (IColladaMeshWriterProperties_useNodeMaterial (ff-pointer self) node))


(cl:defclass icollada-mesh-writer-names(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod name-for-mesh ((self icollada-mesh-writer-names) (mesh imesh) (instance cl:integer))
  (IColladaMeshWriterNames_nameForMesh (ff-pointer self) mesh instance))

(cl:defmethod name-for-node ((self icollada-mesh-writer-names) (node iscene-node))
  (IColladaMeshWriterNames_nameForNode (ff-pointer self) node))

(cl:defmethod name-for-material ((self icollada-mesh-writer-names) (material smaterial) (materialId cl:integer) (mesh imesh) (node iscene-node))
  (IColladaMeshWriterNames_nameForMaterial (ff-pointer self) material materialId mesh node))


(cl:defclass icollada-mesh-writer(irr::scene::-imesh-writer)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod write-scene ((self icollada-mesh-writer) file (root iscene-node))
  (IColladaMeshWriter_writeScene (ff-pointer self) file root))

(cl:defmethod set-write-textures ((self icollada-mesh-writer) (write t))
  (IColladaMeshWriter_setWriteTextures (ff-pointer self) write))

(cl:defmethod get-write-textures ((self icollada-mesh-writer))
  (IColladaMeshWriter_getWriteTextures (ff-pointer self)))

(cl:defmethod set-write-default-scene ((self icollada-mesh-writer) (write t))
  (IColladaMeshWriter_setWriteDefaultScene (ff-pointer self) write))

(cl:defmethod get-write-default-scene ((self icollada-mesh-writer))
  (IColladaMeshWriter_getWriteDefaultScene (ff-pointer self)))

(cl:defmethod set-ambient-light ((self icollada-mesh-writer) (ambientColor scolorf))
  (IColladaMeshWriter_setAmbientLight (ff-pointer self) ambientColor))

(cl:defmethod get-ambient-light ((self icollada-mesh-writer))
  (IColladaMeshWriter_getAmbientLight (ff-pointer self)))

(cl:defmethod set-geometry-writing ((self icollada-mesh-writer) (writeStyle cl:integer))
  (IColladaMeshWriter_setGeometryWriting (ff-pointer self) writeStyle))

(cl:defmethod get-geometry-writing ((self icollada-mesh-writer))
  (IColladaMeshWriter_getGeometryWriting (ff-pointer self)))

(cl:defmethod set-export-smaterials-only-once ((self icollada-mesh-writer) (exportOnce t))
  (IColladaMeshWriter_setExportSMaterialsOnlyOnce (ff-pointer self) exportOnce))

(cl:defmethod get-export-smaterials-only-once ((self icollada-mesh-writer))
  (IColladaMeshWriter_getExportSMaterialsOnlyOnce (ff-pointer self)))

(cl:defmethod set-properties ((self icollada-mesh-writer) (p icollada-mesh-writer-properties))
  (IColladaMeshWriter_setProperties (ff-pointer self) p))

(cl:defmethod get-properties ((self icollada-mesh-writer))
  (IColladaMeshWriter_getProperties (ff-pointer self)))

(cl:defmethod get-default-properties ((self icollada-mesh-writer))
  (IColladaMeshWriter_getDefaultProperties (ff-pointer self)))

(cl:defmethod set-name-generator ((self icollada-mesh-writer) (nameGenerator icollada-mesh-writer-names))
  (IColladaMeshWriter_setNameGenerator (ff-pointer self) nameGenerator))

(cl:defmethod get-name-generator ((self icollada-mesh-writer))
  (IColladaMeshWriter_getNameGenerator (ff-pointer self)))

(cl:defmethod get-default-name-generator ((self icollada-mesh-writer))
  (IColladaMeshWriter_getDefaultNameGenerator (ff-pointer self)))

(cl:defmethod to-ncname ((self icollada-mesh-writer) oldString prefix)
  (IColladaMeshWriter_toNCName (ff-pointer self) oldString prefix))

(cl:defmethod to-ncname ((self icollada-mesh-writer) oldString)
  (IColladaMeshWriter_toNCName (ff-pointer self) oldString))


(cl:defclass imeta-triangle-selector(irr::scene::-itriangle-selector)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod add-triangle-selector ((self imeta-triangle-selector) (toAdd itriangle-selector))
  (IMetaTriangleSelector_addTriangleSelector (ff-pointer self) toAdd))

(cl:defmethod remove-triangle-selector ((self imeta-triangle-selector) (toRemove itriangle-selector))
  (IMetaTriangleSelector_removeTriangleSelector (ff-pointer self) toRemove))

(cl:defmethod remove-all-triangle-selectors ((self imeta-triangle-selector))
  (IMetaTriangleSelector_removeAllTriangleSelectors (ff-pointer self)))


(cl:defclass iosoperator(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-operating-system-version ((self iosoperator))
  (IOSOperator_getOperatingSystemVersion (ff-pointer self)))

(cl:defmethod get-operation-system-version ((self iosoperator))
  (IOSOperator_getOperationSystemVersion (ff-pointer self)))

(cl:defmethod copy-to-clipboard ((self iosoperator) (text cl:string))
  (IOSOperator_copyToClipboard (ff-pointer self) text))

(cl:defmethod get-text-from-clipboard ((self iosoperator))
  (IOSOperator_getTextFromClipboard (ff-pointer self)))

(cl:defmethod get-processor-speed-mhz ((self iosoperator) MHz)
  (IOSOperator_getProcessorSpeedMHz (ff-pointer self) MHz))

(cl:defmethod get-system-memory ((self iosoperator) Total Avail)
  (IOSOperator_getSystemMemory (ff-pointer self) Total Avail))


(cl:defclass iparticle-emitter(irr::io::-iattribute-exchanging-object)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod emitt ((self iparticle-emitter) (now cl:integer) (timeSinceLastCall cl:integer) outArray)
  (IParticleEmitter_emitt (ff-pointer self) now timeSinceLastCall outArray))

(cl:defmethod set-direction ((self iparticle-emitter) newDirection)
  (IParticleEmitter_setDirection (ff-pointer self) newDirection))

(cl:defmethod set-min-particles-per-second ((self iparticle-emitter) (minPPS cl:integer))
  (IParticleEmitter_setMinParticlesPerSecond (ff-pointer self) minPPS))

(cl:defmethod set-max-particles-per-second ((self iparticle-emitter) (maxPPS cl:integer))
  (IParticleEmitter_setMaxParticlesPerSecond (ff-pointer self) maxPPS))

(cl:defmethod set-min-start-color ((self iparticle-emitter) (color scolor))
  (IParticleEmitter_setMinStartColor (ff-pointer self) color))

(cl:defmethod set-max-start-color ((self iparticle-emitter) (color scolor))
  (IParticleEmitter_setMaxStartColor (ff-pointer self) color))

(cl:defmethod set-max-start-size ((self iparticle-emitter) size)
  (IParticleEmitter_setMaxStartSize (ff-pointer self) size))

(cl:defmethod set-min-start-size ((self iparticle-emitter) size)
  (IParticleEmitter_setMinStartSize (ff-pointer self) size))

(cl:defmethod set-min-life-time ((self iparticle-emitter) (lifeTimeMin cl:integer))
  (IParticleEmitter_setMinLifeTime (ff-pointer self) lifeTimeMin))

(cl:defmethod set-max-life-time ((self iparticle-emitter) (lifeTimeMax cl:integer))
  (IParticleEmitter_setMaxLifeTime (ff-pointer self) lifeTimeMax))

(cl:defmethod set-max-angle-degrees ((self iparticle-emitter) (maxAngleDegrees cl:integer))
  (IParticleEmitter_setMaxAngleDegrees (ff-pointer self) maxAngleDegrees))

(cl:defmethod get-direction ((self iparticle-emitter))
  (IParticleEmitter_getDirection (ff-pointer self)))

(cl:defmethod get-min-particles-per-second ((self iparticle-emitter))
  (IParticleEmitter_getMinParticlesPerSecond (ff-pointer self)))

(cl:defmethod get-max-particles-per-second ((self iparticle-emitter))
  (IParticleEmitter_getMaxParticlesPerSecond (ff-pointer self)))

(cl:defmethod get-min-start-color ((self iparticle-emitter))
  (IParticleEmitter_getMinStartColor (ff-pointer self)))

(cl:defmethod get-max-start-color ((self iparticle-emitter))
  (IParticleEmitter_getMaxStartColor (ff-pointer self)))

(cl:defmethod get-max-start-size ((self iparticle-emitter))
  (IParticleEmitter_getMaxStartSize (ff-pointer self)))

(cl:defmethod get-min-start-size ((self iparticle-emitter))
  (IParticleEmitter_getMinStartSize (ff-pointer self)))

(cl:defmethod get-min-life-time ((self iparticle-emitter))
  (IParticleEmitter_getMinLifeTime (ff-pointer self)))

(cl:defmethod get-max-life-time ((self iparticle-emitter))
  (IParticleEmitter_getMaxLifeTime (ff-pointer self)))

(cl:defmethod get-max-angle-degrees ((self iparticle-emitter))
  (IParticleEmitter_getMaxAngleDegrees (ff-pointer self)))

(cl:defmethod get-type ((self iparticle-emitter))
  (IParticleEmitter_getType (ff-pointer self)))


(cl:defclass iparticle-animated-mesh-scene-node-emitter(irr::scene::-iparticle-emitter)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-animated-mesh-scene-node ((self iparticle-animated-mesh-scene-node-emitter) (node ianimated-mesh-scene-node))
  (IParticleAnimatedMeshSceneNodeEmitter_setAnimatedMeshSceneNode (ff-pointer self) node))

(cl:defmethod set-use-normal-direction ((self iparticle-animated-mesh-scene-node-emitter) (useNormalDirection t))
  (IParticleAnimatedMeshSceneNodeEmitter_setUseNormalDirection (ff-pointer self) useNormalDirection))

(cl:defmethod set-use-normal-direction ((self iparticle-animated-mesh-scene-node-emitter))
  (IParticleAnimatedMeshSceneNodeEmitter_setUseNormalDirection (ff-pointer self)))

(cl:defmethod set-normal-direction-modifier ((self iparticle-animated-mesh-scene-node-emitter) (normalDirectionModifier cl:number))
  (IParticleAnimatedMeshSceneNodeEmitter_setNormalDirectionModifier (ff-pointer self) normalDirectionModifier))

(cl:defmethod set-every-mesh-vertex ((self iparticle-animated-mesh-scene-node-emitter) (everyMeshVertex t))
  (IParticleAnimatedMeshSceneNodeEmitter_setEveryMeshVertex (ff-pointer self) everyMeshVertex))

(cl:defmethod set-every-mesh-vertex ((self iparticle-animated-mesh-scene-node-emitter))
  (IParticleAnimatedMeshSceneNodeEmitter_setEveryMeshVertex (ff-pointer self)))

(cl:defmethod get-animated-mesh-scene-node ((self iparticle-animated-mesh-scene-node-emitter))
  (IParticleAnimatedMeshSceneNodeEmitter_getAnimatedMeshSceneNode (ff-pointer self)))

(cl:defmethod is-using-normal-direction ((self iparticle-animated-mesh-scene-node-emitter))
  (IParticleAnimatedMeshSceneNodeEmitter_isUsingNormalDirection (ff-pointer self)))

(cl:defmethod get-normal-direction-modifier ((self iparticle-animated-mesh-scene-node-emitter))
  (IParticleAnimatedMeshSceneNodeEmitter_getNormalDirectionModifier (ff-pointer self)))

(cl:defmethod get-every-mesh-vertex ((self iparticle-animated-mesh-scene-node-emitter))
  (IParticleAnimatedMeshSceneNodeEmitter_getEveryMeshVertex (ff-pointer self)))


(cl:defclass iparticle-box-emitter(irr::scene::-iparticle-emitter)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-box ((self iparticle-box-emitter) box)
  (IParticleBoxEmitter_setBox (ff-pointer self) box))

(cl:defmethod get-box ((self iparticle-box-emitter))
  (IParticleBoxEmitter_getBox (ff-pointer self)))


(cl:defclass iparticle-cylinder-emitter(irr::scene::-iparticle-emitter)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-center ((self iparticle-cylinder-emitter) center)
  (IParticleCylinderEmitter_setCenter (ff-pointer self) center))

(cl:defmethod set-normal ((self iparticle-cylinder-emitter) normal)
  (IParticleCylinderEmitter_setNormal (ff-pointer self) normal))

(cl:defmethod set-radius ((self iparticle-cylinder-emitter) (radius cl:number))
  (IParticleCylinderEmitter_setRadius (ff-pointer self) radius))

(cl:defmethod set-length ((self iparticle-cylinder-emitter) (length cl:number))
  (IParticleCylinderEmitter_setLength (ff-pointer self) length))

(cl:defmethod set-outline-only ((self iparticle-cylinder-emitter) (outlineOnly t))
  (IParticleCylinderEmitter_setOutlineOnly (ff-pointer self) outlineOnly))

(cl:defmethod set-outline-only ((self iparticle-cylinder-emitter))
  (IParticleCylinderEmitter_setOutlineOnly (ff-pointer self)))

(cl:defmethod get-center ((self iparticle-cylinder-emitter))
  (IParticleCylinderEmitter_getCenter (ff-pointer self)))

(cl:defmethod get-normal ((self iparticle-cylinder-emitter))
  (IParticleCylinderEmitter_getNormal (ff-pointer self)))

(cl:defmethod get-radius ((self iparticle-cylinder-emitter))
  (IParticleCylinderEmitter_getRadius (ff-pointer self)))

(cl:defmethod get-length ((self iparticle-cylinder-emitter))
  (IParticleCylinderEmitter_getLength (ff-pointer self)))

(cl:defmethod get-outline-only ((self iparticle-cylinder-emitter))
  (IParticleCylinderEmitter_getOutlineOnly (ff-pointer self)))


(cl:defclass iparticle-mesh-emitter(irr::scene::-iparticle-emitter)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-mesh ((self iparticle-mesh-emitter) (mesh imesh))
  (IParticleMeshEmitter_setMesh (ff-pointer self) mesh))

(cl:defmethod set-use-normal-direction ((self iparticle-mesh-emitter) (useNormalDirection t))
  (IParticleMeshEmitter_setUseNormalDirection (ff-pointer self) useNormalDirection))

(cl:defmethod set-use-normal-direction ((self iparticle-mesh-emitter))
  (IParticleMeshEmitter_setUseNormalDirection (ff-pointer self)))

(cl:defmethod set-normal-direction-modifier ((self iparticle-mesh-emitter) (normalDirectionModifier cl:number))
  (IParticleMeshEmitter_setNormalDirectionModifier (ff-pointer self) normalDirectionModifier))

(cl:defmethod set-every-mesh-vertex ((self iparticle-mesh-emitter) (everyMeshVertex t))
  (IParticleMeshEmitter_setEveryMeshVertex (ff-pointer self) everyMeshVertex))

(cl:defmethod set-every-mesh-vertex ((self iparticle-mesh-emitter))
  (IParticleMeshEmitter_setEveryMeshVertex (ff-pointer self)))

(cl:defmethod get-mesh ((self iparticle-mesh-emitter))
  (IParticleMeshEmitter_getMesh (ff-pointer self)))

(cl:defmethod is-using-normal-direction ((self iparticle-mesh-emitter))
  (IParticleMeshEmitter_isUsingNormalDirection (ff-pointer self)))

(cl:defmethod get-normal-direction-modifier ((self iparticle-mesh-emitter))
  (IParticleMeshEmitter_getNormalDirectionModifier (ff-pointer self)))

(cl:defmethod get-every-mesh-vertex ((self iparticle-mesh-emitter))
  (IParticleMeshEmitter_getEveryMeshVertex (ff-pointer self)))


(cl:defclass iparticle-ring-emitter(irr::scene::-iparticle-emitter)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-center ((self iparticle-ring-emitter) center)
  (IParticleRingEmitter_setCenter (ff-pointer self) center))

(cl:defmethod set-radius ((self iparticle-ring-emitter) (radius cl:number))
  (IParticleRingEmitter_setRadius (ff-pointer self) radius))

(cl:defmethod set-ring-thickness ((self iparticle-ring-emitter) (ringThickness cl:number))
  (IParticleRingEmitter_setRingThickness (ff-pointer self) ringThickness))

(cl:defmethod get-center ((self iparticle-ring-emitter))
  (IParticleRingEmitter_getCenter (ff-pointer self)))

(cl:defmethod get-radius ((self iparticle-ring-emitter))
  (IParticleRingEmitter_getRadius (ff-pointer self)))

(cl:defmethod get-ring-thickness ((self iparticle-ring-emitter))
  (IParticleRingEmitter_getRingThickness (ff-pointer self)))


(cl:defclass iparticle-sphere-emitter(irr::scene::-iparticle-emitter)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-center ((self iparticle-sphere-emitter) center)
  (IParticleSphereEmitter_setCenter (ff-pointer self) center))

(cl:defmethod set-radius ((self iparticle-sphere-emitter) (radius cl:number))
  (IParticleSphereEmitter_setRadius (ff-pointer self) radius))

(cl:defmethod get-center ((self iparticle-sphere-emitter))
  (IParticleSphereEmitter_getCenter (ff-pointer self)))

(cl:defmethod get-radius ((self iparticle-sphere-emitter))
  (IParticleSphereEmitter_getRadius (ff-pointer self)))


(cl:defclass iparticle-affector(irr::io::-iattribute-exchanging-object)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod affect ((self iparticle-affector) (now cl:integer) particlearray (count cl:integer))
  (IParticleAffector_affect (ff-pointer self) now particlearray count))

(cl:defmethod set-enabled ((self iparticle-affector) (enabled t))
  (IParticleAffector_setEnabled (ff-pointer self) enabled))

(cl:defmethod get-enabled ((self iparticle-affector))
  (IParticleAffector_getEnabled (ff-pointer self)))

(cl:defmethod get-type ((self iparticle-affector))
  (IParticleAffector_getType (ff-pointer self)))


(cl:defclass iparticle-attraction-affector(irr::scene::-iparticle-affector)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-point ((self iparticle-attraction-affector) point)
  (IParticleAttractionAffector_setPoint (ff-pointer self) point))

(cl:defmethod set-attract ((self iparticle-attraction-affector) (attract t))
  (IParticleAttractionAffector_setAttract (ff-pointer self) attract))

(cl:defmethod set-affect-x ((self iparticle-attraction-affector) (affect t))
  (IParticleAttractionAffector_setAffectX (ff-pointer self) affect))

(cl:defmethod set-affect-y ((self iparticle-attraction-affector) (affect t))
  (IParticleAttractionAffector_setAffectY (ff-pointer self) affect))

(cl:defmethod set-affect-z ((self iparticle-attraction-affector) (affect t))
  (IParticleAttractionAffector_setAffectZ (ff-pointer self) affect))

(cl:defmethod get-point ((self iparticle-attraction-affector))
  (IParticleAttractionAffector_getPoint (ff-pointer self)))

(cl:defmethod get-attract ((self iparticle-attraction-affector))
  (IParticleAttractionAffector_getAttract (ff-pointer self)))

(cl:defmethod get-affect-x ((self iparticle-attraction-affector))
  (IParticleAttractionAffector_getAffectX (ff-pointer self)))

(cl:defmethod get-affect-y ((self iparticle-attraction-affector))
  (IParticleAttractionAffector_getAffectY (ff-pointer self)))

(cl:defmethod get-affect-z ((self iparticle-attraction-affector))
  (IParticleAttractionAffector_getAffectZ (ff-pointer self)))


(cl:defclass iparticle-fade-out-affector(irr::scene::-iparticle-affector)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-target-color ((self iparticle-fade-out-affector) (targetColor scolor))
  (IParticleFadeOutAffector_setTargetColor (ff-pointer self) targetColor))

(cl:defmethod set-fade-out-time ((self iparticle-fade-out-affector) (fadeOutTime cl:integer))
  (IParticleFadeOutAffector_setFadeOutTime (ff-pointer self) fadeOutTime))

(cl:defmethod get-target-color ((self iparticle-fade-out-affector))
  (IParticleFadeOutAffector_getTargetColor (ff-pointer self)))

(cl:defmethod get-fade-out-time ((self iparticle-fade-out-affector))
  (IParticleFadeOutAffector_getFadeOutTime (ff-pointer self)))


(cl:defclass iparticle-gravity-affector(irr::scene::-iparticle-affector)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-time-force-lost ((self iparticle-gravity-affector) (timeForceLost cl:number))
  (IParticleGravityAffector_setTimeForceLost (ff-pointer self) timeForceLost))

(cl:defmethod set-gravity ((self iparticle-gravity-affector) gravity)
  (IParticleGravityAffector_setGravity (ff-pointer self) gravity))

(cl:defmethod get-time-force-lost ((self iparticle-gravity-affector))
  (IParticleGravityAffector_getTimeForceLost (ff-pointer self)))

(cl:defmethod get-gravity ((self iparticle-gravity-affector))
  (IParticleGravityAffector_getGravity (ff-pointer self)))


(cl:defclass iparticle-rotation-affector(irr::scene::-iparticle-affector)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-pivot-point ((self iparticle-rotation-affector) point)
  (IParticleRotationAffector_setPivotPoint (ff-pointer self) point))

(cl:defmethod set-speed ((self iparticle-rotation-affector) speed)
  (IParticleRotationAffector_setSpeed (ff-pointer self) speed))

(cl:defmethod get-pivot-point ((self iparticle-rotation-affector))
  (IParticleRotationAffector_getPivotPoint (ff-pointer self)))

(cl:defmethod get-speed ((self iparticle-rotation-affector))
  (IParticleRotationAffector_getSpeed (ff-pointer self)))


(cl:defclass iparticle-system-scene-node(irr::scene::-iscene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-particle-size ((self iparticle-system-scene-node) size)
  (IParticleSystemSceneNode_setParticleSize (ff-pointer self) size))

(cl:defmethod set-particle-size ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_setParticleSize (ff-pointer self)))

(cl:defmethod set-particles-are-global ((self iparticle-system-scene-node) (global t))
  (IParticleSystemSceneNode_setParticlesAreGlobal (ff-pointer self) global))

(cl:defmethod set-particles-are-global ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_setParticlesAreGlobal (ff-pointer self)))

(cl:defmethod clear-particles ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_clearParticles (ff-pointer self)))

(cl:defmethod do-particle-system ((self iparticle-system-scene-node) (time cl:integer))
  (IParticleSystemSceneNode_doParticleSystem (ff-pointer self) time))

(cl:defmethod get-emitter ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_getEmitter (ff-pointer self)))

(cl:defmethod set-emitter ((self iparticle-system-scene-node) (emitter iparticle-emitter))
  (IParticleSystemSceneNode_setEmitter (ff-pointer self) emitter))

(cl:defmethod add-affector ((self iparticle-system-scene-node) (affector iparticle-affector))
  (IParticleSystemSceneNode_addAffector (ff-pointer self) affector))

(cl:defmethod get-affectors ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_getAffectors (ff-pointer self)))

(cl:defmethod remove-all-affectors ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_removeAllAffectors (ff-pointer self)))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize maxStartSize)
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize maxStartSize))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize)
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier mbNumber))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction (normalDirectionModifier cl:number))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction normalDirectionModifier))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t) direction)
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection direction))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node) (useNormalDirection t))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node useNormalDirection))

(cl:defmethod create-animated-mesh-scene-node-emitter ((self iparticle-system-scene-node) (node ianimated-mesh-scene-node))
  (IParticleSystemSceneNode_createAnimatedMeshSceneNodeEmitter (ff-pointer self) node))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node) box direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize maxStartSize)
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self) box direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize maxStartSize))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node) box direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize)
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self) box direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node) box direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer))
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self) box direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node) box direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer))
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self) box direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node) box direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer))
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self) box direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node) box direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor))
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self) box direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node) box direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor))
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self) box direction minParticlesPerSecond maxParticlesPerSecond minStartColor))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node) box direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self) box direction minParticlesPerSecond maxParticlesPerSecond))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node) box direction (minParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self) box direction minParticlesPerSecond))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node) box direction)
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self) box direction))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node) box)
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self) box))

(cl:defmethod create-box-emitter ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_createBoxEmitter (ff-pointer self)))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number) (outlineOnly t) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize maxStartSize)
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length outlineOnly direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize maxStartSize))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number) (outlineOnly t) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize)
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length outlineOnly direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number) (outlineOnly t) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer))
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length outlineOnly direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number) (outlineOnly t) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer))
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length outlineOnly direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number) (outlineOnly t) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer))
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length outlineOnly direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number) (outlineOnly t) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor))
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length outlineOnly direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number) (outlineOnly t) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor))
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length outlineOnly direction minParticlesPerSecond maxParticlesPerSecond minStartColor))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number) (outlineOnly t) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length outlineOnly direction minParticlesPerSecond maxParticlesPerSecond))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number) (outlineOnly t) direction (minParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length outlineOnly direction minParticlesPerSecond))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number) (outlineOnly t) direction)
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length outlineOnly direction))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number) (outlineOnly t))
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length outlineOnly))

(cl:defmethod create-cylinder-emitter ((self iparticle-system-scene-node) center (radius cl:number) normal (length cl:number))
  (IParticleSystemSceneNode_createCylinderEmitter (ff-pointer self) center radius normal length))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize maxStartSize)
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize maxStartSize))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize)
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond minStartColor))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond maxParticlesPerSecond))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t) (minParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex minParticlesPerSecond))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer) (everyMeshVertex t))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier mbNumber everyMeshVertex))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number) (mbNumber cl:integer))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier mbNumber))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction (normalDirectionModifier cl:number))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction normalDirectionModifier))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t) direction)
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection direction))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh) (useNormalDirection t))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh useNormalDirection))

(cl:defmethod create-mesh-emitter ((self iparticle-system-scene-node) (mesh imesh))
  (IParticleSystemSceneNode_createMeshEmitter (ff-pointer self) mesh))

(cl:defmethod create-point-emitter ((self iparticle-system-scene-node) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize maxStartSize)
  (IParticleSystemSceneNode_createPointEmitter (ff-pointer self) direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize maxStartSize))

(cl:defmethod create-point-emitter ((self iparticle-system-scene-node) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize)
  (IParticleSystemSceneNode_createPointEmitter (ff-pointer self) direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize))

(cl:defmethod create-point-emitter ((self iparticle-system-scene-node) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer))
  (IParticleSystemSceneNode_createPointEmitter (ff-pointer self) direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees))

(cl:defmethod create-point-emitter ((self iparticle-system-scene-node) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer))
  (IParticleSystemSceneNode_createPointEmitter (ff-pointer self) direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax))

(cl:defmethod create-point-emitter ((self iparticle-system-scene-node) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer))
  (IParticleSystemSceneNode_createPointEmitter (ff-pointer self) direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin))

(cl:defmethod create-point-emitter ((self iparticle-system-scene-node) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor))
  (IParticleSystemSceneNode_createPointEmitter (ff-pointer self) direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor))

(cl:defmethod create-point-emitter ((self iparticle-system-scene-node) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor))
  (IParticleSystemSceneNode_createPointEmitter (ff-pointer self) direction minParticlesPerSecond maxParticlesPerSecond minStartColor))

(cl:defmethod create-point-emitter ((self iparticle-system-scene-node) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createPointEmitter (ff-pointer self) direction minParticlesPerSecond maxParticlesPerSecond))

(cl:defmethod create-point-emitter ((self iparticle-system-scene-node) direction (minParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createPointEmitter (ff-pointer self) direction minParticlesPerSecond))

(cl:defmethod create-point-emitter ((self iparticle-system-scene-node) direction)
  (IParticleSystemSceneNode_createPointEmitter (ff-pointer self) direction))

(cl:defmethod create-point-emitter ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_createPointEmitter (ff-pointer self)))

(cl:defmethod create-ring-emitter ((self iparticle-system-scene-node) center (radius cl:number) (ringThickness cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize maxStartSize)
  (IParticleSystemSceneNode_createRingEmitter (ff-pointer self) center radius ringThickness direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize maxStartSize))

(cl:defmethod create-ring-emitter ((self iparticle-system-scene-node) center (radius cl:number) (ringThickness cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize)
  (IParticleSystemSceneNode_createRingEmitter (ff-pointer self) center radius ringThickness direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize))

(cl:defmethod create-ring-emitter ((self iparticle-system-scene-node) center (radius cl:number) (ringThickness cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer))
  (IParticleSystemSceneNode_createRingEmitter (ff-pointer self) center radius ringThickness direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees))

(cl:defmethod create-ring-emitter ((self iparticle-system-scene-node) center (radius cl:number) (ringThickness cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer))
  (IParticleSystemSceneNode_createRingEmitter (ff-pointer self) center radius ringThickness direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax))

(cl:defmethod create-ring-emitter ((self iparticle-system-scene-node) center (radius cl:number) (ringThickness cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer))
  (IParticleSystemSceneNode_createRingEmitter (ff-pointer self) center radius ringThickness direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin))

(cl:defmethod create-ring-emitter ((self iparticle-system-scene-node) center (radius cl:number) (ringThickness cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor))
  (IParticleSystemSceneNode_createRingEmitter (ff-pointer self) center radius ringThickness direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor))

(cl:defmethod create-ring-emitter ((self iparticle-system-scene-node) center (radius cl:number) (ringThickness cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor))
  (IParticleSystemSceneNode_createRingEmitter (ff-pointer self) center radius ringThickness direction minParticlesPerSecond maxParticlesPerSecond minStartColor))

(cl:defmethod create-ring-emitter ((self iparticle-system-scene-node) center (radius cl:number) (ringThickness cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createRingEmitter (ff-pointer self) center radius ringThickness direction minParticlesPerSecond maxParticlesPerSecond))

(cl:defmethod create-ring-emitter ((self iparticle-system-scene-node) center (radius cl:number) (ringThickness cl:number) direction (minParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createRingEmitter (ff-pointer self) center radius ringThickness direction minParticlesPerSecond))

(cl:defmethod create-ring-emitter ((self iparticle-system-scene-node) center (radius cl:number) (ringThickness cl:number) direction)
  (IParticleSystemSceneNode_createRingEmitter (ff-pointer self) center radius ringThickness direction))

(cl:defmethod create-ring-emitter ((self iparticle-system-scene-node) center (radius cl:number) (ringThickness cl:number))
  (IParticleSystemSceneNode_createRingEmitter (ff-pointer self) center radius ringThickness))

(cl:defmethod create-sphere-emitter ((self iparticle-system-scene-node) center (radius cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize maxStartSize)
  (IParticleSystemSceneNode_createSphereEmitter (ff-pointer self) center radius direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize maxStartSize))

(cl:defmethod create-sphere-emitter ((self iparticle-system-scene-node) center (radius cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer) minStartSize)
  (IParticleSystemSceneNode_createSphereEmitter (ff-pointer self) center radius direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees minStartSize))

(cl:defmethod create-sphere-emitter ((self iparticle-system-scene-node) center (radius cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer) (maxAngleDegrees cl:integer))
  (IParticleSystemSceneNode_createSphereEmitter (ff-pointer self) center radius direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax maxAngleDegrees))

(cl:defmethod create-sphere-emitter ((self iparticle-system-scene-node) center (radius cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer) (lifeTimeMax cl:integer))
  (IParticleSystemSceneNode_createSphereEmitter (ff-pointer self) center radius direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin lifeTimeMax))

(cl:defmethod create-sphere-emitter ((self iparticle-system-scene-node) center (radius cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor) (lifeTimeMin cl:integer))
  (IParticleSystemSceneNode_createSphereEmitter (ff-pointer self) center radius direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor lifeTimeMin))

(cl:defmethod create-sphere-emitter ((self iparticle-system-scene-node) center (radius cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor) (maxStartColor scolor))
  (IParticleSystemSceneNode_createSphereEmitter (ff-pointer self) center radius direction minParticlesPerSecond maxParticlesPerSecond minStartColor maxStartColor))

(cl:defmethod create-sphere-emitter ((self iparticle-system-scene-node) center (radius cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer) (minStartColor scolor))
  (IParticleSystemSceneNode_createSphereEmitter (ff-pointer self) center radius direction minParticlesPerSecond maxParticlesPerSecond minStartColor))

(cl:defmethod create-sphere-emitter ((self iparticle-system-scene-node) center (radius cl:number) direction (minParticlesPerSecond cl:integer) (maxParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createSphereEmitter (ff-pointer self) center radius direction minParticlesPerSecond maxParticlesPerSecond))

(cl:defmethod create-sphere-emitter ((self iparticle-system-scene-node) center (radius cl:number) direction (minParticlesPerSecond cl:integer))
  (IParticleSystemSceneNode_createSphereEmitter (ff-pointer self) center radius direction minParticlesPerSecond))

(cl:defmethod create-sphere-emitter ((self iparticle-system-scene-node) center (radius cl:number) direction)
  (IParticleSystemSceneNode_createSphereEmitter (ff-pointer self) center radius direction))

(cl:defmethod create-sphere-emitter ((self iparticle-system-scene-node) center (radius cl:number))
  (IParticleSystemSceneNode_createSphereEmitter (ff-pointer self) center radius))

(cl:defmethod create-attraction-affector ((self iparticle-system-scene-node) point (speed cl:number) (attract t) (affectX t) (affectY t) (affectZ t))
  (IParticleSystemSceneNode_createAttractionAffector (ff-pointer self) point speed attract affectX affectY affectZ))

(cl:defmethod create-attraction-affector ((self iparticle-system-scene-node) point (speed cl:number) (attract t) (affectX t) (affectY t))
  (IParticleSystemSceneNode_createAttractionAffector (ff-pointer self) point speed attract affectX affectY))

(cl:defmethod create-attraction-affector ((self iparticle-system-scene-node) point (speed cl:number) (attract t) (affectX t))
  (IParticleSystemSceneNode_createAttractionAffector (ff-pointer self) point speed attract affectX))

(cl:defmethod create-attraction-affector ((self iparticle-system-scene-node) point (speed cl:number) (attract t))
  (IParticleSystemSceneNode_createAttractionAffector (ff-pointer self) point speed attract))

(cl:defmethod create-attraction-affector ((self iparticle-system-scene-node) point (speed cl:number))
  (IParticleSystemSceneNode_createAttractionAffector (ff-pointer self) point speed))

(cl:defmethod create-attraction-affector ((self iparticle-system-scene-node) point)
  (IParticleSystemSceneNode_createAttractionAffector (ff-pointer self) point))

(cl:defmethod create-scale-particle-affector ((self iparticle-system-scene-node) scaleTo)
  (IParticleSystemSceneNode_createScaleParticleAffector (ff-pointer self) scaleTo))

(cl:defmethod create-scale-particle-affector ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_createScaleParticleAffector (ff-pointer self)))

(cl:defmethod create-fade-out-particle-affector ((self iparticle-system-scene-node) (targetColor scolor) (timeNeededToFadeOut cl:integer))
  (IParticleSystemSceneNode_createFadeOutParticleAffector (ff-pointer self) targetColor timeNeededToFadeOut))

(cl:defmethod create-fade-out-particle-affector ((self iparticle-system-scene-node) (targetColor scolor))
  (IParticleSystemSceneNode_createFadeOutParticleAffector (ff-pointer self) targetColor))

(cl:defmethod create-fade-out-particle-affector ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_createFadeOutParticleAffector (ff-pointer self)))

(cl:defmethod create-gravity-affector ((self iparticle-system-scene-node) gravity (timeForceLost cl:integer))
  (IParticleSystemSceneNode_createGravityAffector (ff-pointer self) gravity timeForceLost))

(cl:defmethod create-gravity-affector ((self iparticle-system-scene-node) gravity)
  (IParticleSystemSceneNode_createGravityAffector (ff-pointer self) gravity))

(cl:defmethod create-gravity-affector ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_createGravityAffector (ff-pointer self)))

(cl:defmethod create-rotation-affector ((self iparticle-system-scene-node) speed pivotPoint)
  (IParticleSystemSceneNode_createRotationAffector (ff-pointer self) speed pivotPoint))

(cl:defmethod create-rotation-affector ((self iparticle-system-scene-node) speed)
  (IParticleSystemSceneNode_createRotationAffector (ff-pointer self) speed))

(cl:defmethod create-rotation-affector ((self iparticle-system-scene-node))
  (IParticleSystemSceneNode_createRotationAffector (ff-pointer self)))


(cl:defclass iq3-level-mesh(irr::scene::-ianimated-mesh)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-shader ((self iq3-level-mesh) (filename cl:string) (fileNameIsValid t))
  (IQ3LevelMesh_getShader (ff-pointer self) filename fileNameIsValid))

(cl:defmethod get-shader ((self iq3-level-mesh) (filename cl:string))
  (IQ3LevelMesh_getShader (ff-pointer self) filename))

(cl:defmethod get-shader ((self iq3-level-mesh) (index cl:integer))
  (IQ3LevelMesh_getShader (ff-pointer self) index))

(cl:defmethod get-entity-list ((self iq3-level-mesh))
  (IQ3LevelMesh_getEntityList (ff-pointer self)))

(cl:defmethod get-brush-entity-mesh ((self iq3-level-mesh) (num cl:integer))
  (IQ3LevelMesh_getBrushEntityMesh (ff-pointer self) num))

(cl:defmethod get-brush-entity-mesh ((self iq3-level-mesh) ent)
  (IQ3LevelMesh_getBrushEntityMesh (ff-pointer self) ent))


(cl:defclass irandomizer(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod reset ((self irandomizer) (value cl:integer))
  (IRandomizer_reset (ff-pointer self) value))

(cl:defmethod reset ((self irandomizer))
  (IRandomizer_reset (ff-pointer self)))

(cl:defmethod rand ((self irandomizer))
  (IRandomizer_rand (ff-pointer self)))

(cl:defmethod frand ((self irandomizer))
  (IRandomizer_frand (ff-pointer self)))

(cl:defmethod rand-max ((self irandomizer))
  (IRandomizer_randMax (ff-pointer self)))


(cl:defclass ivideo-mode-list(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-video-mode-count ((self ivideo-mode-list))
  (IVideoModeList_getVideoModeCount (ff-pointer self)))

(cl:defmethod get-video-mode-resolution ((self ivideo-mode-list) (modeNumber cl:integer))
  (IVideoModeList_getVideoModeResolution (ff-pointer self) modeNumber))

(cl:defmethod get-video-mode-resolution ((self ivideo-mode-list) minSize maxSize)
  (IVideoModeList_getVideoModeResolution (ff-pointer self) minSize maxSize))

(cl:defmethod get-video-mode-depth ((self ivideo-mode-list) (modeNumber cl:integer))
  (IVideoModeList_getVideoModeDepth (ff-pointer self) modeNumber))

(cl:defmethod get-desktop-resolution ((self ivideo-mode-list))
  (IVideoModeList_getDesktopResolution (ff-pointer self)))

(cl:defmethod get-desktop-depth ((self ivideo-mode-list))
  (IVideoModeList_getDesktopDepth (ff-pointer self)))


(cl:defclass itimer(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-real-time ((self itimer))
  (ITimer_getRealTime (ff-pointer self)))

(cl:defmethod get-real-time-and-date ((self itimer))
  (ITimer_getRealTimeAndDate (ff-pointer self)))

(cl:defmethod get-time ((self itimer))
  (ITimer_getTime (ff-pointer self)))

(cl:defmethod set-time ((self itimer) (time cl:integer))
  (ITimer_setTime (ff-pointer self) time))

(cl:defmethod stop ((self itimer))
  (ITimer_stop (ff-pointer self)))

(cl:defmethod start ((self itimer))
  (ITimer_start (ff-pointer self)))

(cl:defmethod set-speed ((self itimer) (speed cl:number))
  (ITimer_setSpeed (ff-pointer self) speed))

(cl:defmethod set-speed ((self itimer))
  (ITimer_setSpeed (ff-pointer self)))

(cl:defmethod get-speed ((self itimer))
  (ITimer_getSpeed (ff-pointer self)))

(cl:defmethod is-stopped ((self itimer))
  (ITimer_isStopped (ff-pointer self)))

(cl:defmethod tick ((self itimer))
  (ITimer_tick (ff-pointer self)))


(cl:defclass irrlicht-device(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod run ((self irrlicht-device))
  (IrrlichtDevice_run (ff-pointer self)))

(cl:defmethod yield ((self irrlicht-device))
  (IrrlichtDevice_yield (ff-pointer self)))

(cl:defmethod sleep ((self irrlicht-device) (timeMs cl:integer) (pauseTimer t))
  (IrrlichtDevice_sleep (ff-pointer self) timeMs pauseTimer))

(cl:defmethod sleep ((self irrlicht-device) (timeMs cl:integer))
  (IrrlichtDevice_sleep (ff-pointer self) timeMs))

(cl:defmethod get-video-driver ((self irrlicht-device))
  (IrrlichtDevice_getVideoDriver (ff-pointer self)))

(cl:defmethod get-file-system ((self irrlicht-device))
  (IrrlichtDevice_getFileSystem (ff-pointer self)))

(cl:defmethod get-guienvironment ((self irrlicht-device))
  (IrrlichtDevice_getGUIEnvironment (ff-pointer self)))

(cl:defmethod get-scene-manager ((self irrlicht-device))
  (IrrlichtDevice_getSceneManager (ff-pointer self)))

(cl:defmethod get-cursor-control ((self irrlicht-device))
  (IrrlichtDevice_getCursorControl (ff-pointer self)))

(cl:defmethod get-logger ((self irrlicht-device))
  (IrrlichtDevice_getLogger (ff-pointer self)))

(cl:defmethod get-video-mode-list ((self irrlicht-device))
  (IrrlichtDevice_getVideoModeList (ff-pointer self)))

(cl:defmethod get-osoperator ((self irrlicht-device))
  (IrrlichtDevice_getOSOperator (ff-pointer self)))

(cl:defmethod get-timer ((self irrlicht-device))
  (IrrlichtDevice_getTimer (ff-pointer self)))

(cl:defmethod get-randomizer ((self irrlicht-device))
  (IrrlichtDevice_getRandomizer (ff-pointer self)))

(cl:defmethod set-randomizer ((self irrlicht-device) (r irandomizer))
  (IrrlichtDevice_setRandomizer (ff-pointer self) r))

(cl:defmethod create-default-randomizer ((self irrlicht-device))
  (IrrlichtDevice_createDefaultRandomizer (ff-pointer self)))

(cl:defmethod set-window-caption ((self irrlicht-device) text)
  (IrrlichtDevice_setWindowCaption (ff-pointer self) text))

(cl:defmethod is-window-active ((self irrlicht-device))
  (IrrlichtDevice_isWindowActive (ff-pointer self)))

(cl:defmethod is-window-focused ((self irrlicht-device))
  (IrrlichtDevice_isWindowFocused (ff-pointer self)))

(cl:defmethod is-window-minimized ((self irrlicht-device))
  (IrrlichtDevice_isWindowMinimized (ff-pointer self)))

(cl:defmethod is-fullscreen ((self irrlicht-device))
  (IrrlichtDevice_isFullscreen (ff-pointer self)))

(cl:defmethod get-color-format ((self irrlicht-device))
  (IrrlichtDevice_getColorFormat (ff-pointer self)))

(cl:defmethod close-device ((self irrlicht-device))
  (IrrlichtDevice_closeDevice (ff-pointer self)))

(cl:defmethod get-version ((self irrlicht-device))
  (IrrlichtDevice_getVersion (ff-pointer self)))

(cl:defmethod set-event-receiver ((self irrlicht-device) (receiver ievent-receiver))
  (IrrlichtDevice_setEventReceiver (ff-pointer self) receiver))

(cl:defmethod get-event-receiver ((self irrlicht-device))
  (IrrlichtDevice_getEventReceiver (ff-pointer self)))

(cl:defmethod post-event-from-user ((self irrlicht-device) event)
  (IrrlichtDevice_postEventFromUser (ff-pointer self) event))

(cl:defmethod set-input-receiving-scene-manager ((self irrlicht-device) sceneManager)
  (IrrlichtDevice_setInputReceivingSceneManager (ff-pointer self) sceneManager))

(cl:defmethod set-resizable ((self irrlicht-device) (resize t))
  (IrrlichtDevice_setResizable (ff-pointer self) resize))

(cl:defmethod set-resizable ((self irrlicht-device))
  (IrrlichtDevice_setResizable (ff-pointer self)))

(cl:defmethod minimize-window ((self irrlicht-device))
  (IrrlichtDevice_minimizeWindow (ff-pointer self)))

(cl:defmethod maximize-window ((self irrlicht-device))
  (IrrlichtDevice_maximizeWindow (ff-pointer self)))

(cl:defmethod restore-window ((self irrlicht-device))
  (IrrlichtDevice_restoreWindow (ff-pointer self)))

(cl:defmethod activate-joysticks ((self irrlicht-device) joystickInfo)
  (IrrlichtDevice_activateJoysticks (ff-pointer self) joystickInfo))

(cl:defmethod set-gamma-ramp ((self irrlicht-device) (red cl:number) (green cl:number) (blue cl:number) (relativebrightness cl:number) (relativecontrast cl:number))
  (IrrlichtDevice_setGammaRamp (ff-pointer self) red green blue relativebrightness relativecontrast))

(cl:defmethod get-gamma-ramp ((self irrlicht-device) red green blue brightness contrast)
  (IrrlichtDevice_getGammaRamp (ff-pointer self) red green blue brightness contrast))

(cl:defmethod clear-system-messages ((self irrlicht-device))
  (IrrlichtDevice_clearSystemMessages (ff-pointer self)))

(cl:defmethod get-type ((self irrlicht-device))
  (IrrlichtDevice_getType (ff-pointer self)))


(cl:defclass iscene-collision-manager(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-collision-point ((self iscene-collision-manager) ray (selector itriangle-selector) outCollisionPoint outTriangle outNode)
  (ISceneCollisionManager_getCollisionPoint (ff-pointer self) ray selector outCollisionPoint outTriangle outNode))

(cl:defmethod get-collision-result-position ((self iscene-collision-manager) (selector itriangle-selector) ellipsoidPosition ellipsoidRadius ellipsoidDirectionAndSpeed triout hitPosition outFalling outNode (slidingSpeed cl:number) gravityDirectionAndSpeed)
  (ISceneCollisionManager_getCollisionResultPosition (ff-pointer self) selector ellipsoidPosition ellipsoidRadius ellipsoidDirectionAndSpeed triout hitPosition outFalling outNode slidingSpeed gravityDirectionAndSpeed))

(cl:defmethod get-collision-result-position ((self iscene-collision-manager) (selector itriangle-selector) ellipsoidPosition ellipsoidRadius ellipsoidDirectionAndSpeed triout hitPosition outFalling outNode (slidingSpeed cl:number))
  (ISceneCollisionManager_getCollisionResultPosition (ff-pointer self) selector ellipsoidPosition ellipsoidRadius ellipsoidDirectionAndSpeed triout hitPosition outFalling outNode slidingSpeed))

(cl:defmethod get-collision-result-position ((self iscene-collision-manager) (selector itriangle-selector) ellipsoidPosition ellipsoidRadius ellipsoidDirectionAndSpeed triout hitPosition outFalling outNode)
  (ISceneCollisionManager_getCollisionResultPosition (ff-pointer self) selector ellipsoidPosition ellipsoidRadius ellipsoidDirectionAndSpeed triout hitPosition outFalling outNode))

(cl:defmethod get-ray-from-screen-coordinates ((self iscene-collision-manager) pos (camera icamera-scene-node))
  (ISceneCollisionManager_getRayFromScreenCoordinates (ff-pointer self) pos camera))

(cl:defmethod get-ray-from-screen-coordinates ((self iscene-collision-manager) pos)
  (ISceneCollisionManager_getRayFromScreenCoordinates (ff-pointer self) pos))

(cl:defmethod get-screen-coordinates-from3-dposition ((self iscene-collision-manager) pos (camera icamera-scene-node) (useViewPort t))
  (ISceneCollisionManager_getScreenCoordinatesFrom3DPosition (ff-pointer self) pos camera useViewPort))

(cl:defmethod get-screen-coordinates-from3-dposition ((self iscene-collision-manager) pos (camera icamera-scene-node))
  (ISceneCollisionManager_getScreenCoordinatesFrom3DPosition (ff-pointer self) pos camera))

(cl:defmethod get-screen-coordinates-from3-dposition ((self iscene-collision-manager) pos)
  (ISceneCollisionManager_getScreenCoordinatesFrom3DPosition (ff-pointer self) pos))

(cl:defmethod get-scene-node-from-screen-coordinates-bb ((self iscene-collision-manager) pos (idBitMask cl:integer) (bNoDebugObjects t) (root iscene-node))
  (ISceneCollisionManager_getSceneNodeFromScreenCoordinatesBB (ff-pointer self) pos idBitMask bNoDebugObjects root))

(cl:defmethod get-scene-node-from-screen-coordinates-bb ((self iscene-collision-manager) pos (idBitMask cl:integer) (bNoDebugObjects t))
  (ISceneCollisionManager_getSceneNodeFromScreenCoordinatesBB (ff-pointer self) pos idBitMask bNoDebugObjects))

(cl:defmethod get-scene-node-from-screen-coordinates-bb ((self iscene-collision-manager) pos (idBitMask cl:integer))
  (ISceneCollisionManager_getSceneNodeFromScreenCoordinatesBB (ff-pointer self) pos idBitMask))

(cl:defmethod get-scene-node-from-screen-coordinates-bb ((self iscene-collision-manager) pos)
  (ISceneCollisionManager_getSceneNodeFromScreenCoordinatesBB (ff-pointer self) pos))

(cl:defmethod get-scene-node-from-ray-bb ((self iscene-collision-manager) ray (idBitMask cl:integer) (bNoDebugObjects t) (root iscene-node))
  (ISceneCollisionManager_getSceneNodeFromRayBB (ff-pointer self) ray idBitMask bNoDebugObjects root))

(cl:defmethod get-scene-node-from-ray-bb ((self iscene-collision-manager) ray (idBitMask cl:integer) (bNoDebugObjects t))
  (ISceneCollisionManager_getSceneNodeFromRayBB (ff-pointer self) ray idBitMask bNoDebugObjects))

(cl:defmethod get-scene-node-from-ray-bb ((self iscene-collision-manager) ray (idBitMask cl:integer))
  (ISceneCollisionManager_getSceneNodeFromRayBB (ff-pointer self) ray idBitMask))

(cl:defmethod get-scene-node-from-ray-bb ((self iscene-collision-manager) ray)
  (ISceneCollisionManager_getSceneNodeFromRayBB (ff-pointer self) ray))

(cl:defmethod get-scene-node-from-camera-bb ((self iscene-collision-manager) (camera icamera-scene-node) (idBitMask cl:integer) (bNoDebugObjects t))
  (ISceneCollisionManager_getSceneNodeFromCameraBB (ff-pointer self) camera idBitMask bNoDebugObjects))

(cl:defmethod get-scene-node-from-camera-bb ((self iscene-collision-manager) (camera icamera-scene-node) (idBitMask cl:integer))
  (ISceneCollisionManager_getSceneNodeFromCameraBB (ff-pointer self) camera idBitMask))

(cl:defmethod get-scene-node-from-camera-bb ((self iscene-collision-manager) (camera icamera-scene-node))
  (ISceneCollisionManager_getSceneNodeFromCameraBB (ff-pointer self) camera))

(cl:defmethod get-scene-node-and-collision-point-from-ray ((self iscene-collision-manager) ray outCollisionPoint outTriangle (idBitMask cl:integer) (collisionRootNode iscene-node) (noDebugObjects t))
  (ISceneCollisionManager_getSceneNodeAndCollisionPointFromRay (ff-pointer self) ray outCollisionPoint outTriangle idBitMask collisionRootNode noDebugObjects))

(cl:defmethod get-scene-node-and-collision-point-from-ray ((self iscene-collision-manager) ray outCollisionPoint outTriangle (idBitMask cl:integer) (collisionRootNode iscene-node))
  (ISceneCollisionManager_getSceneNodeAndCollisionPointFromRay (ff-pointer self) ray outCollisionPoint outTriangle idBitMask collisionRootNode))

(cl:defmethod get-scene-node-and-collision-point-from-ray ((self iscene-collision-manager) ray outCollisionPoint outTriangle (idBitMask cl:integer))
  (ISceneCollisionManager_getSceneNodeAndCollisionPointFromRay (ff-pointer self) ray outCollisionPoint outTriangle idBitMask))

(cl:defmethod get-scene-node-and-collision-point-from-ray ((self iscene-collision-manager) ray outCollisionPoint outTriangle)
  (ISceneCollisionManager_getSceneNodeAndCollisionPointFromRay (ff-pointer self) ray outCollisionPoint outTriangle))


(cl:defclass iscene-loader(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod is-aloadable-file-extension ((self iscene-loader) filename)
  (ISceneLoader_isALoadableFileExtension (ff-pointer self) filename))

(cl:defmethod is-aloadable-file-format ((self iscene-loader) (file iread-file))
  (ISceneLoader_isALoadableFileFormat (ff-pointer self) file))

(cl:defmethod load-scene ((self iscene-loader) (file iread-file) userDataSerializer (rootNode iscene-node))
  (ISceneLoader_loadScene (ff-pointer self) file userDataSerializer rootNode))

(cl:defmethod load-scene ((self iscene-loader) (file iread-file) userDataSerializer)
  (ISceneLoader_loadScene (ff-pointer self) file userDataSerializer))

(cl:defmethod load-scene ((self iscene-loader) (file iread-file))
  (ISceneLoader_loadScene (ff-pointer self) file))


(cl:defclass iskinned-mesh(irr::scene::-ianimated-mesh)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-joint-count ((self iskinned-mesh))
  (ISkinnedMesh_getJointCount (ff-pointer self)))

(cl:defmethod get-joint-name ((self iskinned-mesh) (number cl:integer))
  (ISkinnedMesh_getJointName (ff-pointer self) number))

(cl:defmethod get-joint-number ((self iskinned-mesh) (name cl:string))
  (ISkinnedMesh_getJointNumber (ff-pointer self) name))

(cl:defmethod use-animation-from ((self iskinned-mesh) (mesh iskinned-mesh))
  (ISkinnedMesh_useAnimationFrom (ff-pointer self) (ff-pointer mesh)))

(cl:defmethod update-normals-when-animating ((self iskinned-mesh) (on t))
  (ISkinnedMesh_updateNormalsWhenAnimating (ff-pointer self) on))

(cl:defmethod set-interpolation-mode ((self iskinned-mesh) (mode cl:integer))
  (ISkinnedMesh_setInterpolationMode (ff-pointer self) mode))

(cl:defmethod animate-mesh ((self iskinned-mesh) (frame cl:number) (blend cl:number))
  (ISkinnedMesh_animateMesh (ff-pointer self) frame blend))

(cl:defmethod skin-mesh ((self iskinned-mesh))
  (ISkinnedMesh_skinMesh (ff-pointer self)))

(cl:defmethod convert-mesh-to-tangents ((self iskinned-mesh))
  (ISkinnedMesh_convertMeshToTangents (ff-pointer self)))

(cl:defmethod set-hardware-skinning ((self iskinned-mesh) (on t))
  (ISkinnedMesh_setHardwareSkinning (ff-pointer self) on))

(cl:defmethod get-mesh-buffers ((self iskinned-mesh))
  (ISkinnedMesh_getMeshBuffers (ff-pointer self)))

(cl:defmethod get-all-joints ((self iskinned-mesh))
  (ISkinnedMesh_getAllJoints (ff-pointer self)))

(cl:defmethod get-all-joints ((self iskinned-mesh))
  (ISkinnedMesh_getAllJoints (ff-pointer self)))

(cl:defmethod finalize ((self iskinned-mesh))
  (ISkinnedMesh_finalize (ff-pointer self)))

(cl:defmethod add-mesh-buffer ((self iskinned-mesh))
  (ISkinnedMesh_addMeshBuffer (ff-pointer self)))

(cl:defmethod add-joint ((self iskinned-mesh) parent)
  (ISkinnedMesh_addJoint (ff-pointer self) parent))

(cl:defmethod add-joint ((self iskinned-mesh))
  (ISkinnedMesh_addJoint (ff-pointer self)))

(cl:defmethod add-weight ((self iskinned-mesh) joint)
  (ISkinnedMesh_addWeight (ff-pointer self) joint))

(cl:defmethod add-position-key ((self iskinned-mesh) joint)
  (ISkinnedMesh_addPositionKey (ff-pointer self) joint))

(cl:defmethod add-scale-key ((self iskinned-mesh) joint)
  (ISkinnedMesh_addScaleKey (ff-pointer self) joint))

(cl:defmethod add-rotation-key ((self iskinned-mesh) joint)
  (ISkinnedMesh_addRotationKey (ff-pointer self) joint))

(cl:defmethod is-static ((self iskinned-mesh))
  (ISkinnedMesh_isStatic (ff-pointer self)))


(cl:defclass iscene-manager(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-mesh ((self iscene-manager) filename)
  (ISceneManager_getMesh (ff-pointer self) filename))

(cl:defmethod get-mesh ((self iscene-manager) (file iread-file))
  (ISceneManager_getMesh (ff-pointer self) file))

(cl:defmethod get-mesh-cache ((self iscene-manager))
  (ISceneManager_getMeshCache (ff-pointer self)))

(cl:defmethod get-video-driver ((self iscene-manager))
  (ISceneManager_getVideoDriver (ff-pointer self)))

(cl:defmethod get-guienvironment ((self iscene-manager))
  (ISceneManager_getGUIEnvironment (ff-pointer self)))

(cl:defmethod get-file-system ((self iscene-manager))
  (ISceneManager_getFileSystem (ff-pointer self)))

(cl:defmethod add-volume-light-scene-node ((self iscene-manager) (parent iscene-node) (id cl:integer) (subdivU cl:integer) (subdivV cl:integer) (foot scolor) (tail scolor) position rotation scale)
  (ISceneManager_addVolumeLightSceneNode (ff-pointer self) parent id subdivU subdivV foot tail position rotation scale))

(cl:defmethod add-volume-light-scene-node ((self iscene-manager) (parent iscene-node) (id cl:integer) (subdivU cl:integer) (subdivV cl:integer) (foot scolor) (tail scolor) position rotation)
  (ISceneManager_addVolumeLightSceneNode (ff-pointer self) parent id subdivU subdivV foot tail position rotation))

(cl:defmethod add-volume-light-scene-node ((self iscene-manager) (parent iscene-node) (id cl:integer) (subdivU cl:integer) (subdivV cl:integer) (foot scolor) (tail scolor) position)
  (ISceneManager_addVolumeLightSceneNode (ff-pointer self) parent id subdivU subdivV foot tail position))

(cl:defmethod add-volume-light-scene-node ((self iscene-manager) (parent iscene-node) (id cl:integer) (subdivU cl:integer) (subdivV cl:integer) (foot scolor) (tail scolor))
  (ISceneManager_addVolumeLightSceneNode (ff-pointer self) parent id subdivU subdivV foot tail))

(cl:defmethod add-volume-light-scene-node ((self iscene-manager) (parent iscene-node) (id cl:integer) (subdivU cl:integer) (subdivV cl:integer) (foot scolor))
  (ISceneManager_addVolumeLightSceneNode (ff-pointer self) parent id subdivU subdivV foot))

(cl:defmethod add-volume-light-scene-node ((self iscene-manager) (parent iscene-node) (id cl:integer) (subdivU cl:integer) (subdivV cl:integer))
  (ISceneManager_addVolumeLightSceneNode (ff-pointer self) parent id subdivU subdivV))

(cl:defmethod add-volume-light-scene-node ((self iscene-manager) (parent iscene-node) (id cl:integer) (subdivU cl:integer))
  (ISceneManager_addVolumeLightSceneNode (ff-pointer self) parent id subdivU))

(cl:defmethod add-volume-light-scene-node ((self iscene-manager) (parent iscene-node) (id cl:integer))
  (ISceneManager_addVolumeLightSceneNode (ff-pointer self) parent id))

(cl:defmethod add-volume-light-scene-node ((self iscene-manager) (parent iscene-node))
  (ISceneManager_addVolumeLightSceneNode (ff-pointer self) parent))

(cl:defmethod add-volume-light-scene-node ((self iscene-manager))
  (ISceneManager_addVolumeLightSceneNode (ff-pointer self)))

(cl:defmethod add-cube-scene-node ((self iscene-manager) (size cl:number) (parent iscene-node) (id cl:integer) position rotation scale)
  (ISceneManager_addCubeSceneNode (ff-pointer self) size parent id position rotation scale))

(cl:defmethod add-cube-scene-node ((self iscene-manager) (size cl:number) (parent iscene-node) (id cl:integer) position rotation)
  (ISceneManager_addCubeSceneNode (ff-pointer self) size parent id position rotation))

(cl:defmethod add-cube-scene-node ((self iscene-manager) (size cl:number) (parent iscene-node) (id cl:integer) position)
  (ISceneManager_addCubeSceneNode (ff-pointer self) size parent id position))

(cl:defmethod add-cube-scene-node ((self iscene-manager) (size cl:number) (parent iscene-node) (id cl:integer))
  (ISceneManager_addCubeSceneNode (ff-pointer self) size parent id))

(cl:defmethod add-cube-scene-node ((self iscene-manager) (size cl:number) (parent iscene-node))
  (ISceneManager_addCubeSceneNode (ff-pointer self) size parent))

(cl:defmethod add-cube-scene-node ((self iscene-manager) (size cl:number))
  (ISceneManager_addCubeSceneNode (ff-pointer self) size))

(cl:defmethod add-cube-scene-node ((self iscene-manager))
  (ISceneManager_addCubeSceneNode (ff-pointer self)))

(cl:defmethod add-sphere-scene-node ((self iscene-manager) (radius cl:number) (polyCount cl:integer) (parent iscene-node) (id cl:integer) position rotation scale)
  (ISceneManager_addSphereSceneNode (ff-pointer self) radius polyCount parent id position rotation scale))

(cl:defmethod add-sphere-scene-node ((self iscene-manager) (radius cl:number) (polyCount cl:integer) (parent iscene-node) (id cl:integer) position rotation)
  (ISceneManager_addSphereSceneNode (ff-pointer self) radius polyCount parent id position rotation))

(cl:defmethod add-sphere-scene-node ((self iscene-manager) (radius cl:number) (polyCount cl:integer) (parent iscene-node) (id cl:integer) position)
  (ISceneManager_addSphereSceneNode (ff-pointer self) radius polyCount parent id position))

(cl:defmethod add-sphere-scene-node ((self iscene-manager) (radius cl:number) (polyCount cl:integer) (parent iscene-node) (id cl:integer))
  (ISceneManager_addSphereSceneNode (ff-pointer self) radius polyCount parent id))

(cl:defmethod add-sphere-scene-node ((self iscene-manager) (radius cl:number) (polyCount cl:integer) (parent iscene-node))
  (ISceneManager_addSphereSceneNode (ff-pointer self) radius polyCount parent))

(cl:defmethod add-sphere-scene-node ((self iscene-manager) (radius cl:number) (polyCount cl:integer))
  (ISceneManager_addSphereSceneNode (ff-pointer self) radius polyCount))

(cl:defmethod add-sphere-scene-node ((self iscene-manager) (radius cl:number))
  (ISceneManager_addSphereSceneNode (ff-pointer self) radius))

(cl:defmethod add-sphere-scene-node ((self iscene-manager))
  (ISceneManager_addSphereSceneNode (ff-pointer self)))

(cl:defmethod add-animated-mesh-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node) (id cl:integer) position rotation scale (alsoAddIfMeshPointerZero t))
  (ISceneManager_addAnimatedMeshSceneNode (ff-pointer self) mesh parent id position rotation scale alsoAddIfMeshPointerZero))

(cl:defmethod add-animated-mesh-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node) (id cl:integer) position rotation scale)
  (ISceneManager_addAnimatedMeshSceneNode (ff-pointer self) mesh parent id position rotation scale))

(cl:defmethod add-animated-mesh-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node) (id cl:integer) position rotation)
  (ISceneManager_addAnimatedMeshSceneNode (ff-pointer self) mesh parent id position rotation))

(cl:defmethod add-animated-mesh-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node) (id cl:integer) position)
  (ISceneManager_addAnimatedMeshSceneNode (ff-pointer self) mesh parent id position))

(cl:defmethod add-animated-mesh-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node) (id cl:integer))
  (ISceneManager_addAnimatedMeshSceneNode (ff-pointer self) mesh parent id))

(cl:defmethod add-animated-mesh-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node))
  (ISceneManager_addAnimatedMeshSceneNode (ff-pointer self) mesh parent))

(cl:defmethod add-animated-mesh-scene-node ((self iscene-manager) (mesh ianimated-mesh))
  (ISceneManager_addAnimatedMeshSceneNode (ff-pointer self) mesh))

(cl:defmethod add-mesh-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node) (id cl:integer) position rotation scale (alsoAddIfMeshPointerZero t))
  (ISceneManager_addMeshSceneNode (ff-pointer self) mesh parent id position rotation scale alsoAddIfMeshPointerZero))

(cl:defmethod add-mesh-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node) (id cl:integer) position rotation scale)
  (ISceneManager_addMeshSceneNode (ff-pointer self) mesh parent id position rotation scale))

(cl:defmethod add-mesh-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node) (id cl:integer) position rotation)
  (ISceneManager_addMeshSceneNode (ff-pointer self) mesh parent id position rotation))

(cl:defmethod add-mesh-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node) (id cl:integer) position)
  (ISceneManager_addMeshSceneNode (ff-pointer self) mesh parent id position))

(cl:defmethod add-mesh-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node) (id cl:integer))
  (ISceneManager_addMeshSceneNode (ff-pointer self) mesh parent id))

(cl:defmethod add-mesh-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node))
  (ISceneManager_addMeshSceneNode (ff-pointer self) mesh parent))

(cl:defmethod add-mesh-scene-node ((self iscene-manager) (mesh imesh))
  (ISceneManager_addMeshSceneNode (ff-pointer self) mesh))

(cl:defmethod add-water-surface-scene-node ((self iscene-manager) (mesh imesh) (waveHeight cl:number) (waveSpeed cl:number) (waveLength cl:number) (parent iscene-node) (id cl:integer) position rotation scale)
  (ISceneManager_addWaterSurfaceSceneNode (ff-pointer self) mesh waveHeight waveSpeed waveLength parent id position rotation scale))

(cl:defmethod add-water-surface-scene-node ((self iscene-manager) (mesh imesh) (waveHeight cl:number) (waveSpeed cl:number) (waveLength cl:number) (parent iscene-node) (id cl:integer) position rotation)
  (ISceneManager_addWaterSurfaceSceneNode (ff-pointer self) mesh waveHeight waveSpeed waveLength parent id position rotation))

(cl:defmethod add-water-surface-scene-node ((self iscene-manager) (mesh imesh) (waveHeight cl:number) (waveSpeed cl:number) (waveLength cl:number) (parent iscene-node) (id cl:integer) position)
  (ISceneManager_addWaterSurfaceSceneNode (ff-pointer self) mesh waveHeight waveSpeed waveLength parent id position))

(cl:defmethod add-water-surface-scene-node ((self iscene-manager) (mesh imesh) (waveHeight cl:number) (waveSpeed cl:number) (waveLength cl:number) (parent iscene-node) (id cl:integer))
  (ISceneManager_addWaterSurfaceSceneNode (ff-pointer self) mesh waveHeight waveSpeed waveLength parent id))

(cl:defmethod add-water-surface-scene-node ((self iscene-manager) (mesh imesh) (waveHeight cl:number) (waveSpeed cl:number) (waveLength cl:number) (parent iscene-node))
  (ISceneManager_addWaterSurfaceSceneNode (ff-pointer self) mesh waveHeight waveSpeed waveLength parent))

(cl:defmethod add-water-surface-scene-node ((self iscene-manager) (mesh imesh) (waveHeight cl:number) (waveSpeed cl:number) (waveLength cl:number))
  (ISceneManager_addWaterSurfaceSceneNode (ff-pointer self) mesh waveHeight waveSpeed waveLength))

(cl:defmethod add-water-surface-scene-node ((self iscene-manager) (mesh imesh) (waveHeight cl:number) (waveSpeed cl:number))
  (ISceneManager_addWaterSurfaceSceneNode (ff-pointer self) mesh waveHeight waveSpeed))

(cl:defmethod add-water-surface-scene-node ((self iscene-manager) (mesh imesh) (waveHeight cl:number))
  (ISceneManager_addWaterSurfaceSceneNode (ff-pointer self) mesh waveHeight))

(cl:defmethod add-water-surface-scene-node ((self iscene-manager) (mesh imesh))
  (ISceneManager_addWaterSurfaceSceneNode (ff-pointer self) mesh))

(cl:defmethod add-octree-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node) (id cl:integer) (minimalPolysPerNode cl:integer) (alsoAddIfMeshPointerZero t))
  (ISceneManager_addOctreeSceneNode (ff-pointer self) mesh parent id minimalPolysPerNode alsoAddIfMeshPointerZero))

(cl:defmethod add-octree-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node) (id cl:integer) (minimalPolysPerNode cl:integer))
  (ISceneManager_addOctreeSceneNode (ff-pointer self) mesh parent id minimalPolysPerNode))

(cl:defmethod add-octree-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node) (id cl:integer))
  (ISceneManager_addOctreeSceneNode (ff-pointer self) mesh parent id))

(cl:defmethod add-octree-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node))
  (ISceneManager_addOctreeSceneNode (ff-pointer self) mesh parent))

(cl:defmethod add-octree-scene-node ((self iscene-manager) (mesh ianimated-mesh))
  (ISceneManager_addOctreeSceneNode (ff-pointer self) mesh))

(cl:defmethod add-oct-tree-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node) (id cl:integer) (minimalPolysPerNode cl:integer) (alsoAddIfMeshPointerZero t))
  (ISceneManager_addOctTreeSceneNode (ff-pointer self) mesh parent id minimalPolysPerNode alsoAddIfMeshPointerZero))

(cl:defmethod add-oct-tree-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node) (id cl:integer) (minimalPolysPerNode cl:integer))
  (ISceneManager_addOctTreeSceneNode (ff-pointer self) mesh parent id minimalPolysPerNode))

(cl:defmethod add-oct-tree-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node) (id cl:integer))
  (ISceneManager_addOctTreeSceneNode (ff-pointer self) mesh parent id))

(cl:defmethod add-oct-tree-scene-node ((self iscene-manager) (mesh ianimated-mesh) (parent iscene-node))
  (ISceneManager_addOctTreeSceneNode (ff-pointer self) mesh parent))

(cl:defmethod add-oct-tree-scene-node ((self iscene-manager) (mesh ianimated-mesh))
  (ISceneManager_addOctTreeSceneNode (ff-pointer self) mesh))

(cl:defmethod add-octree-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node) (id cl:integer) (minimalPolysPerNode cl:integer) (alsoAddIfMeshPointerZero t))
  (ISceneManager_addOctreeSceneNode (ff-pointer self) mesh parent id minimalPolysPerNode alsoAddIfMeshPointerZero))

(cl:defmethod add-octree-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node) (id cl:integer) (minimalPolysPerNode cl:integer))
  (ISceneManager_addOctreeSceneNode (ff-pointer self) mesh parent id minimalPolysPerNode))

(cl:defmethod add-octree-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node) (id cl:integer))
  (ISceneManager_addOctreeSceneNode (ff-pointer self) mesh parent id))

(cl:defmethod add-octree-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node))
  (ISceneManager_addOctreeSceneNode (ff-pointer self) mesh parent))

(cl:defmethod add-octree-scene-node ((self iscene-manager) (mesh imesh))
  (ISceneManager_addOctreeSceneNode (ff-pointer self) mesh))

(cl:defmethod add-oct-tree-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node) (id cl:integer) (minimalPolysPerNode cl:integer) (alsoAddIfMeshPointerZero t))
  (ISceneManager_addOctTreeSceneNode (ff-pointer self) mesh parent id minimalPolysPerNode alsoAddIfMeshPointerZero))

(cl:defmethod add-oct-tree-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node) (id cl:integer) (minimalPolysPerNode cl:integer))
  (ISceneManager_addOctTreeSceneNode (ff-pointer self) mesh parent id minimalPolysPerNode))

(cl:defmethod add-oct-tree-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node) (id cl:integer))
  (ISceneManager_addOctTreeSceneNode (ff-pointer self) mesh parent id))

(cl:defmethod add-oct-tree-scene-node ((self iscene-manager) (mesh imesh) (parent iscene-node))
  (ISceneManager_addOctTreeSceneNode (ff-pointer self) mesh parent))

(cl:defmethod add-oct-tree-scene-node ((self iscene-manager) (mesh imesh))
  (ISceneManager_addOctTreeSceneNode (ff-pointer self) mesh))

(cl:defmethod add-camera-scene-node ((self iscene-manager) (parent iscene-node) position lookat (id cl:integer) (makeActive t))
  (ISceneManager_addCameraSceneNode (ff-pointer self) parent position lookat id makeActive))

(cl:defmethod add-camera-scene-node ((self iscene-manager) (parent iscene-node) position lookat (id cl:integer))
  (ISceneManager_addCameraSceneNode (ff-pointer self) parent position lookat id))

(cl:defmethod add-camera-scene-node ((self iscene-manager) (parent iscene-node) position lookat)
  (ISceneManager_addCameraSceneNode (ff-pointer self) parent position lookat))

(cl:defmethod add-camera-scene-node ((self iscene-manager) (parent iscene-node) position)
  (ISceneManager_addCameraSceneNode (ff-pointer self) parent position))

(cl:defmethod add-camera-scene-node ((self iscene-manager) (parent iscene-node))
  (ISceneManager_addCameraSceneNode (ff-pointer self) parent))

(cl:defmethod add-camera-scene-node ((self iscene-manager))
  (ISceneManager_addCameraSceneNode (ff-pointer self)))

(cl:defmethod add-camera-scene-node-maya ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (zoomSpeed cl:number) (translationSpeed cl:number) (id cl:integer) (distance cl:number) (makeActive t))
  (ISceneManager_addCameraSceneNodeMaya (ff-pointer self) parent rotateSpeed zoomSpeed translationSpeed id distance makeActive))

(cl:defmethod add-camera-scene-node-maya ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (zoomSpeed cl:number) (translationSpeed cl:number) (id cl:integer) (distance cl:number))
  (ISceneManager_addCameraSceneNodeMaya (ff-pointer self) parent rotateSpeed zoomSpeed translationSpeed id distance))

(cl:defmethod add-camera-scene-node-maya ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (zoomSpeed cl:number) (translationSpeed cl:number) (id cl:integer))
  (ISceneManager_addCameraSceneNodeMaya (ff-pointer self) parent rotateSpeed zoomSpeed translationSpeed id))

(cl:defmethod add-camera-scene-node-maya ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (zoomSpeed cl:number) (translationSpeed cl:number))
  (ISceneManager_addCameraSceneNodeMaya (ff-pointer self) parent rotateSpeed zoomSpeed translationSpeed))

(cl:defmethod add-camera-scene-node-maya ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (zoomSpeed cl:number))
  (ISceneManager_addCameraSceneNodeMaya (ff-pointer self) parent rotateSpeed zoomSpeed))

(cl:defmethod add-camera-scene-node-maya ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number))
  (ISceneManager_addCameraSceneNodeMaya (ff-pointer self) parent rotateSpeed))

(cl:defmethod add-camera-scene-node-maya ((self iscene-manager) (parent iscene-node))
  (ISceneManager_addCameraSceneNodeMaya (ff-pointer self) parent))

(cl:defmethod add-camera-scene-node-maya ((self iscene-manager))
  (ISceneManager_addCameraSceneNodeMaya (ff-pointer self)))

(cl:defmethod add-camera-scene-node-fps ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (moveSpeed cl:number) (id cl:integer) keyMapArray (keyMapSize cl:integer) (noVerticalMovement t) (jumpSpeed cl:number) (invertMouse t) (makeActive t))
  (ISceneManager_addCameraSceneNodeFPS (ff-pointer self) parent rotateSpeed moveSpeed id keyMapArray keyMapSize noVerticalMovement jumpSpeed invertMouse makeActive))

(cl:defmethod add-camera-scene-node-fps ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (moveSpeed cl:number) (id cl:integer) keyMapArray (keyMapSize cl:integer) (noVerticalMovement t) (jumpSpeed cl:number) (invertMouse t))
  (ISceneManager_addCameraSceneNodeFPS (ff-pointer self) parent rotateSpeed moveSpeed id keyMapArray keyMapSize noVerticalMovement jumpSpeed invertMouse))

(cl:defmethod add-camera-scene-node-fps ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (moveSpeed cl:number) (id cl:integer) keyMapArray (keyMapSize cl:integer) (noVerticalMovement t) (jumpSpeed cl:number))
  (ISceneManager_addCameraSceneNodeFPS (ff-pointer self) parent rotateSpeed moveSpeed id keyMapArray keyMapSize noVerticalMovement jumpSpeed))

(cl:defmethod add-camera-scene-node-fps ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (moveSpeed cl:number) (id cl:integer) keyMapArray (keyMapSize cl:integer) (noVerticalMovement t))
  (ISceneManager_addCameraSceneNodeFPS (ff-pointer self) parent rotateSpeed moveSpeed id keyMapArray keyMapSize noVerticalMovement))

(cl:defmethod add-camera-scene-node-fps ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (moveSpeed cl:number) (id cl:integer) keyMapArray (keyMapSize cl:integer))
  (ISceneManager_addCameraSceneNodeFPS (ff-pointer self) parent rotateSpeed moveSpeed id keyMapArray keyMapSize))

(cl:defmethod add-camera-scene-node-fps ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (moveSpeed cl:number) (id cl:integer) keyMapArray)
  (ISceneManager_addCameraSceneNodeFPS (ff-pointer self) parent rotateSpeed moveSpeed id keyMapArray))

(cl:defmethod add-camera-scene-node-fps ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (moveSpeed cl:number) (id cl:integer))
  (ISceneManager_addCameraSceneNodeFPS (ff-pointer self) parent rotateSpeed moveSpeed id))

(cl:defmethod add-camera-scene-node-fps ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number) (moveSpeed cl:number))
  (ISceneManager_addCameraSceneNodeFPS (ff-pointer self) parent rotateSpeed moveSpeed))

(cl:defmethod add-camera-scene-node-fps ((self iscene-manager) (parent iscene-node) (rotateSpeed cl:number))
  (ISceneManager_addCameraSceneNodeFPS (ff-pointer self) parent rotateSpeed))

(cl:defmethod add-camera-scene-node-fps ((self iscene-manager) (parent iscene-node))
  (ISceneManager_addCameraSceneNodeFPS (ff-pointer self) parent))

(cl:defmethod add-camera-scene-node-fps ((self iscene-manager))
  (ISceneManager_addCameraSceneNodeFPS (ff-pointer self)))

(cl:defmethod add-light-scene-node ((self iscene-manager) (parent iscene-node) position (color scolorf) (radius cl:number) (id cl:integer))
  (ISceneManager_addLightSceneNode (ff-pointer self) parent position color radius id))

(cl:defmethod add-light-scene-node ((self iscene-manager) (parent iscene-node) position (color scolorf) (radius cl:number))
  (ISceneManager_addLightSceneNode (ff-pointer self) parent position color radius))

(cl:defmethod add-light-scene-node ((self iscene-manager) (parent iscene-node) position (color scolorf))
  (ISceneManager_addLightSceneNode (ff-pointer self) parent position color))

(cl:defmethod add-light-scene-node ((self iscene-manager) (parent iscene-node) position)
  (ISceneManager_addLightSceneNode (ff-pointer self) parent position))

(cl:defmethod add-light-scene-node ((self iscene-manager) (parent iscene-node))
  (ISceneManager_addLightSceneNode (ff-pointer self) parent))

(cl:defmethod add-light-scene-node ((self iscene-manager))
  (ISceneManager_addLightSceneNode (ff-pointer self)))

(cl:defmethod add-billboard-scene-node ((self iscene-manager) (parent iscene-node) size position (id cl:integer) (colorTop scolor) (colorBottom scolor))
  (ISceneManager_addBillboardSceneNode (ff-pointer self) parent size position id colorTop colorBottom))

(cl:defmethod add-billboard-scene-node ((self iscene-manager) (parent iscene-node) size position (id cl:integer) (colorTop scolor))
  (ISceneManager_addBillboardSceneNode (ff-pointer self) parent size position id colorTop))

(cl:defmethod add-billboard-scene-node ((self iscene-manager) (parent iscene-node) size position (id cl:integer))
  (ISceneManager_addBillboardSceneNode (ff-pointer self) parent size position id))

(cl:defmethod add-billboard-scene-node ((self iscene-manager) (parent iscene-node) size position)
  (ISceneManager_addBillboardSceneNode (ff-pointer self) parent size position))

(cl:defmethod add-billboard-scene-node ((self iscene-manager) (parent iscene-node) size)
  (ISceneManager_addBillboardSceneNode (ff-pointer self) parent size))

(cl:defmethod add-billboard-scene-node ((self iscene-manager) (parent iscene-node))
  (ISceneManager_addBillboardSceneNode (ff-pointer self) parent))

(cl:defmethod add-billboard-scene-node ((self iscene-manager))
  (ISceneManager_addBillboardSceneNode (ff-pointer self)))

(cl:defmethod add-sky-box-scene-node ((self iscene-manager) (top itexture) (bottom itexture) (left itexture) (right itexture) (front itexture) (back itexture) (parent iscene-node) (id cl:integer))
  (ISceneManager_addSkyBoxSceneNode (ff-pointer self) top bottom left right front back parent id))

(cl:defmethod add-sky-box-scene-node ((self iscene-manager) (top itexture) (bottom itexture) (left itexture) (right itexture) (front itexture) (back itexture) (parent iscene-node))
  (ISceneManager_addSkyBoxSceneNode (ff-pointer self) top bottom left right front back parent))

(cl:defmethod add-sky-box-scene-node ((self iscene-manager) (top itexture) (bottom itexture) (left itexture) (right itexture) (front itexture) (back itexture))
  (ISceneManager_addSkyBoxSceneNode (ff-pointer self) top bottom left right front back))

(cl:defmethod add-sky-dome-scene-node ((self iscene-manager) (texture itexture) (horiRes cl:integer) (vertRes cl:integer) (texturePercentage cl:number) (spherePercentage cl:number) (radius cl:number) (parent iscene-node) (id cl:integer))
  (ISceneManager_addSkyDomeSceneNode (ff-pointer self) texture horiRes vertRes texturePercentage spherePercentage radius parent id))

(cl:defmethod add-sky-dome-scene-node ((self iscene-manager) (texture itexture) (horiRes cl:integer) (vertRes cl:integer) (texturePercentage cl:number) (spherePercentage cl:number) (radius cl:number) (parent iscene-node))
  (ISceneManager_addSkyDomeSceneNode (ff-pointer self) texture horiRes vertRes texturePercentage spherePercentage radius parent))

(cl:defmethod add-sky-dome-scene-node ((self iscene-manager) (texture itexture) (horiRes cl:integer) (vertRes cl:integer) (texturePercentage cl:number) (spherePercentage cl:number) (radius cl:number))
  (ISceneManager_addSkyDomeSceneNode (ff-pointer self) texture horiRes vertRes texturePercentage spherePercentage radius))

(cl:defmethod add-sky-dome-scene-node ((self iscene-manager) (texture itexture) (horiRes cl:integer) (vertRes cl:integer) (texturePercentage cl:number) (spherePercentage cl:number))
  (ISceneManager_addSkyDomeSceneNode (ff-pointer self) texture horiRes vertRes texturePercentage spherePercentage))

(cl:defmethod add-sky-dome-scene-node ((self iscene-manager) (texture itexture) (horiRes cl:integer) (vertRes cl:integer) (texturePercentage cl:number))
  (ISceneManager_addSkyDomeSceneNode (ff-pointer self) texture horiRes vertRes texturePercentage))

(cl:defmethod add-sky-dome-scene-node ((self iscene-manager) (texture itexture) (horiRes cl:integer) (vertRes cl:integer))
  (ISceneManager_addSkyDomeSceneNode (ff-pointer self) texture horiRes vertRes))

(cl:defmethod add-sky-dome-scene-node ((self iscene-manager) (texture itexture) (horiRes cl:integer))
  (ISceneManager_addSkyDomeSceneNode (ff-pointer self) texture horiRes))

(cl:defmethod add-sky-dome-scene-node ((self iscene-manager) (texture itexture))
  (ISceneManager_addSkyDomeSceneNode (ff-pointer self) texture))

(cl:defmethod add-particle-system-scene-node ((self iscene-manager) (withDefaultEmitter t) (parent iscene-node) (id cl:integer) position rotation scale)
  (ISceneManager_addParticleSystemSceneNode (ff-pointer self) withDefaultEmitter parent id position rotation scale))

(cl:defmethod add-particle-system-scene-node ((self iscene-manager) (withDefaultEmitter t) (parent iscene-node) (id cl:integer) position rotation)
  (ISceneManager_addParticleSystemSceneNode (ff-pointer self) withDefaultEmitter parent id position rotation))

(cl:defmethod add-particle-system-scene-node ((self iscene-manager) (withDefaultEmitter t) (parent iscene-node) (id cl:integer) position)
  (ISceneManager_addParticleSystemSceneNode (ff-pointer self) withDefaultEmitter parent id position))

(cl:defmethod add-particle-system-scene-node ((self iscene-manager) (withDefaultEmitter t) (parent iscene-node) (id cl:integer))
  (ISceneManager_addParticleSystemSceneNode (ff-pointer self) withDefaultEmitter parent id))

(cl:defmethod add-particle-system-scene-node ((self iscene-manager) (withDefaultEmitter t) (parent iscene-node))
  (ISceneManager_addParticleSystemSceneNode (ff-pointer self) withDefaultEmitter parent))

(cl:defmethod add-particle-system-scene-node ((self iscene-manager) (withDefaultEmitter t))
  (ISceneManager_addParticleSystemSceneNode (ff-pointer self) withDefaultEmitter))

(cl:defmethod add-particle-system-scene-node ((self iscene-manager))
  (ISceneManager_addParticleSystemSceneNode (ff-pointer self)))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) heightMapFileName (parent iscene-node) (id cl:integer) position rotation scale (vertexColor scolor) (maxLOD cl:integer) (patchSize cl:integer) (smoothFactor cl:integer) (addAlsoIfHeightmapEmpty t))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFileName parent id position rotation scale vertexColor maxLOD patchSize smoothFactor addAlsoIfHeightmapEmpty))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) heightMapFileName (parent iscene-node) (id cl:integer) position rotation scale (vertexColor scolor) (maxLOD cl:integer) (patchSize cl:integer) (smoothFactor cl:integer))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFileName parent id position rotation scale vertexColor maxLOD patchSize smoothFactor))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) heightMapFileName (parent iscene-node) (id cl:integer) position rotation scale (vertexColor scolor) (maxLOD cl:integer) (patchSize cl:integer))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFileName parent id position rotation scale vertexColor maxLOD patchSize))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) heightMapFileName (parent iscene-node) (id cl:integer) position rotation scale (vertexColor scolor) (maxLOD cl:integer))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFileName parent id position rotation scale vertexColor maxLOD))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) heightMapFileName (parent iscene-node) (id cl:integer) position rotation scale (vertexColor scolor))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFileName parent id position rotation scale vertexColor))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) heightMapFileName (parent iscene-node) (id cl:integer) position rotation scale)
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFileName parent id position rotation scale))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) heightMapFileName (parent iscene-node) (id cl:integer) position rotation)
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFileName parent id position rotation))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) heightMapFileName (parent iscene-node) (id cl:integer) position)
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFileName parent id position))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) heightMapFileName (parent iscene-node) (id cl:integer))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFileName parent id))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) heightMapFileName (parent iscene-node))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFileName parent))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) heightMapFileName)
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFileName))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) (heightMapFile iread-file) (parent iscene-node) (id cl:integer) position rotation scale (vertexColor scolor) (maxLOD cl:integer) (patchSize cl:integer) (smoothFactor cl:integer) (addAlsoIfHeightmapEmpty t))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFile parent id position rotation scale vertexColor maxLOD patchSize smoothFactor addAlsoIfHeightmapEmpty))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) (heightMapFile iread-file) (parent iscene-node) (id cl:integer) position rotation scale (vertexColor scolor) (maxLOD cl:integer) (patchSize cl:integer) (smoothFactor cl:integer))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFile parent id position rotation scale vertexColor maxLOD patchSize smoothFactor))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) (heightMapFile iread-file) (parent iscene-node) (id cl:integer) position rotation scale (vertexColor scolor) (maxLOD cl:integer) (patchSize cl:integer))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFile parent id position rotation scale vertexColor maxLOD patchSize))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) (heightMapFile iread-file) (parent iscene-node) (id cl:integer) position rotation scale (vertexColor scolor) (maxLOD cl:integer))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFile parent id position rotation scale vertexColor maxLOD))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) (heightMapFile iread-file) (parent iscene-node) (id cl:integer) position rotation scale (vertexColor scolor))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFile parent id position rotation scale vertexColor))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) (heightMapFile iread-file) (parent iscene-node) (id cl:integer) position rotation scale)
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFile parent id position rotation scale))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) (heightMapFile iread-file) (parent iscene-node) (id cl:integer) position rotation)
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFile parent id position rotation))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) (heightMapFile iread-file) (parent iscene-node) (id cl:integer) position)
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFile parent id position))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) (heightMapFile iread-file) (parent iscene-node) (id cl:integer))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFile parent id))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) (heightMapFile iread-file) (parent iscene-node))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFile parent))

(cl:defmethod add-terrain-scene-node ((self iscene-manager) (heightMapFile iread-file))
  (ISceneManager_addTerrainSceneNode (ff-pointer self) heightMapFile))

(cl:defmethod add-quake3-scene-node ((self iscene-manager) (meshBuffer imesh-buffer) shader (parent iscene-node) (id cl:integer))
  (ISceneManager_addQuake3SceneNode (ff-pointer self) meshBuffer shader parent id))

(cl:defmethod add-quake3-scene-node ((self iscene-manager) (meshBuffer imesh-buffer) shader (parent iscene-node))
  (ISceneManager_addQuake3SceneNode (ff-pointer self) meshBuffer shader parent))

(cl:defmethod add-quake3-scene-node ((self iscene-manager) (meshBuffer imesh-buffer) shader)
  (ISceneManager_addQuake3SceneNode (ff-pointer self) meshBuffer shader))

(cl:defmethod add-empty-scene-node ((self iscene-manager) (parent iscene-node) (id cl:integer))
  (ISceneManager_addEmptySceneNode (ff-pointer self) parent id))

(cl:defmethod add-empty-scene-node ((self iscene-manager) (parent iscene-node))
  (ISceneManager_addEmptySceneNode (ff-pointer self) parent))

(cl:defmethod add-empty-scene-node ((self iscene-manager))
  (ISceneManager_addEmptySceneNode (ff-pointer self)))

(cl:defmethod add-dummy-transformation-scene-node ((self iscene-manager) (parent iscene-node) (id cl:integer))
  (ISceneManager_addDummyTransformationSceneNode (ff-pointer self) parent id))

(cl:defmethod add-dummy-transformation-scene-node ((self iscene-manager) (parent iscene-node))
  (ISceneManager_addDummyTransformationSceneNode (ff-pointer self) parent))

(cl:defmethod add-dummy-transformation-scene-node ((self iscene-manager))
  (ISceneManager_addDummyTransformationSceneNode (ff-pointer self)))

(cl:defmethod add-text-scene-node ((self iscene-manager) (font iguifont) text (color scolor) (parent iscene-node) position (id cl:integer))
  (ISceneManager_addTextSceneNode (ff-pointer self) font text color parent position id))

(cl:defmethod add-text-scene-node ((self iscene-manager) (font iguifont) text (color scolor) (parent iscene-node) position)
  (ISceneManager_addTextSceneNode (ff-pointer self) font text color parent position))

(cl:defmethod add-text-scene-node ((self iscene-manager) (font iguifont) text (color scolor) (parent iscene-node))
  (ISceneManager_addTextSceneNode (ff-pointer self) font text color parent))

(cl:defmethod add-text-scene-node ((self iscene-manager) (font iguifont) text (color scolor))
  (ISceneManager_addTextSceneNode (ff-pointer self) font text color))

(cl:defmethod add-text-scene-node ((self iscene-manager) (font iguifont) text)
  (ISceneManager_addTextSceneNode (ff-pointer self) font text))

(cl:defmethod add-billboard-text-scene-node ((self iscene-manager) (font iguifont) text (parent iscene-node) size position (id cl:integer) (colorTop scolor) (colorBottom scolor))
  (ISceneManager_addBillboardTextSceneNode (ff-pointer self) font text parent size position id colorTop colorBottom))

(cl:defmethod add-billboard-text-scene-node ((self iscene-manager) (font iguifont) text (parent iscene-node) size position (id cl:integer) (colorTop scolor))
  (ISceneManager_addBillboardTextSceneNode (ff-pointer self) font text parent size position id colorTop))

(cl:defmethod add-billboard-text-scene-node ((self iscene-manager) (font iguifont) text (parent iscene-node) size position (id cl:integer))
  (ISceneManager_addBillboardTextSceneNode (ff-pointer self) font text parent size position id))

(cl:defmethod add-billboard-text-scene-node ((self iscene-manager) (font iguifont) text (parent iscene-node) size position)
  (ISceneManager_addBillboardTextSceneNode (ff-pointer self) font text parent size position))

(cl:defmethod add-billboard-text-scene-node ((self iscene-manager) (font iguifont) text (parent iscene-node) size)
  (ISceneManager_addBillboardTextSceneNode (ff-pointer self) font text parent size))

(cl:defmethod add-billboard-text-scene-node ((self iscene-manager) (font iguifont) text (parent iscene-node))
  (ISceneManager_addBillboardTextSceneNode (ff-pointer self) font text parent))

(cl:defmethod add-billboard-text-scene-node ((self iscene-manager) (font iguifont) text)
  (ISceneManager_addBillboardTextSceneNode (ff-pointer self) font text))

(cl:defmethod add-hill-plane-mesh ((self iscene-manager) name tileSize tileCount (material smaterial) (hillHeight cl:number) countHills textureRepeatCount)
  (ISceneManager_addHillPlaneMesh (ff-pointer self) name tileSize tileCount material hillHeight countHills textureRepeatCount))

(cl:defmethod add-hill-plane-mesh ((self iscene-manager) name tileSize tileCount (material smaterial) (hillHeight cl:number) countHills)
  (ISceneManager_addHillPlaneMesh (ff-pointer self) name tileSize tileCount material hillHeight countHills))

(cl:defmethod add-hill-plane-mesh ((self iscene-manager) name tileSize tileCount (material smaterial) (hillHeight cl:number))
  (ISceneManager_addHillPlaneMesh (ff-pointer self) name tileSize tileCount material hillHeight))

(cl:defmethod add-hill-plane-mesh ((self iscene-manager) name tileSize tileCount (material smaterial))
  (ISceneManager_addHillPlaneMesh (ff-pointer self) name tileSize tileCount material))

(cl:defmethod add-hill-plane-mesh ((self iscene-manager) name tileSize tileCount)
  (ISceneManager_addHillPlaneMesh (ff-pointer self) name tileSize tileCount))

(cl:defmethod add-terrain-mesh ((self iscene-manager) meshname (texture iimage) (heightmap iimage) stretchSize (maxHeight cl:number) defaultVertexBlockSize)
  (ISceneManager_addTerrainMesh (ff-pointer self) meshname texture heightmap stretchSize maxHeight defaultVertexBlockSize))

(cl:defmethod add-terrain-mesh ((self iscene-manager) meshname (texture iimage) (heightmap iimage) stretchSize (maxHeight cl:number))
  (ISceneManager_addTerrainMesh (ff-pointer self) meshname texture heightmap stretchSize maxHeight))

(cl:defmethod add-terrain-mesh ((self iscene-manager) meshname (texture iimage) (heightmap iimage) stretchSize)
  (ISceneManager_addTerrainMesh (ff-pointer self) meshname texture heightmap stretchSize))

(cl:defmethod add-terrain-mesh ((self iscene-manager) meshname (texture iimage) (heightmap iimage))
  (ISceneManager_addTerrainMesh (ff-pointer self) meshname texture heightmap))

(cl:defmethod add-arrow-mesh ((self iscene-manager) name (vtxColorCylinder scolor) (vtxColorCone scolor) (tesselationCylinder cl:integer) (tesselationCone cl:integer) (height cl:number) (cylinderHeight cl:number) (widthCylinder cl:number) (widthCone cl:number))
  (ISceneManager_addArrowMesh (ff-pointer self) name vtxColorCylinder vtxColorCone tesselationCylinder tesselationCone height cylinderHeight widthCylinder widthCone))

(cl:defmethod add-arrow-mesh ((self iscene-manager) name (vtxColorCylinder scolor) (vtxColorCone scolor) (tesselationCylinder cl:integer) (tesselationCone cl:integer) (height cl:number) (cylinderHeight cl:number) (widthCylinder cl:number))
  (ISceneManager_addArrowMesh (ff-pointer self) name vtxColorCylinder vtxColorCone tesselationCylinder tesselationCone height cylinderHeight widthCylinder))

(cl:defmethod add-arrow-mesh ((self iscene-manager) name (vtxColorCylinder scolor) (vtxColorCone scolor) (tesselationCylinder cl:integer) (tesselationCone cl:integer) (height cl:number) (cylinderHeight cl:number))
  (ISceneManager_addArrowMesh (ff-pointer self) name vtxColorCylinder vtxColorCone tesselationCylinder tesselationCone height cylinderHeight))

(cl:defmethod add-arrow-mesh ((self iscene-manager) name (vtxColorCylinder scolor) (vtxColorCone scolor) (tesselationCylinder cl:integer) (tesselationCone cl:integer) (height cl:number))
  (ISceneManager_addArrowMesh (ff-pointer self) name vtxColorCylinder vtxColorCone tesselationCylinder tesselationCone height))

(cl:defmethod add-arrow-mesh ((self iscene-manager) name (vtxColorCylinder scolor) (vtxColorCone scolor) (tesselationCylinder cl:integer) (tesselationCone cl:integer))
  (ISceneManager_addArrowMesh (ff-pointer self) name vtxColorCylinder vtxColorCone tesselationCylinder tesselationCone))

(cl:defmethod add-arrow-mesh ((self iscene-manager) name (vtxColorCylinder scolor) (vtxColorCone scolor) (tesselationCylinder cl:integer))
  (ISceneManager_addArrowMesh (ff-pointer self) name vtxColorCylinder vtxColorCone tesselationCylinder))

(cl:defmethod add-arrow-mesh ((self iscene-manager) name (vtxColorCylinder scolor) (vtxColorCone scolor))
  (ISceneManager_addArrowMesh (ff-pointer self) name vtxColorCylinder vtxColorCone))

(cl:defmethod add-arrow-mesh ((self iscene-manager) name (vtxColorCylinder scolor))
  (ISceneManager_addArrowMesh (ff-pointer self) name vtxColorCylinder))

(cl:defmethod add-arrow-mesh ((self iscene-manager) name)
  (ISceneManager_addArrowMesh (ff-pointer self) name))

(cl:defmethod add-sphere-mesh ((self iscene-manager) name (radius cl:number) (polyCountX cl:integer) (polyCountY cl:integer))
  (ISceneManager_addSphereMesh (ff-pointer self) name radius polyCountX polyCountY))

(cl:defmethod add-sphere-mesh ((self iscene-manager) name (radius cl:number) (polyCountX cl:integer))
  (ISceneManager_addSphereMesh (ff-pointer self) name radius polyCountX))

(cl:defmethod add-sphere-mesh ((self iscene-manager) name (radius cl:number))
  (ISceneManager_addSphereMesh (ff-pointer self) name radius))

(cl:defmethod add-sphere-mesh ((self iscene-manager) name)
  (ISceneManager_addSphereMesh (ff-pointer self) name))

(cl:defmethod add-volume-light-mesh ((self iscene-manager) name (SubdivideU cl:integer) (SubdivideV cl:integer) (FootColor scolor) (TailColor scolor))
  (ISceneManager_addVolumeLightMesh (ff-pointer self) name SubdivideU SubdivideV FootColor TailColor))

(cl:defmethod add-volume-light-mesh ((self iscene-manager) name (SubdivideU cl:integer) (SubdivideV cl:integer) (FootColor scolor))
  (ISceneManager_addVolumeLightMesh (ff-pointer self) name SubdivideU SubdivideV FootColor))

(cl:defmethod add-volume-light-mesh ((self iscene-manager) name (SubdivideU cl:integer) (SubdivideV cl:integer))
  (ISceneManager_addVolumeLightMesh (ff-pointer self) name SubdivideU SubdivideV))

(cl:defmethod add-volume-light-mesh ((self iscene-manager) name (SubdivideU cl:integer))
  (ISceneManager_addVolumeLightMesh (ff-pointer self) name SubdivideU))

(cl:defmethod add-volume-light-mesh ((self iscene-manager) name)
  (ISceneManager_addVolumeLightMesh (ff-pointer self) name))

(cl:defmethod get-root-scene-node ((self iscene-manager))
  (ISceneManager_getRootSceneNode (ff-pointer self)))

(cl:defmethod get-scene-node-from-id ((self iscene-manager) (id cl:integer) (start iscene-node))
  (ISceneManager_getSceneNodeFromId (ff-pointer self) id start))

(cl:defmethod get-scene-node-from-id ((self iscene-manager) (id cl:integer))
  (ISceneManager_getSceneNodeFromId (ff-pointer self) id))

(cl:defmethod get-scene-node-from-name ((self iscene-manager) (name cl:string) (start iscene-node))
  (ISceneManager_getSceneNodeFromName (ff-pointer self) name start))

(cl:defmethod get-scene-node-from-name ((self iscene-manager) (name cl:string))
  (ISceneManager_getSceneNodeFromName (ff-pointer self) name))

(cl:defmethod get-scene-node-from-type ((self iscene-manager) (type cl:integer) (start iscene-node))
  (ISceneManager_getSceneNodeFromType (ff-pointer self) type start))

(cl:defmethod get-scene-node-from-type ((self iscene-manager) (type cl:integer))
  (ISceneManager_getSceneNodeFromType (ff-pointer self) type))

(cl:defmethod get-scene-nodes-from-type ((self iscene-manager) (type cl:integer) outNodes (start iscene-node))
  (ISceneManager_getSceneNodesFromType (ff-pointer self) type outNodes start))

(cl:defmethod get-scene-nodes-from-type ((self iscene-manager) (type cl:integer) outNodes)
  (ISceneManager_getSceneNodesFromType (ff-pointer self) type outNodes))

(cl:defmethod get-active-camera ((self iscene-manager))
  (ISceneManager_getActiveCamera (ff-pointer self)))

(cl:defmethod set-active-camera ((self iscene-manager) (camera icamera-scene-node))
  (ISceneManager_setActiveCamera (ff-pointer self) camera))

(cl:defmethod set-shadow-color ((self iscene-manager) (color scolor))
  (ISceneManager_setShadowColor (ff-pointer self) color))

(cl:defmethod set-shadow-color ((self iscene-manager))
  (ISceneManager_setShadowColor (ff-pointer self)))

(cl:defmethod get-shadow-color ((self iscene-manager))
  (ISceneManager_getShadowColor (ff-pointer self)))

(cl:defmethod register-node-for-rendering ((self iscene-manager) (node iscene-node) (pass cl:integer))
  (ISceneManager_registerNodeForRendering (ff-pointer self) node pass))

(cl:defmethod register-node-for-rendering ((self iscene-manager) (node iscene-node))
  (ISceneManager_registerNodeForRendering (ff-pointer self) node))

(cl:defmethod draw-all ((self iscene-manager))
  (ISceneManager_drawAll (ff-pointer self)))

(cl:defmethod create-rotation-animator ((self iscene-manager) rotationSpeed)
  (ISceneManager_createRotationAnimator (ff-pointer self) rotationSpeed))

(cl:defmethod create-fly-circle-animator ((self iscene-manager) center (radius cl:number) (speed cl:number) direction (startPosition cl:number) (radiusEllipsoid cl:number))
  (ISceneManager_createFlyCircleAnimator (ff-pointer self) center radius speed direction startPosition radiusEllipsoid))

(cl:defmethod create-fly-circle-animator ((self iscene-manager) center (radius cl:number) (speed cl:number) direction (startPosition cl:number))
  (ISceneManager_createFlyCircleAnimator (ff-pointer self) center radius speed direction startPosition))

(cl:defmethod create-fly-circle-animator ((self iscene-manager) center (radius cl:number) (speed cl:number) direction)
  (ISceneManager_createFlyCircleAnimator (ff-pointer self) center radius speed direction))

(cl:defmethod create-fly-circle-animator ((self iscene-manager) center (radius cl:number) (speed cl:number))
  (ISceneManager_createFlyCircleAnimator (ff-pointer self) center radius speed))

(cl:defmethod create-fly-circle-animator ((self iscene-manager) center (radius cl:number))
  (ISceneManager_createFlyCircleAnimator (ff-pointer self) center radius))

(cl:defmethod create-fly-circle-animator ((self iscene-manager) center)
  (ISceneManager_createFlyCircleAnimator (ff-pointer self) center))

(cl:defmethod create-fly-circle-animator ((self iscene-manager))
  (ISceneManager_createFlyCircleAnimator (ff-pointer self)))

(cl:defmethod create-fly-straight-animator ((self iscene-manager) startPoint endPoint (timeForWay cl:integer) (loop t) (pingpong t))
  (ISceneManager_createFlyStraightAnimator (ff-pointer self) startPoint endPoint timeForWay loop pingpong))

(cl:defmethod create-fly-straight-animator ((self iscene-manager) startPoint endPoint (timeForWay cl:integer) (loop t))
  (ISceneManager_createFlyStraightAnimator (ff-pointer self) startPoint endPoint timeForWay loop))

(cl:defmethod create-fly-straight-animator ((self iscene-manager) startPoint endPoint (timeForWay cl:integer))
  (ISceneManager_createFlyStraightAnimator (ff-pointer self) startPoint endPoint timeForWay))

(cl:defmethod create-texture-animator ((self iscene-manager) textures (timePerFrame cl:integer) (loop t))
  (ISceneManager_createTextureAnimator (ff-pointer self) textures timePerFrame loop))

(cl:defmethod create-texture-animator ((self iscene-manager) textures (timePerFrame cl:integer))
  (ISceneManager_createTextureAnimator (ff-pointer self) textures timePerFrame))

(cl:defmethod create-delete-animator ((self iscene-manager) (timeMs cl:integer))
  (ISceneManager_createDeleteAnimator (ff-pointer self) timeMs))

(cl:defmethod create-collision-response-animator ((self iscene-manager) (world itriangle-selector) (sceneNode iscene-node) ellipsoidRadius gravityPerSecond ellipsoidTranslation (slidingValue cl:number))
  (ISceneManager_createCollisionResponseAnimator (ff-pointer self) world sceneNode ellipsoidRadius gravityPerSecond ellipsoidTranslation slidingValue))

(cl:defmethod create-collision-response-animator ((self iscene-manager) (world itriangle-selector) (sceneNode iscene-node) ellipsoidRadius gravityPerSecond ellipsoidTranslation)
  (ISceneManager_createCollisionResponseAnimator (ff-pointer self) world sceneNode ellipsoidRadius gravityPerSecond ellipsoidTranslation))

(cl:defmethod create-collision-response-animator ((self iscene-manager) (world itriangle-selector) (sceneNode iscene-node) ellipsoidRadius gravityPerSecond)
  (ISceneManager_createCollisionResponseAnimator (ff-pointer self) world sceneNode ellipsoidRadius gravityPerSecond))

(cl:defmethod create-collision-response-animator ((self iscene-manager) (world itriangle-selector) (sceneNode iscene-node) ellipsoidRadius)
  (ISceneManager_createCollisionResponseAnimator (ff-pointer self) world sceneNode ellipsoidRadius))

(cl:defmethod create-collision-response-animator ((self iscene-manager) (world itriangle-selector) (sceneNode iscene-node))
  (ISceneManager_createCollisionResponseAnimator (ff-pointer self) world sceneNode))

(cl:defmethod create-follow-spline-animator ((self iscene-manager) (startTime cl:integer) points (speed cl:number) (tightness cl:number) (loop t) (pingpong t))
  (ISceneManager_createFollowSplineAnimator (ff-pointer self) startTime points speed tightness loop pingpong))

(cl:defmethod create-follow-spline-animator ((self iscene-manager) (startTime cl:integer) points (speed cl:number) (tightness cl:number) (loop t))
  (ISceneManager_createFollowSplineAnimator (ff-pointer self) startTime points speed tightness loop))

(cl:defmethod create-follow-spline-animator ((self iscene-manager) (startTime cl:integer) points (speed cl:number) (tightness cl:number))
  (ISceneManager_createFollowSplineAnimator (ff-pointer self) startTime points speed tightness))

(cl:defmethod create-follow-spline-animator ((self iscene-manager) (startTime cl:integer) points (speed cl:number))
  (ISceneManager_createFollowSplineAnimator (ff-pointer self) startTime points speed))

(cl:defmethod create-follow-spline-animator ((self iscene-manager) (startTime cl:integer) points)
  (ISceneManager_createFollowSplineAnimator (ff-pointer self) startTime points))

(cl:defmethod create-triangle-selector ((self iscene-manager) (mesh imesh) (node iscene-node))
  (ISceneManager_createTriangleSelector (ff-pointer self) mesh node))

(cl:defmethod create-triangle-selector ((self iscene-manager) (node ianimated-mesh-scene-node))
  (ISceneManager_createTriangleSelector (ff-pointer self) node))

(cl:defmethod create-triangle-selector-from-bounding-box ((self iscene-manager) (node iscene-node))
  (ISceneManager_createTriangleSelectorFromBoundingBox (ff-pointer self) node))

(cl:defmethod create-octree-triangle-selector ((self iscene-manager) (mesh imesh) (node iscene-node) (minimalPolysPerNode cl:integer))
  (ISceneManager_createOctreeTriangleSelector (ff-pointer self) mesh node minimalPolysPerNode))

(cl:defmethod create-octree-triangle-selector ((self iscene-manager) (mesh imesh) (node iscene-node))
  (ISceneManager_createOctreeTriangleSelector (ff-pointer self) mesh node))

(cl:defmethod create-oct-tree-triangle-selector ((self iscene-manager) (mesh imesh) (node iscene-node) (minimalPolysPerNode cl:integer))
  (ISceneManager_createOctTreeTriangleSelector (ff-pointer self) mesh node minimalPolysPerNode))

(cl:defmethod create-oct-tree-triangle-selector ((self iscene-manager) (mesh imesh) (node iscene-node))
  (ISceneManager_createOctTreeTriangleSelector (ff-pointer self) mesh node))

(cl:defmethod create-meta-triangle-selector ((self iscene-manager))
  (ISceneManager_createMetaTriangleSelector (ff-pointer self)))

(cl:defmethod create-terrain-triangle-selector ((self iscene-manager) node (LOD cl:integer))
  (ISceneManager_createTerrainTriangleSelector (ff-pointer self) node LOD))

(cl:defmethod create-terrain-triangle-selector ((self iscene-manager) node)
  (ISceneManager_createTerrainTriangleSelector (ff-pointer self) node))

(cl:defmethod add-external-mesh-loader ((self iscene-manager) (externalLoader imesh-loader))
  (ISceneManager_addExternalMeshLoader (ff-pointer self) externalLoader))

(cl:defmethod get-mesh-loader-count ((self iscene-manager))
  (ISceneManager_getMeshLoaderCount (ff-pointer self)))

(cl:defmethod get-mesh-loader ((self iscene-manager) (index cl:integer))
  (ISceneManager_getMeshLoader (ff-pointer self) index))

(cl:defmethod add-external-scene-loader ((self iscene-manager) (externalLoader iscene-loader))
  (ISceneManager_addExternalSceneLoader (ff-pointer self) externalLoader))

(cl:defmethod get-scene-loader-count ((self iscene-manager))
  (ISceneManager_getSceneLoaderCount (ff-pointer self)))

(cl:defmethod get-scene-loader ((self iscene-manager) (index cl:integer))
  (ISceneManager_getSceneLoader (ff-pointer self) index))

(cl:defmethod get-scene-collision-manager ((self iscene-manager))
  (ISceneManager_getSceneCollisionManager (ff-pointer self)))

(cl:defmethod get-mesh-manipulator ((self iscene-manager))
  (ISceneManager_getMeshManipulator (ff-pointer self)))

(cl:defmethod add-to-deletion-queue ((self iscene-manager) (node iscene-node))
  (ISceneManager_addToDeletionQueue (ff-pointer self) node))

(cl:defmethod post-event-from-user ((self iscene-manager) event)
  (ISceneManager_postEventFromUser (ff-pointer self) event))

(cl:defmethod clear ((self iscene-manager))
  (ISceneManager_clear (ff-pointer self)))

(cl:defmethod get-parameters ((self iscene-manager))
  (ISceneManager_getParameters (ff-pointer self)))

(cl:defmethod get-scene-node-render-pass ((self iscene-manager))
  (ISceneManager_getSceneNodeRenderPass (ff-pointer self)))

(cl:defmethod get-default-scene-node-factory ((self iscene-manager))
  (ISceneManager_getDefaultSceneNodeFactory (ff-pointer self)))

(cl:defmethod register-scene-node-factory ((self iscene-manager) factoryToAdd)
  (ISceneManager_registerSceneNodeFactory (ff-pointer self) factoryToAdd))

(cl:defmethod get-registered-scene-node-factory-count ((self iscene-manager))
  (ISceneManager_getRegisteredSceneNodeFactoryCount (ff-pointer self)))

(cl:defmethod get-scene-node-factory ((self iscene-manager) (index cl:integer))
  (ISceneManager_getSceneNodeFactory (ff-pointer self) index))

(cl:defmethod get-default-scene-node-animator-factory ((self iscene-manager))
  (ISceneManager_getDefaultSceneNodeAnimatorFactory (ff-pointer self)))

(cl:defmethod register-scene-node-animator-factory ((self iscene-manager) factoryToAdd)
  (ISceneManager_registerSceneNodeAnimatorFactory (ff-pointer self) factoryToAdd))

(cl:defmethod get-registered-scene-node-animator-factory-count ((self iscene-manager))
  (ISceneManager_getRegisteredSceneNodeAnimatorFactoryCount (ff-pointer self)))

(cl:defmethod get-scene-node-animator-factory ((self iscene-manager) (index cl:integer))
  (ISceneManager_getSceneNodeAnimatorFactory (ff-pointer self) index))

(cl:defmethod get-scene-node-type-name ((self iscene-manager) (type cl:integer))
  (ISceneManager_getSceneNodeTypeName (ff-pointer self) type))

(cl:defmethod get-animator-type-name ((self iscene-manager) (type cl:integer))
  (ISceneManager_getAnimatorTypeName (ff-pointer self) type))

(cl:defmethod add-scene-node ((self iscene-manager) (sceneNodeTypeName cl:string) (parent iscene-node))
  (ISceneManager_addSceneNode (ff-pointer self) sceneNodeTypeName parent))

(cl:defmethod add-scene-node ((self iscene-manager) (sceneNodeTypeName cl:string))
  (ISceneManager_addSceneNode (ff-pointer self) sceneNodeTypeName))

(cl:defmethod create-scene-node-animator ((self iscene-manager) (typeName cl:string) (target iscene-node))
  (ISceneManager_createSceneNodeAnimator (ff-pointer self) typeName target))

(cl:defmethod create-scene-node-animator ((self iscene-manager) (typeName cl:string))
  (ISceneManager_createSceneNodeAnimator (ff-pointer self) typeName))

(cl:defmethod create-new-scene-manager ((self iscene-manager) (cloneContent t))
  (ISceneManager_createNewSceneManager (ff-pointer self) cloneContent))

(cl:defmethod create-new-scene-manager ((self iscene-manager))
  (ISceneManager_createNewSceneManager (ff-pointer self)))

(cl:defmethod save-scene ((self iscene-manager) filename userDataSerializer (node iscene-node))
  (ISceneManager_saveScene (ff-pointer self) filename userDataSerializer node))

(cl:defmethod save-scene ((self iscene-manager) filename userDataSerializer)
  (ISceneManager_saveScene (ff-pointer self) filename userDataSerializer))

(cl:defmethod save-scene ((self iscene-manager) filename)
  (ISceneManager_saveScene (ff-pointer self) filename))

(cl:defmethod save-scene ((self iscene-manager) file userDataSerializer (node iscene-node))
  (ISceneManager_saveScene (ff-pointer self) file userDataSerializer node))

(cl:defmethod save-scene ((self iscene-manager) file userDataSerializer)
  (ISceneManager_saveScene (ff-pointer self) file userDataSerializer))

(cl:defmethod save-scene ((self iscene-manager) file)
  (ISceneManager_saveScene (ff-pointer self) file))

(cl:defmethod save-scene ((self iscene-manager) writer currentPath userDataSerializer (node iscene-node))
  (ISceneManager_saveScene (ff-pointer self) writer currentPath userDataSerializer node))

(cl:defmethod save-scene ((self iscene-manager) writer currentPath userDataSerializer)
  (ISceneManager_saveScene (ff-pointer self) writer currentPath userDataSerializer))

(cl:defmethod save-scene ((self iscene-manager) writer currentPath)
  (ISceneManager_saveScene (ff-pointer self) writer currentPath))

(cl:defmethod load-scene ((self iscene-manager) filename userDataSerializer (rootNode iscene-node))
  (ISceneManager_loadScene (ff-pointer self) filename userDataSerializer rootNode))

(cl:defmethod load-scene ((self iscene-manager) filename userDataSerializer)
  (ISceneManager_loadScene (ff-pointer self) filename userDataSerializer))

(cl:defmethod load-scene ((self iscene-manager) filename)
  (ISceneManager_loadScene (ff-pointer self) filename))

(cl:defmethod load-scene ((self iscene-manager) (file iread-file) userDataSerializer (rootNode iscene-node))
  (ISceneManager_loadScene (ff-pointer self) file userDataSerializer rootNode))

(cl:defmethod load-scene ((self iscene-manager) (file iread-file) userDataSerializer)
  (ISceneManager_loadScene (ff-pointer self) file userDataSerializer))

(cl:defmethod load-scene ((self iscene-manager) (file iread-file))
  (ISceneManager_loadScene (ff-pointer self) file))

(cl:defmethod create-mesh-writer ((self iscene-manager) (type cl:integer))
  (ISceneManager_createMeshWriter (ff-pointer self) type))

(cl:defmethod create-skinned-mesh ((self iscene-manager))
  (ISceneManager_createSkinnedMesh (ff-pointer self)))

(cl:defmethod set-ambient-light ((self iscene-manager) (ambientColor scolorf))
  (ISceneManager_setAmbientLight (ff-pointer self) ambientColor))

(cl:defmethod get-ambient-light ((self iscene-manager))
  (ISceneManager_getAmbientLight (ff-pointer self)))

(cl:defmethod set-light-manager ((self iscene-manager) lightManager)
  (ISceneManager_setLightManager (ff-pointer self) lightManager))

(cl:defmethod get-geometry-creator ((self iscene-manager))
  (ISceneManager_getGeometryCreator (ff-pointer self)))

(cl:defmethod is-culled ((self iscene-manager) (node iscene-node))
  (ISceneManager_isCulled (ff-pointer self) node))


(cl:defclass iscene-node-animator-camera-fps(irr::scene::-iscene-node-animator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-move-speed ((self iscene-node-animator-camera-fps))
  (ISceneNodeAnimatorCameraFPS_getMoveSpeed (ff-pointer self)))

(cl:defmethod set-move-speed ((self iscene-node-animator-camera-fps) (moveSpeed cl:number))
  (ISceneNodeAnimatorCameraFPS_setMoveSpeed (ff-pointer self) moveSpeed))

(cl:defmethod get-rotate-speed ((self iscene-node-animator-camera-fps))
  (ISceneNodeAnimatorCameraFPS_getRotateSpeed (ff-pointer self)))

(cl:defmethod set-rotate-speed ((self iscene-node-animator-camera-fps) (rotateSpeed cl:number))
  (ISceneNodeAnimatorCameraFPS_setRotateSpeed (ff-pointer self) rotateSpeed))

(cl:defmethod set-key-map ((self iscene-node-animator-camera-fps) map (count cl:integer))
  (ISceneNodeAnimatorCameraFPS_setKeyMap (ff-pointer self) map count))

(cl:defmethod set-key-map ((self iscene-node-animator-camera-fps) keymap)
  (ISceneNodeAnimatorCameraFPS_setKeyMap (ff-pointer self) keymap))

(cl:defmethod get-key-map ((self iscene-node-animator-camera-fps))
  (ISceneNodeAnimatorCameraFPS_getKeyMap (ff-pointer self)))

(cl:defmethod set-vertical-movement ((self iscene-node-animator-camera-fps) (allow t))
  (ISceneNodeAnimatorCameraFPS_setVerticalMovement (ff-pointer self) allow))

(cl:defmethod set-invert-mouse ((self iscene-node-animator-camera-fps) (invert t))
  (ISceneNodeAnimatorCameraFPS_setInvertMouse (ff-pointer self) invert))


(cl:defclass iscene-node-animator-camera-maya(irr::scene::-iscene-node-animator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-move-speed ((self iscene-node-animator-camera-maya))
  (ISceneNodeAnimatorCameraMaya_getMoveSpeed (ff-pointer self)))

(cl:defmethod set-move-speed ((self iscene-node-animator-camera-maya) (moveSpeed cl:number))
  (ISceneNodeAnimatorCameraMaya_setMoveSpeed (ff-pointer self) moveSpeed))

(cl:defmethod get-rotate-speed ((self iscene-node-animator-camera-maya))
  (ISceneNodeAnimatorCameraMaya_getRotateSpeed (ff-pointer self)))

(cl:defmethod set-rotate-speed ((self iscene-node-animator-camera-maya) (rotateSpeed cl:number))
  (ISceneNodeAnimatorCameraMaya_setRotateSpeed (ff-pointer self) rotateSpeed))

(cl:defmethod get-zoom-speed ((self iscene-node-animator-camera-maya))
  (ISceneNodeAnimatorCameraMaya_getZoomSpeed (ff-pointer self)))

(cl:defmethod set-zoom-speed ((self iscene-node-animator-camera-maya) (zoomSpeed cl:number))
  (ISceneNodeAnimatorCameraMaya_setZoomSpeed (ff-pointer self) zoomSpeed))

(cl:defmethod get-distance ((self iscene-node-animator-camera-maya))
  (ISceneNodeAnimatorCameraMaya_getDistance (ff-pointer self)))

(cl:defmethod set-distance ((self iscene-node-animator-camera-maya) (distance cl:number))
  (ISceneNodeAnimatorCameraMaya_setDistance (ff-pointer self) distance))


(cl:defclass icollision-callback(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod on-collision ((self icollision-callback) animator)
  (ICollisionCallback_onCollision (ff-pointer self) animator))


(cl:defclass iscene-node-animator-collision-response(irr::scene::-iscene-node-animator)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod is-falling ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_isFalling (ff-pointer self)))

(cl:defmethod set-ellipsoid-radius ((self iscene-node-animator-collision-response) radius)
  (ISceneNodeAnimatorCollisionResponse_setEllipsoidRadius (ff-pointer self) radius))

(cl:defmethod get-ellipsoid-radius ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_getEllipsoidRadius (ff-pointer self)))

(cl:defmethod set-gravity ((self iscene-node-animator-collision-response) gravity)
  (ISceneNodeAnimatorCollisionResponse_setGravity (ff-pointer self) gravity))

(cl:defmethod get-gravity ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_getGravity (ff-pointer self)))

(cl:defmethod jump ((self iscene-node-animator-collision-response) (jumpSpeed cl:number))
  (ISceneNodeAnimatorCollisionResponse_jump (ff-pointer self) jumpSpeed))

(cl:defmethod set-animate-target ((self iscene-node-animator-collision-response) (enable t))
  (ISceneNodeAnimatorCollisionResponse_setAnimateTarget (ff-pointer self) enable))

(cl:defmethod get-animate-target ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_getAnimateTarget (ff-pointer self)))

(cl:defmethod set-ellipsoid-translation ((self iscene-node-animator-collision-response) translation)
  (ISceneNodeAnimatorCollisionResponse_setEllipsoidTranslation (ff-pointer self) translation))

(cl:defmethod get-ellipsoid-translation ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_getEllipsoidTranslation (ff-pointer self)))

(cl:defmethod set-world ((self iscene-node-animator-collision-response) (newWorld itriangle-selector))
  (ISceneNodeAnimatorCollisionResponse_setWorld (ff-pointer self) newWorld))

(cl:defmethod get-world ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_getWorld (ff-pointer self)))

(cl:defmethod set-target-node ((self iscene-node-animator-collision-response) (node iscene-node))
  (ISceneNodeAnimatorCollisionResponse_setTargetNode (ff-pointer self) node))

(cl:defmethod get-target-node ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_getTargetNode (ff-pointer self)))

(cl:defmethod collision-occurred ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_collisionOccurred (ff-pointer self)))

(cl:defmethod get-collision-point ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_getCollisionPoint (ff-pointer self)))

(cl:defmethod get-collision-triangle ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_getCollisionTriangle (ff-pointer self)))

(cl:defmethod get-collision-result-position ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_getCollisionResultPosition (ff-pointer self)))

(cl:defmethod get-collision-node ((self iscene-node-animator-collision-response))
  (ISceneNodeAnimatorCollisionResponse_getCollisionNode (ff-pointer self)))

(cl:defmethod set-collision-callback ((self iscene-node-animator-collision-response) (callback icollision-callback))
  (ISceneNodeAnimatorCollisionResponse_setCollisionCallback (ff-pointer self) callback))


(cl:defclass iscene-node-animator-factory(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod create-scene-node-animator ((self iscene-node-animator-factory) (type cl:integer) (target iscene-node))
  (ISceneNodeAnimatorFactory_createSceneNodeAnimator (ff-pointer self) type target))

(cl:defmethod create-scene-node-animator ((self iscene-node-animator-factory) (typeName cl:string) (target iscene-node))
  (ISceneNodeAnimatorFactory_createSceneNodeAnimator (ff-pointer self) typeName target))

(cl:defmethod get-creatable-scene-node-animator-type-count ((self iscene-node-animator-factory))
  (ISceneNodeAnimatorFactory_getCreatableSceneNodeAnimatorTypeCount (ff-pointer self)))

(cl:defmethod get-createable-scene-node-animator-type ((self iscene-node-animator-factory) (idx cl:integer))
  (ISceneNodeAnimatorFactory_getCreateableSceneNodeAnimatorType (ff-pointer self) idx))

(cl:defmethod get-createable-scene-node-animator-type-name ((self iscene-node-animator-factory) (idx cl:integer))
  (ISceneNodeAnimatorFactory_getCreateableSceneNodeAnimatorTypeName (ff-pointer self) idx))

(cl:defmethod get-createable-scene-node-animator-type-name ((self iscene-node-animator-factory) (type cl:integer))
  (ISceneNodeAnimatorFactory_getCreateableSceneNodeAnimatorTypeName (ff-pointer self) type))


(cl:defclass iscene-node-factory(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod add-scene-node ((self iscene-node-factory) (type cl:integer) (parent iscene-node))
  (ISceneNodeFactory_addSceneNode (ff-pointer self) type parent))

(cl:defmethod add-scene-node ((self iscene-node-factory) (type cl:integer))
  (ISceneNodeFactory_addSceneNode (ff-pointer self) type))

(cl:defmethod add-scene-node ((self iscene-node-factory) (typeName cl:string) (parent iscene-node))
  (ISceneNodeFactory_addSceneNode (ff-pointer self) typeName parent))

(cl:defmethod add-scene-node ((self iscene-node-factory) (typeName cl:string))
  (ISceneNodeFactory_addSceneNode (ff-pointer self) typeName))

(cl:defmethod get-creatable-scene-node-type-count ((self iscene-node-factory))
  (ISceneNodeFactory_getCreatableSceneNodeTypeCount (ff-pointer self)))

(cl:defmethod get-createable-scene-node-type ((self iscene-node-factory) (idx cl:integer))
  (ISceneNodeFactory_getCreateableSceneNodeType (ff-pointer self) idx))

(cl:defmethod get-createable-scene-node-type-name ((self iscene-node-factory) (idx cl:integer))
  (ISceneNodeFactory_getCreateableSceneNodeTypeName (ff-pointer self) idx))

(cl:defmethod get-createable-scene-node-type-name ((self iscene-node-factory) (type cl:integer))
  (ISceneNodeFactory_getCreateableSceneNodeTypeName (ff-pointer self) type))


(cl:defclass iscene-user-data-serializer()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod on-create-node ((self iscene-user-data-serializer) (node iscene-node))
  (ISceneUserDataSerializer_OnCreateNode (ff-pointer self) node))

(cl:defmethod on-read-user-data ((self iscene-user-data-serializer) (forSceneNode iscene-node) (userData iattributes))
  (ISceneUserDataSerializer_OnReadUserData (ff-pointer self) forSceneNode userData))

(cl:defmethod create-user-data ((self iscene-user-data-serializer) (forSceneNode iscene-node))
  (ISceneUserDataSerializer_createUserData (ff-pointer self) forSceneNode))


(cl:defclass ishader-constant-set-call-back(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod on-set-material ((self ishader-constant-set-call-back) (material smaterial))
  (IShaderConstantSetCallBack_OnSetMaterial (ff-pointer self) material))

(cl:defmethod on-set-constants ((self ishader-constant-set-call-back) (services imaterial-renderer-services) (userData cl:integer))
  (IShaderConstantSetCallBack_OnSetConstants (ff-pointer self) services userData))


(cl:defclass ishadow-volume-scene-node(irr::scene::-iscene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-shadow-mesh ((self ishadow-volume-scene-node) (mesh imesh))
  (IShadowVolumeSceneNode_setShadowMesh (ff-pointer self) mesh))

(cl:defmethod update-shadow-volumes ((self ishadow-volume-scene-node))
  (IShadowVolumeSceneNode_updateShadowVolumes (ff-pointer self)))


(cl:defclass iterrain-scene-node(irr::scene::-iscene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod get-bounding-box ((self iterrain-scene-node))
  (ITerrainSceneNode_getBoundingBox (ff-pointer self)))

(cl:defmethod get-bounding-box ((self iterrain-scene-node) (patchX cl:integer) (patchZ cl:integer))
  (ITerrainSceneNode_getBoundingBox (ff-pointer self) patchX patchZ))

(cl:defmethod get-index-count ((self iterrain-scene-node))
  (ITerrainSceneNode_getIndexCount (ff-pointer self)))

(cl:defmethod get-mesh ((self iterrain-scene-node))
  (ITerrainSceneNode_getMesh (ff-pointer self)))

(cl:defmethod get-render-buffer ((self iterrain-scene-node))
  (ITerrainSceneNode_getRenderBuffer (ff-pointer self)))

(cl:defmethod get-mesh-buffer-for-lod ((self iterrain-scene-node) (mb idynamic-mesh-buffer) (LOD cl:integer))
  (ITerrainSceneNode_getMeshBufferForLOD (ff-pointer self) mb LOD))

(cl:defmethod get-mesh-buffer-for-lod ((self iterrain-scene-node) (mb idynamic-mesh-buffer))
  (ITerrainSceneNode_getMeshBufferForLOD (ff-pointer self) mb))

(cl:defmethod get-indices-for-patch ((self iterrain-scene-node) indices (patchX cl:integer) (patchZ cl:integer) (LOD cl:integer))
  (ITerrainSceneNode_getIndicesForPatch (ff-pointer self) indices patchX patchZ LOD))

(cl:defmethod get-indices-for-patch ((self iterrain-scene-node) indices (patchX cl:integer) (patchZ cl:integer))
  (ITerrainSceneNode_getIndicesForPatch (ff-pointer self) indices patchX patchZ))

(cl:defmethod get-current-lodof-patches ((self iterrain-scene-node) LODs)
  (ITerrainSceneNode_getCurrentLODOfPatches (ff-pointer self) LODs))

(cl:defmethod set-lodof-patch ((self iterrain-scene-node) (patchX cl:integer) (patchZ cl:integer) (LOD cl:integer))
  (ITerrainSceneNode_setLODOfPatch (ff-pointer self) patchX patchZ LOD))

(cl:defmethod set-lodof-patch ((self iterrain-scene-node) (patchX cl:integer) (patchZ cl:integer))
  (ITerrainSceneNode_setLODOfPatch (ff-pointer self) patchX patchZ))

(cl:defmethod get-terrain-center ((self iterrain-scene-node))
  (ITerrainSceneNode_getTerrainCenter (ff-pointer self)))

(cl:defmethod get-height ((self iterrain-scene-node) (x cl:number) (y cl:number))
  (ITerrainSceneNode_getHeight (ff-pointer self) x y))

(cl:defmethod set-camera-movement-delta ((self iterrain-scene-node) (delta cl:number))
  (ITerrainSceneNode_setCameraMovementDelta (ff-pointer self) delta))

(cl:defmethod set-camera-rotation-delta ((self iterrain-scene-node) (delta cl:number))
  (ITerrainSceneNode_setCameraRotationDelta (ff-pointer self) delta))

(cl:defmethod set-dynamic-selector-update ((self iterrain-scene-node) (bVal t))
  (ITerrainSceneNode_setDynamicSelectorUpdate (ff-pointer self) bVal))

(cl:defmethod override-loddistance ((self iterrain-scene-node) (LOD cl:integer) (newDistance cl:number))
  (ITerrainSceneNode_overrideLODDistance (ff-pointer self) LOD newDistance))

(cl:defmethod scale-texture ((self iterrain-scene-node) (scale cl:number) (scale2 cl:number))
  (ITerrainSceneNode_scaleTexture (ff-pointer self) scale scale2))

(cl:defmethod scale-texture ((self iterrain-scene-node) (scale cl:number))
  (ITerrainSceneNode_scaleTexture (ff-pointer self) scale))

(cl:defmethod scale-texture ((self iterrain-scene-node))
  (ITerrainSceneNode_scaleTexture (ff-pointer self)))

(cl:defmethod load-height-map ((self iterrain-scene-node) (file iread-file) (vertexColor scolor) (smoothFactor cl:integer))
  (ITerrainSceneNode_loadHeightMap (ff-pointer self) file vertexColor smoothFactor))

(cl:defmethod load-height-map ((self iterrain-scene-node) (file iread-file) (vertexColor scolor))
  (ITerrainSceneNode_loadHeightMap (ff-pointer self) file vertexColor))

(cl:defmethod load-height-map ((self iterrain-scene-node) (file iread-file))
  (ITerrainSceneNode_loadHeightMap (ff-pointer self) file))

(cl:defmethod load-height-map-raw ((self iterrain-scene-node) (file iread-file) (bitsPerPixel cl:integer) (signedData t) (floatVals t) (width cl:integer) (vertexColor scolor) (smoothFactor cl:integer))
  (ITerrainSceneNode_loadHeightMapRAW (ff-pointer self) file bitsPerPixel signedData floatVals width vertexColor smoothFactor))

(cl:defmethod load-height-map-raw ((self iterrain-scene-node) (file iread-file) (bitsPerPixel cl:integer) (signedData t) (floatVals t) (width cl:integer) (vertexColor scolor))
  (ITerrainSceneNode_loadHeightMapRAW (ff-pointer self) file bitsPerPixel signedData floatVals width vertexColor))

(cl:defmethod load-height-map-raw ((self iterrain-scene-node) (file iread-file) (bitsPerPixel cl:integer) (signedData t) (floatVals t) (width cl:integer))
  (ITerrainSceneNode_loadHeightMapRAW (ff-pointer self) file bitsPerPixel signedData floatVals width))

(cl:defmethod load-height-map-raw ((self iterrain-scene-node) (file iread-file) (bitsPerPixel cl:integer) (signedData t) (floatVals t))
  (ITerrainSceneNode_loadHeightMapRAW (ff-pointer self) file bitsPerPixel signedData floatVals))

(cl:defmethod load-height-map-raw ((self iterrain-scene-node) (file iread-file) (bitsPerPixel cl:integer) (signedData t))
  (ITerrainSceneNode_loadHeightMapRAW (ff-pointer self) file bitsPerPixel signedData))

(cl:defmethod load-height-map-raw ((self iterrain-scene-node) (file iread-file) (bitsPerPixel cl:integer))
  (ITerrainSceneNode_loadHeightMapRAW (ff-pointer self) file bitsPerPixel))

(cl:defmethod load-height-map-raw ((self iterrain-scene-node) (file iread-file))
  (ITerrainSceneNode_loadHeightMapRAW (ff-pointer self) file))


(cl:defclass itext-scene-node(irr::scene::-iscene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-text ((self itext-scene-node) text)
  (ITextSceneNode_setText (ff-pointer self) text))

(cl:defmethod set-text-color ((self itext-scene-node) (color scolor))
  (ITextSceneNode_setTextColor (ff-pointer self) color))


(cl:defclass ivolume-light-scene-node(irr::scene::-iscene-node)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod set-sub-divide-u ((self ivolume-light-scene-node) (inU cl:integer))
  (IVolumeLightSceneNode_setSubDivideU (ff-pointer self) inU))

(cl:defmethod set-sub-divide-v ((self ivolume-light-scene-node) (inV cl:integer))
  (IVolumeLightSceneNode_setSubDivideV (ff-pointer self) inV))

(cl:defmethod get-sub-divide-u ((self ivolume-light-scene-node))
  (IVolumeLightSceneNode_getSubDivideU (ff-pointer self)))

(cl:defmethod get-sub-divide-v ((self ivolume-light-scene-node))
  (IVolumeLightSceneNode_getSubDivideV (ff-pointer self)))

(cl:defmethod set-foot-color ((self ivolume-light-scene-node) (inColor scolor))
  (IVolumeLightSceneNode_setFootColor (ff-pointer self) inColor))

(cl:defmethod set-tail-color ((self ivolume-light-scene-node) (inColor scolor))
  (IVolumeLightSceneNode_setTailColor (ff-pointer self) inColor))

(cl:defmethod get-foot-color ((self ivolume-light-scene-node))
  (IVolumeLightSceneNode_getFootColor (ff-pointer self)))

(cl:defmethod get-tail-color ((self ivolume-light-scene-node))
  (IVolumeLightSceneNode_getTailColor (ff-pointer self)))


(cl:defclass iwrite-file(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod write ((self iwrite-file) buffer (sizeToWrite cl:integer))
  (IWriteFile_write (ff-pointer self) buffer sizeToWrite))

(cl:defmethod seek ((self iwrite-file) (finalPos cl:integer) (relativeMovement t))
  (IWriteFile_seek (ff-pointer self) finalPos relativeMovement))

(cl:defmethod seek ((self iwrite-file) (finalPos cl:integer))
  (IWriteFile_seek (ff-pointer self) finalPos))

(cl:defmethod get-pos ((self iwrite-file))
  (IWriteFile_getPos (ff-pointer self)))

(cl:defmethod get-file-name ((self iwrite-file))
  (IWriteFile_getFileName (ff-pointer self)))


(cl:defclass ixmlwriter(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod write-xmlheader ((self ixmlwriter))
  (IXMLWriter_writeXMLHeader (ff-pointer self)))

(cl:defmethod write-element ((self ixmlwriter) name (empty t) attr1Name attr1Value attr2Name attr2Value attr3Name attr3Value attr4Name attr4Value attr5Name attr5Value)
  (IXMLWriter_writeElement (ff-pointer self) name empty attr1Name attr1Value attr2Name attr2Value attr3Name attr3Value attr4Name attr4Value attr5Name attr5Value))

(cl:defmethod write-element ((self ixmlwriter) name (empty t) attr1Name attr1Value attr2Name attr2Value attr3Name attr3Value attr4Name attr4Value attr5Name)
  (IXMLWriter_writeElement (ff-pointer self) name empty attr1Name attr1Value attr2Name attr2Value attr3Name attr3Value attr4Name attr4Value attr5Name))

(cl:defmethod write-element ((self ixmlwriter) name (empty t) attr1Name attr1Value attr2Name attr2Value attr3Name attr3Value attr4Name attr4Value)
  (IXMLWriter_writeElement (ff-pointer self) name empty attr1Name attr1Value attr2Name attr2Value attr3Name attr3Value attr4Name attr4Value))

(cl:defmethod write-element ((self ixmlwriter) name (empty t) attr1Name attr1Value attr2Name attr2Value attr3Name attr3Value attr4Name)
  (IXMLWriter_writeElement (ff-pointer self) name empty attr1Name attr1Value attr2Name attr2Value attr3Name attr3Value attr4Name))

(cl:defmethod write-element ((self ixmlwriter) name (empty t) attr1Name attr1Value attr2Name attr2Value attr3Name attr3Value)
  (IXMLWriter_writeElement (ff-pointer self) name empty attr1Name attr1Value attr2Name attr2Value attr3Name attr3Value))

(cl:defmethod write-element ((self ixmlwriter) name (empty t) attr1Name attr1Value attr2Name attr2Value attr3Name)
  (IXMLWriter_writeElement (ff-pointer self) name empty attr1Name attr1Value attr2Name attr2Value attr3Name))

(cl:defmethod write-element ((self ixmlwriter) name (empty t) attr1Name attr1Value attr2Name attr2Value)
  (IXMLWriter_writeElement (ff-pointer self) name empty attr1Name attr1Value attr2Name attr2Value))

(cl:defmethod write-element ((self ixmlwriter) name (empty t) attr1Name attr1Value attr2Name)
  (IXMLWriter_writeElement (ff-pointer self) name empty attr1Name attr1Value attr2Name))

(cl:defmethod write-element ((self ixmlwriter) name (empty t) attr1Name attr1Value)
  (IXMLWriter_writeElement (ff-pointer self) name empty attr1Name attr1Value))

(cl:defmethod write-element ((self ixmlwriter) name (empty t) attr1Name)
  (IXMLWriter_writeElement (ff-pointer self) name empty attr1Name))

(cl:defmethod write-element ((self ixmlwriter) name (empty t))
  (IXMLWriter_writeElement (ff-pointer self) name empty))

(cl:defmethod write-element ((self ixmlwriter) name)
  (IXMLWriter_writeElement (ff-pointer self) name))

(cl:defmethod write-element ((self ixmlwriter) name (empty t) names values)
  (IXMLWriter_writeElement (ff-pointer self) name empty names values))

(cl:defmethod write-comment ((self ixmlwriter) comment)
  (IXMLWriter_writeComment (ff-pointer self) comment))

(cl:defmethod write-closing-tag ((self ixmlwriter) name)
  (IXMLWriter_writeClosingTag (ff-pointer self) name))

(cl:defmethod write-text ((self ixmlwriter) text)
  (IXMLWriter_writeText (ff-pointer self) text))

(cl:defmethod write-line-break ((self ixmlwriter))
  (IXMLWriter_writeLineBreak (ff-pointer self)))


(cl:defclass ilight-manager(irr::-ireference-counted)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod on-pre-render ((self ilight-manager) lightList)
  (ILightManager_OnPreRender (ff-pointer self) lightList))

(cl:defmethod on-post-render ((self ilight-manager))
  (ILightManager_OnPostRender (ff-pointer self)))

(cl:defmethod on-render-pass-pre-render ((self ilight-manager) (renderPass cl:integer))
  (ILightManager_OnRenderPassPreRender (ff-pointer self) renderPass))

(cl:defmethod on-render-pass-post-render ((self ilight-manager) (renderPass cl:integer))
  (ILightManager_OnRenderPassPostRender (ff-pointer self) renderPass))

(cl:defmethod on-node-pre-render ((self ilight-manager) (node iscene-node))
  (ILightManager_OnNodePreRender (ff-pointer self) node))

(cl:defmethod on-node-post-render ((self ilight-manager) (node iscene-node))
  (ILightManager_OnNodePostRender (ff-pointer self) node))


(cl:defclass smesh-buffer(irr::scene::-imesh-buffer)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj smesh-buffer) &key)
  (setf (slot-value obj 'ff-pointer) (new_SMeshBuffer)))

(cl:defmethod get-material ((self smesh-buffer))
  (SMeshBuffer_getMaterial (ff-pointer self)))

(cl:defmethod get-material ((self smesh-buffer))
  (SMeshBuffer_getMaterial (ff-pointer self)))

(cl:defmethod get-vertices ((self smesh-buffer))
  (SMeshBuffer_getVertices (ff-pointer self)))

(cl:defmethod get-vertices ((self smesh-buffer))
  (SMeshBuffer_getVertices (ff-pointer self)))

(cl:defmethod get-indices ((self smesh-buffer))
  (SMeshBuffer_getIndices (ff-pointer self)))

(cl:defmethod get-indices ((self smesh-buffer))
  (SMeshBuffer_getIndices (ff-pointer self)))

(cl:defmethod get-position ((self smesh-buffer) (i cl:integer))
  (SMeshBuffer_getPosition (ff-pointer self) i))

(cl:defmethod get-position ((self smesh-buffer) (i cl:integer))
  (SMeshBuffer_getPosition (ff-pointer self) i))

(cl:defmethod get-normal ((self smesh-buffer) (i cl:integer))
  (SMeshBuffer_getNormal (ff-pointer self) i))

(cl:defmethod get-normal ((self smesh-buffer) (i cl:integer))
  (SMeshBuffer_getNormal (ff-pointer self) i))

(cl:defmethod get-tcoords ((self smesh-buffer) (i cl:integer))
  (SMeshBuffer_getTCoords (ff-pointer self) i))

(cl:defmethod get-tcoords ((self smesh-buffer) (i cl:integer))
  (SMeshBuffer_getTCoords (ff-pointer self) i))

(cl:defmethod append ((self smesh-buffer) vertices (numVertices cl:integer) indices (numIndices cl:integer))
  (SMeshBuffer_append (ff-pointer self) vertices numVertices indices numIndices))

(cl:defmethod append ((self smesh-buffer) (other imesh-buffer))
  (SMeshBuffer_append (ff-pointer self) other))

(cl:defmethod set-hardware-mapping-hint ((self smesh-buffer) (NewMappingHint cl:integer) (Buffer cl:integer))
  (SMeshBuffer_setHardwareMappingHint (ff-pointer self) NewMappingHint Buffer))

(cl:defmethod set-hardware-mapping-hint ((self smesh-buffer) (NewMappingHint cl:integer))
  (SMeshBuffer_setHardwareMappingHint (ff-pointer self) NewMappingHint))

(cl:defmethod set-dirty ((self smesh-buffer) (Buffer cl:integer))
  (SMeshBuffer_setDirty (ff-pointer self) Buffer))

(cl:defmethod set-dirty ((self smesh-buffer))
  (SMeshBuffer_setDirty (ff-pointer self)))

(cl:defmethod (cl:setf ChangedID_Vertex) (arg0 (obj smesh-buffer))
  (SMeshBuffer_ChangedID_Vertex_set (ff-pointer obj) arg0))

(cl:defmethod ChangedID_Vertex ((obj smesh-buffer))
  (SMeshBuffer_ChangedID_Vertex_get (ff-pointer obj)))

(cl:defmethod (cl:setf ChangedID_Index) (arg0 (obj smesh-buffer))
  (SMeshBuffer_ChangedID_Index_set (ff-pointer obj) arg0))

(cl:defmethod ChangedID_Index ((obj smesh-buffer))
  (SMeshBuffer_ChangedID_Index_get (ff-pointer obj)))

(cl:defmethod (cl:setf MappingHint_Vertex) (arg0 (obj smesh-buffer))
  (SMeshBuffer_MappingHint_Vertex_set (ff-pointer obj) arg0))

(cl:defmethod MappingHint_Vertex ((obj smesh-buffer))
  (SMeshBuffer_MappingHint_Vertex_get (ff-pointer obj)))

(cl:defmethod (cl:setf MappingHint_Index) (arg0 (obj smesh-buffer))
  (SMeshBuffer_MappingHint_Index_set (ff-pointer obj) arg0))

(cl:defmethod MappingHint_Index ((obj smesh-buffer))
  (SMeshBuffer_MappingHint_Index_get (ff-pointer obj)))

(cl:defmethod (cl:setf Material) (arg0 (obj smesh-buffer))
  (SMeshBuffer_Material_set (ff-pointer obj) arg0))

(cl:defmethod Material ((obj smesh-buffer))
  (SMeshBuffer_Material_get (ff-pointer obj)))

(cl:defmethod (cl:setf Vertices) (arg0 (obj smesh-buffer))
  (SMeshBuffer_Vertices_set (ff-pointer obj) arg0))

(cl:defmethod Vertices ((obj smesh-buffer))
  (SMeshBuffer_Vertices_get (ff-pointer obj)))

(cl:defmethod (cl:setf Indices) (arg0 (obj smesh-buffer))
  (SMeshBuffer_Indices_set (ff-pointer obj) arg0))

(cl:defmethod Indices ((obj smesh-buffer))
  (SMeshBuffer_Indices_get (ff-pointer obj)))

(cl:defmethod (cl:setf BoundingBox) (arg0 (obj smesh-buffer))
  (SMeshBuffer_BoundingBox_set (ff-pointer obj) arg0))

(cl:defmethod BoundingBox ((obj smesh-buffer))
  (SMeshBuffer_BoundingBox_get (ff-pointer obj)))


(cl:defclass smesh-buffer-light-map(irr::scene::-imesh-buffer)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj smesh-buffer-light-map) &key)
  (setf (slot-value obj 'ff-pointer) (new_SMeshBufferLightMap)))

(cl:defmethod get-material ((self smesh-buffer-light-map))
  (SMeshBufferLightMap_getMaterial (ff-pointer self)))

(cl:defmethod get-material ((self smesh-buffer-light-map))
  (SMeshBufferLightMap_getMaterial (ff-pointer self)))

(cl:defmethod get-vertices ((self smesh-buffer-light-map))
  (SMeshBufferLightMap_getVertices (ff-pointer self)))

(cl:defmethod get-vertices ((self smesh-buffer-light-map))
  (SMeshBufferLightMap_getVertices (ff-pointer self)))

(cl:defmethod get-indices ((self smesh-buffer-light-map))
  (SMeshBufferLightMap_getIndices (ff-pointer self)))

(cl:defmethod get-indices ((self smesh-buffer-light-map))
  (SMeshBufferLightMap_getIndices (ff-pointer self)))

(cl:defmethod get-position ((self smesh-buffer-light-map) (i cl:integer))
  (SMeshBufferLightMap_getPosition (ff-pointer self) i))

(cl:defmethod get-position ((self smesh-buffer-light-map) (i cl:integer))
  (SMeshBufferLightMap_getPosition (ff-pointer self) i))

(cl:defmethod get-normal ((self smesh-buffer-light-map) (i cl:integer))
  (SMeshBufferLightMap_getNormal (ff-pointer self) i))

(cl:defmethod get-normal ((self smesh-buffer-light-map) (i cl:integer))
  (SMeshBufferLightMap_getNormal (ff-pointer self) i))

(cl:defmethod get-tcoords ((self smesh-buffer-light-map) (i cl:integer))
  (SMeshBufferLightMap_getTCoords (ff-pointer self) i))

(cl:defmethod get-tcoords ((self smesh-buffer-light-map) (i cl:integer))
  (SMeshBufferLightMap_getTCoords (ff-pointer self) i))

(cl:defmethod append ((self smesh-buffer-light-map) vertices (numVertices cl:integer) indices (numIndices cl:integer))
  (SMeshBufferLightMap_append (ff-pointer self) vertices numVertices indices numIndices))

(cl:defmethod append ((self smesh-buffer-light-map) (other imesh-buffer))
  (SMeshBufferLightMap_append (ff-pointer self) other))

(cl:defmethod set-hardware-mapping-hint ((self smesh-buffer-light-map) (NewMappingHint cl:integer) (Buffer cl:integer))
  (SMeshBufferLightMap_setHardwareMappingHint (ff-pointer self) NewMappingHint Buffer))

(cl:defmethod set-hardware-mapping-hint ((self smesh-buffer-light-map) (NewMappingHint cl:integer))
  (SMeshBufferLightMap_setHardwareMappingHint (ff-pointer self) NewMappingHint))

(cl:defmethod set-dirty ((self smesh-buffer-light-map) (Buffer cl:integer))
  (SMeshBufferLightMap_setDirty (ff-pointer self) Buffer))

(cl:defmethod set-dirty ((self smesh-buffer-light-map))
  (SMeshBufferLightMap_setDirty (ff-pointer self)))

(cl:defmethod (cl:setf ChangedID_Vertex) (arg0 (obj smesh-buffer-light-map))
  (SMeshBufferLightMap_ChangedID_Vertex_set (ff-pointer obj) arg0))

(cl:defmethod ChangedID_Vertex ((obj smesh-buffer-light-map))
  (SMeshBufferLightMap_ChangedID_Vertex_get (ff-pointer obj)))

(cl:defmethod (cl:setf ChangedID_Index) (arg0 (obj smesh-buffer-light-map))
  (SMeshBufferLightMap_ChangedID_Index_set (ff-pointer obj) arg0))

(cl:defmethod ChangedID_Index ((obj smesh-buffer-light-map))
  (SMeshBufferLightMap_ChangedID_Index_get (ff-pointer obj)))

(cl:defmethod (cl:setf MappingHint_Vertex) (arg0 (obj smesh-buffer-light-map))
  (SMeshBufferLightMap_MappingHint_Vertex_set (ff-pointer obj) arg0))

(cl:defmethod MappingHint_Vertex ((obj smesh-buffer-light-map))
  (SMeshBufferLightMap_MappingHint_Vertex_get (ff-pointer obj)))

(cl:defmethod (cl:setf MappingHint_Index) (arg0 (obj smesh-buffer-light-map))
  (SMeshBufferLightMap_MappingHint_Index_set (ff-pointer obj) arg0))

(cl:defmethod MappingHint_Index ((obj smesh-buffer-light-map))
  (SMeshBufferLightMap_MappingHint_Index_get (ff-pointer obj)))

(cl:defmethod (cl:setf Material) (arg0 (obj smesh-buffer-light-map))
  (SMeshBufferLightMap_Material_set (ff-pointer obj) arg0))

(cl:defmethod Material ((obj smesh-buffer-light-map))
  (SMeshBufferLightMap_Material_get (ff-pointer obj)))

(cl:defmethod (cl:setf Vertices) (arg0 (obj smesh-buffer-light-map))
  (SMeshBufferLightMap_Vertices_set (ff-pointer obj) arg0))

(cl:defmethod Vertices ((obj smesh-buffer-light-map))
  (SMeshBufferLightMap_Vertices_get (ff-pointer obj)))

(cl:defmethod (cl:setf Indices) (arg0 (obj smesh-buffer-light-map))
  (SMeshBufferLightMap_Indices_set (ff-pointer obj) arg0))

(cl:defmethod Indices ((obj smesh-buffer-light-map))
  (SMeshBufferLightMap_Indices_get (ff-pointer obj)))

(cl:defmethod (cl:setf BoundingBox) (arg0 (obj smesh-buffer-light-map))
  (SMeshBufferLightMap_BoundingBox_set (ff-pointer obj) arg0))

(cl:defmethod BoundingBox ((obj smesh-buffer-light-map))
  (SMeshBufferLightMap_BoundingBox_get (ff-pointer obj)))


(cl:defclass smesh-buffer-tangents(irr::scene::-imesh-buffer)
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj smesh-buffer-tangents) &key)
  (setf (slot-value obj 'ff-pointer) (new_SMeshBufferTangents)))

(cl:defmethod get-material ((self smesh-buffer-tangents))
  (SMeshBufferTangents_getMaterial (ff-pointer self)))

(cl:defmethod get-material ((self smesh-buffer-tangents))
  (SMeshBufferTangents_getMaterial (ff-pointer self)))

(cl:defmethod get-vertices ((self smesh-buffer-tangents))
  (SMeshBufferTangents_getVertices (ff-pointer self)))

(cl:defmethod get-vertices ((self smesh-buffer-tangents))
  (SMeshBufferTangents_getVertices (ff-pointer self)))

(cl:defmethod get-indices ((self smesh-buffer-tangents))
  (SMeshBufferTangents_getIndices (ff-pointer self)))

(cl:defmethod get-indices ((self smesh-buffer-tangents))
  (SMeshBufferTangents_getIndices (ff-pointer self)))

(cl:defmethod get-position ((self smesh-buffer-tangents) (i cl:integer))
  (SMeshBufferTangents_getPosition (ff-pointer self) i))

(cl:defmethod get-position ((self smesh-buffer-tangents) (i cl:integer))
  (SMeshBufferTangents_getPosition (ff-pointer self) i))

(cl:defmethod get-normal ((self smesh-buffer-tangents) (i cl:integer))
  (SMeshBufferTangents_getNormal (ff-pointer self) i))

(cl:defmethod get-normal ((self smesh-buffer-tangents) (i cl:integer))
  (SMeshBufferTangents_getNormal (ff-pointer self) i))

(cl:defmethod get-tcoords ((self smesh-buffer-tangents) (i cl:integer))
  (SMeshBufferTangents_getTCoords (ff-pointer self) i))

(cl:defmethod get-tcoords ((self smesh-buffer-tangents) (i cl:integer))
  (SMeshBufferTangents_getTCoords (ff-pointer self) i))

(cl:defmethod append ((self smesh-buffer-tangents) vertices (numVertices cl:integer) indices (numIndices cl:integer))
  (SMeshBufferTangents_append (ff-pointer self) vertices numVertices indices numIndices))

(cl:defmethod append ((self smesh-buffer-tangents) (other imesh-buffer))
  (SMeshBufferTangents_append (ff-pointer self) other))

(cl:defmethod set-hardware-mapping-hint ((self smesh-buffer-tangents) (NewMappingHint cl:integer) (Buffer cl:integer))
  (SMeshBufferTangents_setHardwareMappingHint (ff-pointer self) NewMappingHint Buffer))

(cl:defmethod set-hardware-mapping-hint ((self smesh-buffer-tangents) (NewMappingHint cl:integer))
  (SMeshBufferTangents_setHardwareMappingHint (ff-pointer self) NewMappingHint))

(cl:defmethod set-dirty ((self smesh-buffer-tangents) (Buffer cl:integer))
  (SMeshBufferTangents_setDirty (ff-pointer self) Buffer))

(cl:defmethod set-dirty ((self smesh-buffer-tangents))
  (SMeshBufferTangents_setDirty (ff-pointer self)))

(cl:defmethod (cl:setf ChangedID_Vertex) (arg0 (obj smesh-buffer-tangents))
  (SMeshBufferTangents_ChangedID_Vertex_set (ff-pointer obj) arg0))

(cl:defmethod ChangedID_Vertex ((obj smesh-buffer-tangents))
  (SMeshBufferTangents_ChangedID_Vertex_get (ff-pointer obj)))

(cl:defmethod (cl:setf ChangedID_Index) (arg0 (obj smesh-buffer-tangents))
  (SMeshBufferTangents_ChangedID_Index_set (ff-pointer obj) arg0))

(cl:defmethod ChangedID_Index ((obj smesh-buffer-tangents))
  (SMeshBufferTangents_ChangedID_Index_get (ff-pointer obj)))

(cl:defmethod (cl:setf MappingHint_Vertex) (arg0 (obj smesh-buffer-tangents))
  (SMeshBufferTangents_MappingHint_Vertex_set (ff-pointer obj) arg0))

(cl:defmethod MappingHint_Vertex ((obj smesh-buffer-tangents))
  (SMeshBufferTangents_MappingHint_Vertex_get (ff-pointer obj)))

(cl:defmethod (cl:setf MappingHint_Index) (arg0 (obj smesh-buffer-tangents))
  (SMeshBufferTangents_MappingHint_Index_set (ff-pointer obj) arg0))

(cl:defmethod MappingHint_Index ((obj smesh-buffer-tangents))
  (SMeshBufferTangents_MappingHint_Index_get (ff-pointer obj)))

(cl:defmethod (cl:setf Material) (arg0 (obj smesh-buffer-tangents))
  (SMeshBufferTangents_Material_set (ff-pointer obj) arg0))

(cl:defmethod Material ((obj smesh-buffer-tangents))
  (SMeshBufferTangents_Material_get (ff-pointer obj)))

(cl:defmethod (cl:setf Vertices) (arg0 (obj smesh-buffer-tangents))
  (SMeshBufferTangents_Vertices_set (ff-pointer obj) arg0))

(cl:defmethod Vertices ((obj smesh-buffer-tangents))
  (SMeshBufferTangents_Vertices_get (ff-pointer obj)))

(cl:defmethod (cl:setf Indices) (arg0 (obj smesh-buffer-tangents))
  (SMeshBufferTangents_Indices_set (ff-pointer obj) arg0))

(cl:defmethod Indices ((obj smesh-buffer-tangents))
  (SMeshBufferTangents_Indices_get (ff-pointer obj)))

(cl:defmethod (cl:setf BoundingBox) (arg0 (obj smesh-buffer-tangents))
  (SMeshBufferTangents_BoundingBox_set (ff-pointer obj) arg0))

(cl:defmethod BoundingBox ((obj smesh-buffer-tangents))
  (SMeshBufferTangents_BoundingBox_get (ff-pointer obj)))


(cl:defclass t-string-list()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj t-string-list) &key)
  (setf (slot-value obj 'ff-pointer) (new_tStringList)))

(cl:defmethod initialize-instance :after ((obj t-string-list) &key (start_count cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_tStringList start_count)))

(cl:defmethod initialize-instance :after ((obj t-string-list) &key (other t-string-list))
  (setf (slot-value obj 'ff-pointer) (new_tStringList (ff-pointer other))))

(cl:defmethod reallocate ((self t-string-list) (new_size cl:integer) (canShrink t))
  (tStringList_reallocate (ff-pointer self) new_size canShrink))

(cl:defmethod reallocate ((self t-string-list) (new_size cl:integer))
  (tStringList_reallocate (ff-pointer self) new_size))

(cl:defmethod set-alloc-strategy ((self t-string-list) (newStrategy cl:integer))
  (tStringList_setAllocStrategy (ff-pointer self) newStrategy))

(cl:defmethod set-alloc-strategy ((self t-string-list))
  (tStringList_setAllocStrategy (ff-pointer self)))

(cl:defmethod push-back ((self t-string-list) element)
  (tStringList_push_back (ff-pointer self) element))

(cl:defmethod push-front ((self t-string-list) element)
  (tStringList_push_front (ff-pointer self) element))

(cl:defmethod insert ((self t-string-list) element (index cl:integer))
  (tStringList_insert (ff-pointer self) element index))

(cl:defmethod insert ((self t-string-list) element)
  (tStringList_insert (ff-pointer self) element))

(cl:defmethod clear ((self t-string-list))
  (tStringList_clear (ff-pointer self)))

(cl:defmethod set-pointer ((self t-string-list) newPointer (size cl:integer) (_is_sorted t) (_free_when_destroyed t))
  (tStringList_set_pointer (ff-pointer self) newPointer size _is_sorted _free_when_destroyed))

(cl:defmethod set-pointer ((self t-string-list) newPointer (size cl:integer) (_is_sorted t))
  (tStringList_set_pointer (ff-pointer self) newPointer size _is_sorted))

(cl:defmethod set-pointer ((self t-string-list) newPointer (size cl:integer))
  (tStringList_set_pointer (ff-pointer self) newPointer size))

(cl:defmethod set-free-when-destroyed ((self t-string-list) (f t))
  (tStringList_set_free_when_destroyed (ff-pointer self) f))

(cl:defmethod set-used ((self t-string-list) (usedNow cl:integer))
  (tStringList_set_used (ff-pointer self) usedNow))

(cl:shadow "=")
(cl:defmethod = ((self t-string-list) (other t-string-list))
  (tStringList___assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "==")
(cl:defmethod == ((self t-string-list) (other t-string-list))
  (tStringList___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self t-string-list) (other t-string-list))
  (tStringList___ne__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "aRef")
(cl:defmethod aRef ((self t-string-list) (index cl:integer))
  (tStringList___aref__ (ff-pointer self) index))

(cl:shadow "aRef")
(cl:defmethod aRef ((self t-string-list) (index cl:integer))
  (tStringList___aref__ (ff-pointer self) index))

(cl:defmethod get-last ((self t-string-list))
  (tStringList_getLast (ff-pointer self)))

(cl:defmethod get-last ((self t-string-list))
  (tStringList_getLast (ff-pointer self)))

(cl:defmethod pointer ((self t-string-list))
  (tStringList_pointer (ff-pointer self)))

(cl:defmethod const-pointer ((self t-string-list))
  (tStringList_const_pointer (ff-pointer self)))

(cl:defmethod size ((self t-string-list))
  (tStringList_size (ff-pointer self)))

(cl:defmethod allocated-size ((self t-string-list))
  (tStringList_allocated_size (ff-pointer self)))

(cl:defmethod empty ((self t-string-list))
  (tStringList_empty (ff-pointer self)))

(cl:defmethod sort ((self t-string-list))
  (tStringList_sort (ff-pointer self)))

(cl:defmethod binary-search ((self t-string-list) element)
  (tStringList_binary_search (ff-pointer self) element))

(cl:defmethod binary-search ((self t-string-list) element)
  (tStringList_binary_search (ff-pointer self) element))

(cl:defmethod binary-search ((self t-string-list) element (left cl:integer) (right cl:integer))
  (tStringList_binary_search (ff-pointer self) element left right))

(cl:defmethod binary-search-multi ((self t-string-list) element last)
  (tStringList_binary_search_multi (ff-pointer self) element last))

(cl:defmethod linear-search ((self t-string-list) element)
  (tStringList_linear_search (ff-pointer self) element))

(cl:defmethod linear-reverse-search ((self t-string-list) element)
  (tStringList_linear_reverse_search (ff-pointer self) element))

(cl:defmethod erase ((self t-string-list) (index cl:integer))
  (tStringList_erase (ff-pointer self) index))

(cl:defmethod erase ((self t-string-list) (index cl:integer) (count cl:integer))
  (tStringList_erase (ff-pointer self) index count))

(cl:defmethod set-sorted ((self t-string-list) (_is_sorted t))
  (tStringList_set_sorted (ff-pointer self) _is_sorted))

(cl:defmethod swap ((self t-string-list) (other t-string-list))
  (tStringList_swap (ff-pointer self) (ff-pointer other)))


(cl:defclass t-tex-array()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj t-tex-array) &key)
  (setf (slot-value obj 'ff-pointer) (new_tTexArray)))

(cl:defmethod initialize-instance :after ((obj t-tex-array) &key (start_count cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_tTexArray start_count)))

(cl:defmethod initialize-instance :after ((obj t-tex-array) &key (other t-tex-array))
  (setf (slot-value obj 'ff-pointer) (new_tTexArray (ff-pointer other))))

(cl:defmethod reallocate ((self t-tex-array) (new_size cl:integer) (canShrink t))
  (tTexArray_reallocate (ff-pointer self) new_size canShrink))

(cl:defmethod reallocate ((self t-tex-array) (new_size cl:integer))
  (tTexArray_reallocate (ff-pointer self) new_size))

(cl:defmethod set-alloc-strategy ((self t-tex-array) (newStrategy cl:integer))
  (tTexArray_setAllocStrategy (ff-pointer self) newStrategy))

(cl:defmethod set-alloc-strategy ((self t-tex-array))
  (tTexArray_setAllocStrategy (ff-pointer self)))

(cl:defmethod push-back ((self t-tex-array) element)
  (tTexArray_push_back (ff-pointer self) element))

(cl:defmethod push-front ((self t-tex-array) element)
  (tTexArray_push_front (ff-pointer self) element))

(cl:defmethod insert ((self t-tex-array) element (index cl:integer))
  (tTexArray_insert (ff-pointer self) element index))

(cl:defmethod insert ((self t-tex-array) element)
  (tTexArray_insert (ff-pointer self) element))

(cl:defmethod clear ((self t-tex-array))
  (tTexArray_clear (ff-pointer self)))

(cl:defmethod set-pointer ((self t-tex-array) newPointer (size cl:integer) (_is_sorted t) (_free_when_destroyed t))
  (tTexArray_set_pointer (ff-pointer self) newPointer size _is_sorted _free_when_destroyed))

(cl:defmethod set-pointer ((self t-tex-array) newPointer (size cl:integer) (_is_sorted t))
  (tTexArray_set_pointer (ff-pointer self) newPointer size _is_sorted))

(cl:defmethod set-pointer ((self t-tex-array) newPointer (size cl:integer))
  (tTexArray_set_pointer (ff-pointer self) newPointer size))

(cl:defmethod set-free-when-destroyed ((self t-tex-array) (f t))
  (tTexArray_set_free_when_destroyed (ff-pointer self) f))

(cl:defmethod set-used ((self t-tex-array) (usedNow cl:integer))
  (tTexArray_set_used (ff-pointer self) usedNow))

(cl:shadow "=")
(cl:defmethod = ((self t-tex-array) (other t-tex-array))
  (tTexArray___assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "==")
(cl:defmethod == ((self t-tex-array) (other t-tex-array))
  (tTexArray___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self t-tex-array) (other t-tex-array))
  (tTexArray___ne__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "aRef")
(cl:defmethod aRef ((self t-tex-array) (index cl:integer))
  (tTexArray___aref__ (ff-pointer self) index))

(cl:shadow "aRef")
(cl:defmethod aRef ((self t-tex-array) (index cl:integer))
  (tTexArray___aref__ (ff-pointer self) index))

(cl:defmethod get-last ((self t-tex-array))
  (tTexArray_getLast (ff-pointer self)))

(cl:defmethod get-last ((self t-tex-array))
  (tTexArray_getLast (ff-pointer self)))

(cl:defmethod pointer ((self t-tex-array))
  (tTexArray_pointer (ff-pointer self)))

(cl:defmethod const-pointer ((self t-tex-array))
  (tTexArray_const_pointer (ff-pointer self)))

(cl:defmethod size ((self t-tex-array))
  (tTexArray_size (ff-pointer self)))

(cl:defmethod allocated-size ((self t-tex-array))
  (tTexArray_allocated_size (ff-pointer self)))

(cl:defmethod empty ((self t-tex-array))
  (tTexArray_empty (ff-pointer self)))

(cl:defmethod sort ((self t-tex-array))
  (tTexArray_sort (ff-pointer self)))

(cl:defmethod binary-search ((self t-tex-array) element)
  (tTexArray_binary_search (ff-pointer self) element))

(cl:defmethod binary-search ((self t-tex-array) element)
  (tTexArray_binary_search (ff-pointer self) element))

(cl:defmethod binary-search ((self t-tex-array) element (left cl:integer) (right cl:integer))
  (tTexArray_binary_search (ff-pointer self) element left right))

(cl:defmethod binary-search-multi ((self t-tex-array) element last)
  (tTexArray_binary_search_multi (ff-pointer self) element last))

(cl:defmethod linear-search ((self t-tex-array) element)
  (tTexArray_linear_search (ff-pointer self) element))

(cl:defmethod linear-reverse-search ((self t-tex-array) element)
  (tTexArray_linear_reverse_search (ff-pointer self) element))

(cl:defmethod erase ((self t-tex-array) (index cl:integer))
  (tTexArray_erase (ff-pointer self) index))

(cl:defmethod erase ((self t-tex-array) (index cl:integer) (count cl:integer))
  (tTexArray_erase (ff-pointer self) index count))

(cl:defmethod set-sorted ((self t-tex-array) (_is_sorted t))
  (tTexArray_set_sorted (ff-pointer self) _is_sorted))

(cl:defmethod swap ((self t-tex-array) (other t-tex-array))
  (tTexArray_swap (ff-pointer self) (ff-pointer other)))


(cl:defclass iscene-node-list()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj iscene-node-list) &key)
  (setf (slot-value obj 'ff-pointer) (new_ISceneNodeList)))

(cl:defmethod initialize-instance :after ((obj iscene-node-list) &key (other iscene-node-list))
  (setf (slot-value obj 'ff-pointer) (new_ISceneNodeList (ff-pointer other))))

(cl:shadow "=")
(cl:defmethod = ((self iscene-node-list) (other iscene-node-list))
  (ISceneNodeList___assign__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod size ((self iscene-node-list))
  (ISceneNodeList_size (ff-pointer self)))

(cl:defmethod get-size ((self iscene-node-list))
  (ISceneNodeList_getSize (ff-pointer self)))

(cl:defmethod clear ((self iscene-node-list))
  (ISceneNodeList_clear (ff-pointer self)))

(cl:defmethod empty ((self iscene-node-list))
  (ISceneNodeList_empty (ff-pointer self)))

(cl:defmethod push-back ((self iscene-node-list) element)
  (ISceneNodeList_push_back (ff-pointer self) element))

(cl:defmethod push-front ((self iscene-node-list) element)
  (ISceneNodeList_push_front (ff-pointer self) element))

(cl:defmethod begin ((self iscene-node-list))
  (ISceneNodeList_begin (ff-pointer self)))

(cl:defmethod begin ((self iscene-node-list))
  (ISceneNodeList_begin (ff-pointer self)))

(cl:defmethod end ((self iscene-node-list))
  (ISceneNodeList_end (ff-pointer self)))

(cl:defmethod end ((self iscene-node-list))
  (ISceneNodeList_end (ff-pointer self)))

(cl:defmethod get-last ((self iscene-node-list))
  (ISceneNodeList_getLast (ff-pointer self)))

(cl:defmethod get-last ((self iscene-node-list))
  (ISceneNodeList_getLast (ff-pointer self)))

(cl:defmethod insert-after ((self iscene-node-list) it element)
  (ISceneNodeList_insert_after (ff-pointer self) it element))

(cl:defmethod insert-before ((self iscene-node-list) it element)
  (ISceneNodeList_insert_before (ff-pointer self) it element))

(cl:defmethod erase ((self iscene-node-list) it)
  (ISceneNodeList_erase (ff-pointer self) it))

(cl:defmethod swap ((self iscene-node-list) (other iscene-node-list))
  (ISceneNodeList_swap (ff-pointer self) (ff-pointer other)))


(cl:defclass iscene-node-animator-list()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj iscene-node-animator-list) &key)
  (setf (slot-value obj 'ff-pointer) (new_ISceneNodeAnimatorList)))

(cl:defmethod initialize-instance :after ((obj iscene-node-animator-list) &key (other iscene-node-animator-list))
  (setf (slot-value obj 'ff-pointer) (new_ISceneNodeAnimatorList (ff-pointer other))))

(cl:shadow "=")
(cl:defmethod = ((self iscene-node-animator-list) (other iscene-node-animator-list))
  (ISceneNodeAnimatorList___assign__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod size ((self iscene-node-animator-list))
  (ISceneNodeAnimatorList_size (ff-pointer self)))

(cl:defmethod get-size ((self iscene-node-animator-list))
  (ISceneNodeAnimatorList_getSize (ff-pointer self)))

(cl:defmethod clear ((self iscene-node-animator-list))
  (ISceneNodeAnimatorList_clear (ff-pointer self)))

(cl:defmethod empty ((self iscene-node-animator-list))
  (ISceneNodeAnimatorList_empty (ff-pointer self)))

(cl:defmethod push-back ((self iscene-node-animator-list) element)
  (ISceneNodeAnimatorList_push_back (ff-pointer self) element))

(cl:defmethod push-front ((self iscene-node-animator-list) element)
  (ISceneNodeAnimatorList_push_front (ff-pointer self) element))

(cl:defmethod begin ((self iscene-node-animator-list))
  (ISceneNodeAnimatorList_begin (ff-pointer self)))

(cl:defmethod begin ((self iscene-node-animator-list))
  (ISceneNodeAnimatorList_begin (ff-pointer self)))

(cl:defmethod end ((self iscene-node-animator-list))
  (ISceneNodeAnimatorList_end (ff-pointer self)))

(cl:defmethod end ((self iscene-node-animator-list))
  (ISceneNodeAnimatorList_end (ff-pointer self)))

(cl:defmethod get-last ((self iscene-node-animator-list))
  (ISceneNodeAnimatorList_getLast (ff-pointer self)))

(cl:defmethod get-last ((self iscene-node-animator-list))
  (ISceneNodeAnimatorList_getLast (ff-pointer self)))

(cl:defmethod insert-after ((self iscene-node-animator-list) it element)
  (ISceneNodeAnimatorList_insert_after (ff-pointer self) it element))

(cl:defmethod insert-before ((self iscene-node-animator-list) it element)
  (ISceneNodeAnimatorList_insert_before (ff-pointer self) it element))

(cl:defmethod erase ((self iscene-node-animator-list) it)
  (ISceneNodeAnimatorList_erase (ff-pointer self) it))

(cl:defmethod swap ((self iscene-node-animator-list) (other iscene-node-animator-list))
  (ISceneNodeAnimatorList_swap (ff-pointer self) (ff-pointer other)))


(cl:defclass aabbox3df()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj aabbox3df) &key)
  (setf (slot-value obj 'ff-pointer) (new_aabbox3df)))

(cl:defmethod initialize-instance :after ((obj aabbox3df) &key min max)
  (setf (slot-value obj 'ff-pointer) (new_aabbox3df min max)))

(cl:defmethod initialize-instance :after ((obj aabbox3df) &key init)
  (setf (slot-value obj 'ff-pointer) (new_aabbox3df init)))

(cl:defmethod initialize-instance :after ((obj aabbox3df) &key (minx cl:number) (miny cl:number) (minz cl:number) (maxx cl:number) (maxy cl:number) (maxz cl:number))
  (setf (slot-value obj 'ff-pointer) (new_aabbox3df minx miny minz maxx maxy maxz)))

(cl:shadow "==")
(cl:defmethod == ((self aabbox3df) (other aabbox3df))
  (aabbox3df___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self aabbox3df) (other aabbox3df))
  (aabbox3df___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod reset ((self aabbox3df) (x cl:number) (y cl:number) (z cl:number))
  (aabbox3df_reset (ff-pointer self) x y z))

(cl:defmethod reset ((self aabbox3df) (initValue aabbox3df))
  (aabbox3df_reset (ff-pointer self) (ff-pointer initValue)))

(cl:defmethod reset ((self aabbox3df) initValue)
  (aabbox3df_reset (ff-pointer self) initValue))

(cl:defmethod add-internal-point ((self aabbox3df) p)
  (aabbox3df_addInternalPoint (ff-pointer self) p))

(cl:defmethod add-internal-box ((self aabbox3df) (b aabbox3df))
  (aabbox3df_addInternalBox (ff-pointer self) (ff-pointer b)))

(cl:defmethod add-internal-point ((self aabbox3df) (x cl:number) (y cl:number) (z cl:number))
  (aabbox3df_addInternalPoint (ff-pointer self) x y z))

(cl:defmethod get-center ((self aabbox3df))
  (aabbox3df_getCenter (ff-pointer self)))

(cl:defmethod get-extent ((self aabbox3df))
  (aabbox3df_getExtent (ff-pointer self)))

(cl:defmethod is-empty ((self aabbox3df))
  (aabbox3df_isEmpty (ff-pointer self)))

(cl:defmethod get-volume ((self aabbox3df))
  (aabbox3df_getVolume (ff-pointer self)))

(cl:defmethod get-area ((self aabbox3df))
  (aabbox3df_getArea (ff-pointer self)))

(cl:defmethod get-edges ((self aabbox3df) edges)
  (aabbox3df_getEdges (ff-pointer self) edges))

(cl:defmethod repair ((self aabbox3df))
  (aabbox3df_repair (ff-pointer self)))

(cl:defmethod get-interpolated ((self aabbox3df) (other aabbox3df) (d cl:number))
  (aabbox3df_getInterpolated (ff-pointer self) (ff-pointer other) d))

(cl:defmethod is-point-inside ((self aabbox3df) p)
  (aabbox3df_isPointInside (ff-pointer self) p))

(cl:defmethod is-point-total-inside ((self aabbox3df) p)
  (aabbox3df_isPointTotalInside (ff-pointer self) p))

(cl:defmethod is-full-inside ((self aabbox3df) (other aabbox3df))
  (aabbox3df_isFullInside (ff-pointer self) (ff-pointer other)))

(cl:defmethod intersects-with-box ((self aabbox3df) (other aabbox3df))
  (aabbox3df_intersectsWithBox (ff-pointer self) (ff-pointer other)))

(cl:defmethod intersects-with-line ((self aabbox3df) line)
  (aabbox3df_intersectsWithLine (ff-pointer self) line))

(cl:defmethod intersects-with-line ((self aabbox3df) linemiddle linevect (halflength cl:number))
  (aabbox3df_intersectsWithLine (ff-pointer self) linemiddle linevect halflength))

(cl:defmethod classify-plane-relation ((self aabbox3df) plane)
  (aabbox3df_classifyPlaneRelation (ff-pointer self) plane))

(cl:defmethod (cl:setf MinEdge) (arg0 (obj aabbox3df))
  (aabbox3df_MinEdge_set (ff-pointer obj) arg0))

(cl:defmethod MinEdge ((obj aabbox3df))
  (aabbox3df_MinEdge_get (ff-pointer obj)))

(cl:defmethod (cl:setf MaxEdge) (arg0 (obj aabbox3df))
  (aabbox3df_MaxEdge_set (ff-pointer obj) arg0))

(cl:defmethod MaxEdge ((obj aabbox3df))
  (aabbox3df_MaxEdge_get (ff-pointer obj)))


(cl:defclass aabbox3di()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj aabbox3di) &key)
  (setf (slot-value obj 'ff-pointer) (new_aabbox3di)))

(cl:defmethod initialize-instance :after ((obj aabbox3di) &key min max)
  (setf (slot-value obj 'ff-pointer) (new_aabbox3di min max)))

(cl:defmethod initialize-instance :after ((obj aabbox3di) &key init)
  (setf (slot-value obj 'ff-pointer) (new_aabbox3di init)))

(cl:defmethod initialize-instance :after ((obj aabbox3di) &key (minx cl:integer) (miny cl:integer) (minz cl:integer) (maxx cl:integer) (maxy cl:integer) (maxz cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_aabbox3di minx miny minz maxx maxy maxz)))

(cl:shadow "==")
(cl:defmethod == ((self aabbox3di) (other aabbox3di))
  (aabbox3di___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self aabbox3di) (other aabbox3di))
  (aabbox3di___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod reset ((self aabbox3di) (x cl:integer) (y cl:integer) (z cl:integer))
  (aabbox3di_reset (ff-pointer self) x y z))

(cl:defmethod reset ((self aabbox3di) (initValue aabbox3di))
  (aabbox3di_reset (ff-pointer self) (ff-pointer initValue)))

(cl:defmethod reset ((self aabbox3di) initValue)
  (aabbox3di_reset (ff-pointer self) initValue))

(cl:defmethod add-internal-point ((self aabbox3di) p)
  (aabbox3di_addInternalPoint (ff-pointer self) p))

(cl:defmethod add-internal-box ((self aabbox3di) (b aabbox3di))
  (aabbox3di_addInternalBox (ff-pointer self) (ff-pointer b)))

(cl:defmethod add-internal-point ((self aabbox3di) (x cl:integer) (y cl:integer) (z cl:integer))
  (aabbox3di_addInternalPoint (ff-pointer self) x y z))

(cl:defmethod get-center ((self aabbox3di))
  (aabbox3di_getCenter (ff-pointer self)))

(cl:defmethod get-extent ((self aabbox3di))
  (aabbox3di_getExtent (ff-pointer self)))

(cl:defmethod is-empty ((self aabbox3di))
  (aabbox3di_isEmpty (ff-pointer self)))

(cl:defmethod get-volume ((self aabbox3di))
  (aabbox3di_getVolume (ff-pointer self)))

(cl:defmethod get-area ((self aabbox3di))
  (aabbox3di_getArea (ff-pointer self)))

(cl:defmethod get-edges ((self aabbox3di) edges)
  (aabbox3di_getEdges (ff-pointer self) edges))

(cl:defmethod repair ((self aabbox3di))
  (aabbox3di_repair (ff-pointer self)))

(cl:defmethod get-interpolated ((self aabbox3di) (other aabbox3di) (d cl:number))
  (aabbox3di_getInterpolated (ff-pointer self) (ff-pointer other) d))

(cl:defmethod is-point-inside ((self aabbox3di) p)
  (aabbox3di_isPointInside (ff-pointer self) p))

(cl:defmethod is-point-total-inside ((self aabbox3di) p)
  (aabbox3di_isPointTotalInside (ff-pointer self) p))

(cl:defmethod is-full-inside ((self aabbox3di) (other aabbox3di))
  (aabbox3di_isFullInside (ff-pointer self) (ff-pointer other)))

(cl:defmethod intersects-with-box ((self aabbox3di) (other aabbox3di))
  (aabbox3di_intersectsWithBox (ff-pointer self) (ff-pointer other)))

(cl:defmethod intersects-with-line ((self aabbox3di) line)
  (aabbox3di_intersectsWithLine (ff-pointer self) line))

(cl:defmethod intersects-with-line ((self aabbox3di) linemiddle linevect (halflength cl:integer))
  (aabbox3di_intersectsWithLine (ff-pointer self) linemiddle linevect halflength))

(cl:defmethod classify-plane-relation ((self aabbox3di) plane)
  (aabbox3di_classifyPlaneRelation (ff-pointer self) plane))

(cl:defmethod (cl:setf MinEdge) (arg0 (obj aabbox3di))
  (aabbox3di_MinEdge_set (ff-pointer obj) arg0))

(cl:defmethod MinEdge ((obj aabbox3di))
  (aabbox3di_MinEdge_get (ff-pointer obj)))

(cl:defmethod (cl:setf MaxEdge) (arg0 (obj aabbox3di))
  (aabbox3di_MaxEdge_set (ff-pointer obj) arg0))

(cl:defmethod MaxEdge ((obj aabbox3di))
  (aabbox3di_MaxEdge_get (ff-pointer obj)))


(cl:defclass dimension2df()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj dimension2df) &key)
  (setf (slot-value obj 'ff-pointer) (new_dimension2df)))

(cl:defmethod initialize-instance :after ((obj dimension2df) &key width height)
  (setf (slot-value obj 'ff-pointer) (new_dimension2df width height)))

(cl:defmethod initialize-instance :after ((obj dimension2df) &key other)
  (setf (slot-value obj 'ff-pointer) (new_dimension2df other)))

(cl:shadow "==")
(cl:defmethod == ((self dimension2df) (other dimension2df))
  (dimension2df___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self dimension2df) (other dimension2df))
  (dimension2df___ne__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "==")
(cl:defmethod == ((self dimension2df) other)
  (dimension2df___eq__ (ff-pointer self) other))

(cl:shadow "!=")
(cl:defmethod != ((self dimension2df) other)
  (dimension2df___ne__ (ff-pointer self) other))

(cl:defmethod set ((self dimension2df) width height)
  (dimension2df_set (ff-pointer self) width height))

(cl:shadow "/=")
(cl:defmethod /= ((self dimension2df) scale)
  (dimension2df___div_assign__ (ff-pointer self) scale))

(cl:shadow "/")
(cl:defmethod / ((self dimension2df) scale)
  (dimension2df___div__ (ff-pointer self) scale))

(cl:shadow "*=")
(cl:defmethod *= ((self dimension2df) scale)
  (dimension2df___mul_assign__ (ff-pointer self) scale))

(cl:shadow "*")
(cl:defmethod * ((self dimension2df) scale)
  (dimension2df___mul__ (ff-pointer self) scale))

(cl:shadow "+=")
(cl:defmethod += ((self dimension2df) (other dimension2df))
  (dimension2df___add_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self dimension2df) (other dimension2df))
  (dimension2df___add__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-=")
(cl:defmethod -= ((self dimension2df) (other dimension2df))
  (dimension2df___sub_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-")
(cl:defmethod - ((self dimension2df) (other dimension2df))
  (dimension2df___sub__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-area ((self dimension2df))
  (dimension2df_getArea (ff-pointer self)))

(cl:defmethod get-optimal-size ((self dimension2df) (requirePowerOfTwo t) (requireSquare t) (larger t) (maxValue cl:integer))
  (dimension2df_getOptimalSize (ff-pointer self) requirePowerOfTwo requireSquare larger maxValue))

(cl:defmethod get-optimal-size ((self dimension2df) (requirePowerOfTwo t) (requireSquare t) (larger t))
  (dimension2df_getOptimalSize (ff-pointer self) requirePowerOfTwo requireSquare larger))

(cl:defmethod get-optimal-size ((self dimension2df) (requirePowerOfTwo t) (requireSquare t))
  (dimension2df_getOptimalSize (ff-pointer self) requirePowerOfTwo requireSquare))

(cl:defmethod get-optimal-size ((self dimension2df) (requirePowerOfTwo t))
  (dimension2df_getOptimalSize (ff-pointer self) requirePowerOfTwo))

(cl:defmethod get-optimal-size ((self dimension2df))
  (dimension2df_getOptimalSize (ff-pointer self)))

(cl:defmethod get-interpolated ((self dimension2df) (other dimension2df) (d cl:number))
  (dimension2df_getInterpolated (ff-pointer self) (ff-pointer other) d))

(cl:defmethod (cl:setf Width) (arg0 (obj dimension2df))
  (dimension2df_Width_set (ff-pointer obj) arg0))

(cl:defmethod Width ((obj dimension2df))
  (dimension2df_Width_get (ff-pointer obj)))

(cl:defmethod (cl:setf Height) (arg0 (obj dimension2df))
  (dimension2df_Height_set (ff-pointer obj) arg0))

(cl:defmethod Height ((obj dimension2df))
  (dimension2df_Height_get (ff-pointer obj)))


(cl:defclass dimension2du()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj dimension2du) &key)
  (setf (slot-value obj 'ff-pointer) (new_dimension2du)))

(cl:defmethod initialize-instance :after ((obj dimension2du) &key width height)
  (setf (slot-value obj 'ff-pointer) (new_dimension2du width height)))

(cl:defmethod initialize-instance :after ((obj dimension2du) &key other)
  (setf (slot-value obj 'ff-pointer) (new_dimension2du other)))

(cl:shadow "==")
(cl:defmethod == ((self dimension2du) (other dimension2du))
  (dimension2du___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self dimension2du) (other dimension2du))
  (dimension2du___ne__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "==")
(cl:defmethod == ((self dimension2du) other)
  (dimension2du___eq__ (ff-pointer self) other))

(cl:shadow "!=")
(cl:defmethod != ((self dimension2du) other)
  (dimension2du___ne__ (ff-pointer self) other))

(cl:defmethod set ((self dimension2du) width height)
  (dimension2du_set (ff-pointer self) width height))

(cl:shadow "/=")
(cl:defmethod /= ((self dimension2du) scale)
  (dimension2du___div_assign__ (ff-pointer self) scale))

(cl:shadow "/")
(cl:defmethod / ((self dimension2du) scale)
  (dimension2du___div__ (ff-pointer self) scale))

(cl:shadow "*=")
(cl:defmethod *= ((self dimension2du) scale)
  (dimension2du___mul_assign__ (ff-pointer self) scale))

(cl:shadow "*")
(cl:defmethod * ((self dimension2du) scale)
  (dimension2du___mul__ (ff-pointer self) scale))

(cl:shadow "+=")
(cl:defmethod += ((self dimension2du) (other dimension2du))
  (dimension2du___add_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self dimension2du) (other dimension2du))
  (dimension2du___add__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-=")
(cl:defmethod -= ((self dimension2du) (other dimension2du))
  (dimension2du___sub_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-")
(cl:defmethod - ((self dimension2du) (other dimension2du))
  (dimension2du___sub__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-area ((self dimension2du))
  (dimension2du_getArea (ff-pointer self)))

(cl:defmethod get-optimal-size ((self dimension2du) (requirePowerOfTwo t) (requireSquare t) (larger t) (maxValue cl:integer))
  (dimension2du_getOptimalSize (ff-pointer self) requirePowerOfTwo requireSquare larger maxValue))

(cl:defmethod get-optimal-size ((self dimension2du) (requirePowerOfTwo t) (requireSquare t) (larger t))
  (dimension2du_getOptimalSize (ff-pointer self) requirePowerOfTwo requireSquare larger))

(cl:defmethod get-optimal-size ((self dimension2du) (requirePowerOfTwo t) (requireSquare t))
  (dimension2du_getOptimalSize (ff-pointer self) requirePowerOfTwo requireSquare))

(cl:defmethod get-optimal-size ((self dimension2du) (requirePowerOfTwo t))
  (dimension2du_getOptimalSize (ff-pointer self) requirePowerOfTwo))

(cl:defmethod get-optimal-size ((self dimension2du))
  (dimension2du_getOptimalSize (ff-pointer self)))

(cl:defmethod get-interpolated ((self dimension2du) (other dimension2du) (d cl:number))
  (dimension2du_getInterpolated (ff-pointer self) (ff-pointer other) d))

(cl:defmethod (cl:setf Width) (arg0 (obj dimension2du))
  (dimension2du_Width_set (ff-pointer obj) arg0))

(cl:defmethod Width ((obj dimension2du))
  (dimension2du_Width_get (ff-pointer obj)))

(cl:defmethod (cl:setf Height) (arg0 (obj dimension2du))
  (dimension2du_Height_set (ff-pointer obj) arg0))

(cl:defmethod Height ((obj dimension2du))
  (dimension2du_Height_get (ff-pointer obj)))


(cl:defclass dimension2di()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj dimension2di) &key)
  (setf (slot-value obj 'ff-pointer) (new_dimension2di)))

(cl:defmethod initialize-instance :after ((obj dimension2di) &key width height)
  (setf (slot-value obj 'ff-pointer) (new_dimension2di width height)))

(cl:defmethod initialize-instance :after ((obj dimension2di) &key other)
  (setf (slot-value obj 'ff-pointer) (new_dimension2di other)))

(cl:shadow "==")
(cl:defmethod == ((self dimension2di) (other dimension2di))
  (dimension2di___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self dimension2di) (other dimension2di))
  (dimension2di___ne__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "==")
(cl:defmethod == ((self dimension2di) other)
  (dimension2di___eq__ (ff-pointer self) other))

(cl:shadow "!=")
(cl:defmethod != ((self dimension2di) other)
  (dimension2di___ne__ (ff-pointer self) other))

(cl:defmethod set ((self dimension2di) width height)
  (dimension2di_set (ff-pointer self) width height))

(cl:shadow "/=")
(cl:defmethod /= ((self dimension2di) scale)
  (dimension2di___div_assign__ (ff-pointer self) scale))

(cl:shadow "/")
(cl:defmethod / ((self dimension2di) scale)
  (dimension2di___div__ (ff-pointer self) scale))

(cl:shadow "*=")
(cl:defmethod *= ((self dimension2di) scale)
  (dimension2di___mul_assign__ (ff-pointer self) scale))

(cl:shadow "*")
(cl:defmethod * ((self dimension2di) scale)
  (dimension2di___mul__ (ff-pointer self) scale))

(cl:shadow "+=")
(cl:defmethod += ((self dimension2di) (other dimension2di))
  (dimension2di___add_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self dimension2di) (other dimension2di))
  (dimension2di___add__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-=")
(cl:defmethod -= ((self dimension2di) (other dimension2di))
  (dimension2di___sub_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-")
(cl:defmethod - ((self dimension2di) (other dimension2di))
  (dimension2di___sub__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-area ((self dimension2di))
  (dimension2di_getArea (ff-pointer self)))

(cl:defmethod get-optimal-size ((self dimension2di) (requirePowerOfTwo t) (requireSquare t) (larger t) (maxValue cl:integer))
  (dimension2di_getOptimalSize (ff-pointer self) requirePowerOfTwo requireSquare larger maxValue))

(cl:defmethod get-optimal-size ((self dimension2di) (requirePowerOfTwo t) (requireSquare t) (larger t))
  (dimension2di_getOptimalSize (ff-pointer self) requirePowerOfTwo requireSquare larger))

(cl:defmethod get-optimal-size ((self dimension2di) (requirePowerOfTwo t) (requireSquare t))
  (dimension2di_getOptimalSize (ff-pointer self) requirePowerOfTwo requireSquare))

(cl:defmethod get-optimal-size ((self dimension2di) (requirePowerOfTwo t))
  (dimension2di_getOptimalSize (ff-pointer self) requirePowerOfTwo))

(cl:defmethod get-optimal-size ((self dimension2di))
  (dimension2di_getOptimalSize (ff-pointer self)))

(cl:defmethod get-interpolated ((self dimension2di) (other dimension2di) (d cl:number))
  (dimension2di_getInterpolated (ff-pointer self) (ff-pointer other) d))

(cl:defmethod (cl:setf Width) (arg0 (obj dimension2di))
  (dimension2di_Width_set (ff-pointer obj) arg0))

(cl:defmethod Width ((obj dimension2di))
  (dimension2di_Width_get (ff-pointer obj)))

(cl:defmethod (cl:setf Height) (arg0 (obj dimension2di))
  (dimension2di_Height_set (ff-pointer obj) arg0))

(cl:defmethod Height ((obj dimension2di))
  (dimension2di_Height_get (ff-pointer obj)))


(cl:defclass line2df()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj line2df) &key)
  (setf (slot-value obj 'ff-pointer) (new_line2df)))

(cl:defmethod initialize-instance :after ((obj line2df) &key (xa cl:number) (ya cl:number) (xb cl:number) (yb cl:number))
  (setf (slot-value obj 'ff-pointer) (new_line2df xa ya xb yb)))

(cl:defmethod initialize-instance :after ((obj line2df) &key start end)
  (setf (slot-value obj 'ff-pointer) (new_line2df start end)))

(cl:defmethod initialize-instance :after ((obj line2df) &key (other line2df))
  (setf (slot-value obj 'ff-pointer) (new_line2df (ff-pointer other))))

(cl:shadow "+")
(cl:defmethod + ((self line2df) point)
  (line2df___add__ (ff-pointer self) point))

(cl:shadow "+=")
(cl:defmethod += ((self line2df) point)
  (line2df___add_assign__ (ff-pointer self) point))

(cl:shadow "-")
(cl:defmethod - ((self line2df) point)
  (line2df___sub__ (ff-pointer self) point))

(cl:shadow "-=")
(cl:defmethod -= ((self line2df) point)
  (line2df___sub_assign__ (ff-pointer self) point))

(cl:shadow "==")
(cl:defmethod == ((self line2df) (other line2df))
  (line2df___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self line2df) (other line2df))
  (line2df___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-line ((self line2df) xa ya xb yb)
  (line2df_setLine (ff-pointer self) xa ya xb yb))

(cl:defmethod set-line ((self line2df) nstart nend)
  (line2df_setLine (ff-pointer self) nstart nend))

(cl:defmethod set-line ((self line2df) (line line2df))
  (line2df_setLine (ff-pointer self) (ff-pointer line)))

(cl:defmethod get-length ((self line2df))
  (line2df_getLength (ff-pointer self)))

(cl:defmethod get-length-sq ((self line2df))
  (line2df_getLengthSQ (ff-pointer self)))

(cl:defmethod get-middle ((self line2df))
  (line2df_getMiddle (ff-pointer self)))

(cl:defmethod get-vector ((self line2df))
  (line2df_getVector (ff-pointer self)))

(cl:defmethod intersect-with ((self line2df) (l line2df) out (checkOnlySegments t))
  (line2df_intersectWith (ff-pointer self) (ff-pointer l) out checkOnlySegments))

(cl:defmethod intersect-with ((self line2df) (l line2df) out)
  (line2df_intersectWith (ff-pointer self) (ff-pointer l) out))

(cl:defmethod get-unit-vector ((self line2df))
  (line2df_getUnitVector (ff-pointer self)))

(cl:defmethod get-angle-with ((self line2df) (l line2df))
  (line2df_getAngleWith (ff-pointer self) (ff-pointer l)))

(cl:defmethod get-point-orientation ((self line2df) point)
  (line2df_getPointOrientation (ff-pointer self) point))

(cl:defmethod is-point-on-line ((self line2df) point)
  (line2df_isPointOnLine (ff-pointer self) point))

(cl:defmethod is-point-between-start-and-end ((self line2df) point)
  (line2df_isPointBetweenStartAndEnd (ff-pointer self) point))

(cl:defmethod get-closest-point ((self line2df) point (checkOnlySegments t))
  (line2df_getClosestPoint (ff-pointer self) point checkOnlySegments))

(cl:defmethod get-closest-point ((self line2df) point)
  (line2df_getClosestPoint (ff-pointer self) point))

(cl:defmethod (cl:setf start) (arg0 (obj line2df))
  (line2df_start_set (ff-pointer obj) arg0))

(cl:defmethod start ((obj line2df))
  (line2df_start_get (ff-pointer obj)))

(cl:defmethod (cl:setf end) (arg0 (obj line2df))
  (line2df_end_set (ff-pointer obj) arg0))

(cl:defmethod end ((obj line2df))
  (line2df_end_get (ff-pointer obj)))


(cl:defclass line2di()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj line2di) &key)
  (setf (slot-value obj 'ff-pointer) (new_line2di)))

(cl:defmethod initialize-instance :after ((obj line2di) &key (xa cl:integer) (ya cl:integer) (xb cl:integer) (yb cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_line2di xa ya xb yb)))

(cl:defmethod initialize-instance :after ((obj line2di) &key start end)
  (setf (slot-value obj 'ff-pointer) (new_line2di start end)))

(cl:defmethod initialize-instance :after ((obj line2di) &key (other line2di))
  (setf (slot-value obj 'ff-pointer) (new_line2di (ff-pointer other))))

(cl:shadow "+")
(cl:defmethod + ((self line2di) point)
  (line2di___add__ (ff-pointer self) point))

(cl:shadow "+=")
(cl:defmethod += ((self line2di) point)
  (line2di___add_assign__ (ff-pointer self) point))

(cl:shadow "-")
(cl:defmethod - ((self line2di) point)
  (line2di___sub__ (ff-pointer self) point))

(cl:shadow "-=")
(cl:defmethod -= ((self line2di) point)
  (line2di___sub_assign__ (ff-pointer self) point))

(cl:shadow "==")
(cl:defmethod == ((self line2di) (other line2di))
  (line2di___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self line2di) (other line2di))
  (line2di___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-line ((self line2di) xa ya xb yb)
  (line2di_setLine (ff-pointer self) xa ya xb yb))

(cl:defmethod set-line ((self line2di) nstart nend)
  (line2di_setLine (ff-pointer self) nstart nend))

(cl:defmethod set-line ((self line2di) (line line2di))
  (line2di_setLine (ff-pointer self) (ff-pointer line)))

(cl:defmethod get-length ((self line2di))
  (line2di_getLength (ff-pointer self)))

(cl:defmethod get-length-sq ((self line2di))
  (line2di_getLengthSQ (ff-pointer self)))

(cl:defmethod get-middle ((self line2di))
  (line2di_getMiddle (ff-pointer self)))

(cl:defmethod get-vector ((self line2di))
  (line2di_getVector (ff-pointer self)))

(cl:defmethod intersect-with ((self line2di) (l line2di) out (checkOnlySegments t))
  (line2di_intersectWith (ff-pointer self) (ff-pointer l) out checkOnlySegments))

(cl:defmethod intersect-with ((self line2di) (l line2di) out)
  (line2di_intersectWith (ff-pointer self) (ff-pointer l) out))

(cl:defmethod get-unit-vector ((self line2di))
  (line2di_getUnitVector (ff-pointer self)))

(cl:defmethod get-angle-with ((self line2di) (l line2di))
  (line2di_getAngleWith (ff-pointer self) (ff-pointer l)))

(cl:defmethod get-point-orientation ((self line2di) point)
  (line2di_getPointOrientation (ff-pointer self) point))

(cl:defmethod is-point-on-line ((self line2di) point)
  (line2di_isPointOnLine (ff-pointer self) point))

(cl:defmethod is-point-between-start-and-end ((self line2di) point)
  (line2di_isPointBetweenStartAndEnd (ff-pointer self) point))

(cl:defmethod get-closest-point ((self line2di) point (checkOnlySegments t))
  (line2di_getClosestPoint (ff-pointer self) point checkOnlySegments))

(cl:defmethod get-closest-point ((self line2di) point)
  (line2di_getClosestPoint (ff-pointer self) point))

(cl:defmethod (cl:setf start) (arg0 (obj line2di))
  (line2di_start_set (ff-pointer obj) arg0))

(cl:defmethod start ((obj line2di))
  (line2di_start_get (ff-pointer obj)))

(cl:defmethod (cl:setf end) (arg0 (obj line2di))
  (line2di_end_set (ff-pointer obj) arg0))

(cl:defmethod end ((obj line2di))
  (line2di_end_get (ff-pointer obj)))


(cl:defclass line3df()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj line3df) &key)
  (setf (slot-value obj 'ff-pointer) (new_line3df)))

(cl:defmethod initialize-instance :after ((obj line3df) &key (xa cl:number) (ya cl:number) (za cl:number) (xb cl:number) (yb cl:number) (zb cl:number))
  (setf (slot-value obj 'ff-pointer) (new_line3df xa ya za xb yb zb)))

(cl:defmethod initialize-instance :after ((obj line3df) &key start end)
  (setf (slot-value obj 'ff-pointer) (new_line3df start end)))

(cl:shadow "+")
(cl:defmethod + ((self line3df) point)
  (line3df___add__ (ff-pointer self) point))

(cl:shadow "+=")
(cl:defmethod += ((self line3df) point)
  (line3df___add_assign__ (ff-pointer self) point))

(cl:shadow "-")
(cl:defmethod - ((self line3df) point)
  (line3df___sub__ (ff-pointer self) point))

(cl:shadow "-=")
(cl:defmethod -= ((self line3df) point)
  (line3df___sub_assign__ (ff-pointer self) point))

(cl:shadow "==")
(cl:defmethod == ((self line3df) (other line3df))
  (line3df___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self line3df) (other line3df))
  (line3df___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-line ((self line3df) xa ya za xb yb zb)
  (line3df_setLine (ff-pointer self) xa ya za xb yb zb))

(cl:defmethod set-line ((self line3df) nstart nend)
  (line3df_setLine (ff-pointer self) nstart nend))

(cl:defmethod set-line ((self line3df) (line line3df))
  (line3df_setLine (ff-pointer self) (ff-pointer line)))

(cl:defmethod get-length ((self line3df))
  (line3df_getLength (ff-pointer self)))

(cl:defmethod get-length-sq ((self line3df))
  (line3df_getLengthSQ (ff-pointer self)))

(cl:defmethod get-middle ((self line3df))
  (line3df_getMiddle (ff-pointer self)))

(cl:defmethod get-vector ((self line3df))
  (line3df_getVector (ff-pointer self)))

(cl:defmethod is-point-between-start-and-end ((self line3df) point)
  (line3df_isPointBetweenStartAndEnd (ff-pointer self) point))

(cl:defmethod get-closest-point ((self line3df) point)
  (line3df_getClosestPoint (ff-pointer self) point))

(cl:defmethod get-intersection-with-sphere ((self line3df) sorigin (sradius cl:number) outdistance)
  (line3df_getIntersectionWithSphere (ff-pointer self) sorigin sradius outdistance))

(cl:defmethod (cl:setf start) (arg0 (obj line3df))
  (line3df_start_set (ff-pointer obj) arg0))

(cl:defmethod start ((obj line3df))
  (line3df_start_get (ff-pointer obj)))

(cl:defmethod (cl:setf end) (arg0 (obj line3df))
  (line3df_end_set (ff-pointer obj) arg0))

(cl:defmethod end ((obj line3df))
  (line3df_end_get (ff-pointer obj)))


(cl:defclass line3di()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj line3di) &key)
  (setf (slot-value obj 'ff-pointer) (new_line3di)))

(cl:defmethod initialize-instance :after ((obj line3di) &key (xa cl:integer) (ya cl:integer) (za cl:integer) (xb cl:integer) (yb cl:integer) (zb cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_line3di xa ya za xb yb zb)))

(cl:defmethod initialize-instance :after ((obj line3di) &key start end)
  (setf (slot-value obj 'ff-pointer) (new_line3di start end)))

(cl:shadow "+")
(cl:defmethod + ((self line3di) point)
  (line3di___add__ (ff-pointer self) point))

(cl:shadow "+=")
(cl:defmethod += ((self line3di) point)
  (line3di___add_assign__ (ff-pointer self) point))

(cl:shadow "-")
(cl:defmethod - ((self line3di) point)
  (line3di___sub__ (ff-pointer self) point))

(cl:shadow "-=")
(cl:defmethod -= ((self line3di) point)
  (line3di___sub_assign__ (ff-pointer self) point))

(cl:shadow "==")
(cl:defmethod == ((self line3di) (other line3di))
  (line3di___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self line3di) (other line3di))
  (line3di___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-line ((self line3di) xa ya za xb yb zb)
  (line3di_setLine (ff-pointer self) xa ya za xb yb zb))

(cl:defmethod set-line ((self line3di) nstart nend)
  (line3di_setLine (ff-pointer self) nstart nend))

(cl:defmethod set-line ((self line3di) (line line3di))
  (line3di_setLine (ff-pointer self) (ff-pointer line)))

(cl:defmethod get-length ((self line3di))
  (line3di_getLength (ff-pointer self)))

(cl:defmethod get-length-sq ((self line3di))
  (line3di_getLengthSQ (ff-pointer self)))

(cl:defmethod get-middle ((self line3di))
  (line3di_getMiddle (ff-pointer self)))

(cl:defmethod get-vector ((self line3di))
  (line3di_getVector (ff-pointer self)))

(cl:defmethod is-point-between-start-and-end ((self line3di) point)
  (line3di_isPointBetweenStartAndEnd (ff-pointer self) point))

(cl:defmethod get-closest-point ((self line3di) point)
  (line3di_getClosestPoint (ff-pointer self) point))

(cl:defmethod get-intersection-with-sphere ((self line3di) sorigin (sradius cl:integer) outdistance)
  (line3di_getIntersectionWithSphere (ff-pointer self) sorigin sradius outdistance))

(cl:defmethod (cl:setf start) (arg0 (obj line3di))
  (line3di_start_set (ff-pointer obj) arg0))

(cl:defmethod start ((obj line3di))
  (line3di_start_get (ff-pointer obj)))

(cl:defmethod (cl:setf end) (arg0 (obj line3di))
  (line3di_end_set (ff-pointer obj) arg0))

(cl:defmethod end ((obj line3di))
  (line3di_end_get (ff-pointer obj)))


(cl:defclass matrix4()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj matrix4) &key (constructor cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_matrix4 constructor)))

(cl:defmethod initialize-instance :after ((obj matrix4) &key)
  (setf (slot-value obj 'ff-pointer) (new_matrix4)))

(cl:defmethod initialize-instance :after ((obj matrix4) &key (other matrix4) (constructor cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_matrix4 (ff-pointer other) constructor)))

(cl:defmethod initialize-instance :after ((obj matrix4) &key (other matrix4))
  (setf (slot-value obj 'ff-pointer) (new_matrix4 (ff-pointer other))))

(cl:shadow "()")
(cl:defmethod () ((self matrix4) (row cl:integer) (col cl:integer))
  (matrix4___funcall__ (ff-pointer self) row col))

(cl:shadow "()")
(cl:defmethod () ((self matrix4) (row cl:integer) (col cl:integer))
  (matrix4___funcall__ (ff-pointer self) row col))

(cl:shadow "aRef")
(cl:defmethod aRef ((self matrix4) (index cl:integer))
  (matrix4___aref__ (ff-pointer self) index))

(cl:shadow "aRef")
(cl:defmethod aRef ((self matrix4) (index cl:integer))
  (matrix4___aref__ (ff-pointer self) index))

(cl:shadow "=")
(cl:defmethod = ((self matrix4) (other matrix4))
  (matrix4___assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "=")
(cl:defmethod = ((self matrix4) scalar)
  (matrix4___assign__ (ff-pointer self) scalar))

(cl:defmethod pointer ((self matrix4))
  (matrix4_pointer (ff-pointer self)))

(cl:defmethod pointer ((self matrix4))
  (matrix4_pointer (ff-pointer self)))

(cl:shadow "==")
(cl:defmethod == ((self matrix4) (other matrix4))
  (matrix4___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self matrix4) (other matrix4))
  (matrix4___ne__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self matrix4) (other matrix4))
  (matrix4___add__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+=")
(cl:defmethod += ((self matrix4) (other matrix4))
  (matrix4___add_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-")
(cl:defmethod - ((self matrix4) (other matrix4))
  (matrix4___sub__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-=")
(cl:defmethod -= ((self matrix4) (other matrix4))
  (matrix4___sub_assign__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod setbyproduct ((self matrix4) (other_a matrix4) (other_b matrix4))
  (matrix4_setbyproduct (ff-pointer self) (ff-pointer other_a) (ff-pointer other_b)))

(cl:defmethod setbyproduct-nocheck ((self matrix4) (other_a matrix4) (other_b matrix4))
  (matrix4_setbyproduct_nocheck (ff-pointer self) (ff-pointer other_a) (ff-pointer other_b)))

(cl:shadow "*")
(cl:defmethod * ((self matrix4) (other matrix4))
  (matrix4___mul__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*=")
(cl:defmethod *= ((self matrix4) (other matrix4))
  (matrix4___mul_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*")
(cl:defmethod * ((self matrix4) scalar)
  (matrix4___mul__ (ff-pointer self) scalar))

(cl:shadow "*=")
(cl:defmethod *= ((self matrix4) scalar)
  (matrix4___mul_assign__ (ff-pointer self) scalar))

(cl:defmethod make-identity ((self matrix4))
  (matrix4_makeIdentity (ff-pointer self)))

(cl:defmethod is-identity ((self matrix4))
  (matrix4_isIdentity (ff-pointer self)))

(cl:defmethod is-orthogonal ((self matrix4))
  (matrix4_isOrthogonal (ff-pointer self)))

(cl:defmethod is-identity-integer-base ((self matrix4))
  (matrix4_isIdentity_integer_base (ff-pointer self)))

(cl:defmethod set-translation ((self matrix4) translation)
  (matrix4_setTranslation (ff-pointer self) translation))

(cl:defmethod get-translation ((self matrix4))
  (matrix4_getTranslation (ff-pointer self)))

(cl:defmethod set-inverse-translation ((self matrix4) translation)
  (matrix4_setInverseTranslation (ff-pointer self) translation))

(cl:defmethod set-rotation-radians ((self matrix4) rotation)
  (matrix4_setRotationRadians (ff-pointer self) rotation))

(cl:defmethod set-rotation-degrees ((self matrix4) rotation)
  (matrix4_setRotationDegrees (ff-pointer self) rotation))

(cl:defmethod get-rotation-degrees ((self matrix4))
  (matrix4_getRotationDegrees (ff-pointer self)))

(cl:defmethod set-inverse-rotation-radians ((self matrix4) rotation)
  (matrix4_setInverseRotationRadians (ff-pointer self) rotation))

(cl:defmethod set-inverse-rotation-degrees ((self matrix4) rotation)
  (matrix4_setInverseRotationDegrees (ff-pointer self) rotation))

(cl:defmethod set-rotation-axis-radians ((self matrix4) angle axis)
  (matrix4_setRotationAxisRadians (ff-pointer self) angle axis))

(cl:defmethod set-scale ((self matrix4) scale)
  (matrix4_setScale (ff-pointer self) scale))

(cl:defmethod set-scale ((self matrix4) (scale cl:number))
  (matrix4_setScale (ff-pointer self) scale))

(cl:defmethod get-scale ((self matrix4))
  (matrix4_getScale (ff-pointer self)))

(cl:defmethod inverse-translate-vect ((self matrix4) vect)
  (matrix4_inverseTranslateVect (ff-pointer self) vect))

(cl:defmethod inverse-rotate-vect ((self matrix4) vect)
  (matrix4_inverseRotateVect (ff-pointer self) vect))

(cl:defmethod rotate-vect ((self matrix4) vect)
  (matrix4_rotateVect (ff-pointer self) vect))

(cl:defmethod rotate-vect ((self matrix4) out in)
  (matrix4_rotateVect (ff-pointer self) out in))

(cl:defmethod rotate-vect ((self matrix4) out in)
  (matrix4_rotateVect (ff-pointer self) out in))

(cl:defmethod transform-vect ((self matrix4) vect)
  (matrix4_transformVect (ff-pointer self) vect))

(cl:defmethod transform-vect ((self matrix4) out in)
  (matrix4_transformVect (ff-pointer self) out in))

(cl:defmethod transform-vect ((self matrix4) out in)
  (matrix4_transformVect (ff-pointer self) out in))

(cl:defmethod transform-vec3 ((self matrix4) out in)
  (matrix4_transformVec3 (ff-pointer self) out in))

(cl:defmethod translate-vect ((self matrix4) vect)
  (matrix4_translateVect (ff-pointer self) vect))

(cl:defmethod transform-plane ((self matrix4) plane)
  (matrix4_transformPlane (ff-pointer self) plane))

(cl:defmethod transform-plane ((self matrix4) in out)
  (matrix4_transformPlane (ff-pointer self) in out))

(cl:defmethod transform-box ((self matrix4) (box aabbox3df))
  (matrix4_transformBox (ff-pointer self) box))

(cl:defmethod transform-box-ex ((self matrix4) (box aabbox3df))
  (matrix4_transformBoxEx (ff-pointer self) box))

(cl:defmethod multiply-with1x4-matrix ((self matrix4) matrix)
  (matrix4_multiplyWith1x4Matrix (ff-pointer self) matrix))

(cl:defmethod make-inverse ((self matrix4))
  (matrix4_makeInverse (ff-pointer self)))

(cl:defmethod get-inverse-primitive ((self matrix4) (out matrix4))
  (matrix4_getInversePrimitive (ff-pointer self) (ff-pointer out)))

(cl:defmethod get-inverse ((self matrix4) (out matrix4))
  (matrix4_getInverse (ff-pointer self) (ff-pointer out)))

(cl:defmethod build-projection-matrix-perspective-fov-rh ((self matrix4) (fieldOfViewRadians cl:number) (aspectRatio cl:number) (zNear cl:number) (zFar cl:number))
  (matrix4_buildProjectionMatrixPerspectiveFovRH (ff-pointer self) fieldOfViewRadians aspectRatio zNear zFar))

(cl:defmethod build-projection-matrix-perspective-fov-lh ((self matrix4) (fieldOfViewRadians cl:number) (aspectRatio cl:number) (zNear cl:number) (zFar cl:number))
  (matrix4_buildProjectionMatrixPerspectiveFovLH (ff-pointer self) fieldOfViewRadians aspectRatio zNear zFar))

(cl:defmethod build-projection-matrix-perspective-fov-infinity-lh ((self matrix4) (fieldOfViewRadians cl:number) (aspectRatio cl:number) (zNear cl:number) (epsilon cl:number))
  (matrix4_buildProjectionMatrixPerspectiveFovInfinityLH (ff-pointer self) fieldOfViewRadians aspectRatio zNear epsilon))

(cl:defmethod build-projection-matrix-perspective-fov-infinity-lh ((self matrix4) (fieldOfViewRadians cl:number) (aspectRatio cl:number) (zNear cl:number))
  (matrix4_buildProjectionMatrixPerspectiveFovInfinityLH (ff-pointer self) fieldOfViewRadians aspectRatio zNear))

(cl:defmethod build-projection-matrix-perspective-rh ((self matrix4) (widthOfViewVolume cl:number) (heightOfViewVolume cl:number) (zNear cl:number) (zFar cl:number))
  (matrix4_buildProjectionMatrixPerspectiveRH (ff-pointer self) widthOfViewVolume heightOfViewVolume zNear zFar))

(cl:defmethod build-projection-matrix-perspective-lh ((self matrix4) (widthOfViewVolume cl:number) (heightOfViewVolume cl:number) (zNear cl:number) (zFar cl:number))
  (matrix4_buildProjectionMatrixPerspectiveLH (ff-pointer self) widthOfViewVolume heightOfViewVolume zNear zFar))

(cl:defmethod build-projection-matrix-ortho-lh ((self matrix4) (widthOfViewVolume cl:number) (heightOfViewVolume cl:number) (zNear cl:number) (zFar cl:number))
  (matrix4_buildProjectionMatrixOrthoLH (ff-pointer self) widthOfViewVolume heightOfViewVolume zNear zFar))

(cl:defmethod build-projection-matrix-ortho-rh ((self matrix4) (widthOfViewVolume cl:number) (heightOfViewVolume cl:number) (zNear cl:number) (zFar cl:number))
  (matrix4_buildProjectionMatrixOrthoRH (ff-pointer self) widthOfViewVolume heightOfViewVolume zNear zFar))

(cl:defmethod build-camera-look-at-matrix-lh ((self matrix4) position target upVector)
  (matrix4_buildCameraLookAtMatrixLH (ff-pointer self) position target upVector))

(cl:defmethod build-camera-look-at-matrix-rh ((self matrix4) position target upVector)
  (matrix4_buildCameraLookAtMatrixRH (ff-pointer self) position target upVector))

(cl:defmethod build-shadow-matrix ((self matrix4) light plane (point cl:number))
  (matrix4_buildShadowMatrix (ff-pointer self) light plane point))

(cl:defmethod build-shadow-matrix ((self matrix4) light plane)
  (matrix4_buildShadowMatrix (ff-pointer self) light plane))

(cl:defmethod build-ndcto-dcmatrix ((self matrix4) area (zScale cl:number))
  (matrix4_buildNDCToDCMatrix (ff-pointer self) area zScale))

(cl:defmethod interpolate ((self matrix4) (b matrix4) (time cl:number))
  (matrix4_interpolate (ff-pointer self) (ff-pointer b) time))

(cl:defmethod get-transposed ((self matrix4))
  (matrix4_getTransposed (ff-pointer self)))

(cl:defmethod get-transposed ((self matrix4) (dest matrix4))
  (matrix4_getTransposed (ff-pointer self) (ff-pointer dest)))

(cl:defmethod build-rotate-from-to ((self matrix4) from to)
  (matrix4_buildRotateFromTo (ff-pointer self) from to))

(cl:defmethod set-rotation-center ((self matrix4) center translate)
  (matrix4_setRotationCenter (ff-pointer self) center translate))

(cl:defmethod build-axis-aligned-billboard ((self matrix4) camPos center translation axis from)
  (matrix4_buildAxisAlignedBillboard (ff-pointer self) camPos center translation axis from))

(cl:defmethod build-texture-transform ((self matrix4) (rotateRad cl:number) rotatecenter translate scale)
  (matrix4_buildTextureTransform (ff-pointer self) rotateRad rotatecenter translate scale))

(cl:defmethod set-texture-rotation-center ((self matrix4) (radAngle cl:number))
  (matrix4_setTextureRotationCenter (ff-pointer self) radAngle))

(cl:defmethod set-texture-translate ((self matrix4) (x cl:number) (y cl:number))
  (matrix4_setTextureTranslate (ff-pointer self) x y))

(cl:defmethod set-texture-translate-transposed ((self matrix4) (x cl:number) (y cl:number))
  (matrix4_setTextureTranslateTransposed (ff-pointer self) x y))

(cl:defmethod set-texture-scale ((self matrix4) (sx cl:number) (sy cl:number))
  (matrix4_setTextureScale (ff-pointer self) sx sy))

(cl:defmethod set-texture-scale-center ((self matrix4) (sx cl:number) (sy cl:number))
  (matrix4_setTextureScaleCenter (ff-pointer self) sx sy))

(cl:defmethod set-m ((self matrix4) data)
  (matrix4_setM (ff-pointer self) data))

(cl:defmethod set-definitely-identity-matrix ((self matrix4) (isDefinitelyIdentityMatrix t))
  (matrix4_setDefinitelyIdentityMatrix (ff-pointer self) isDefinitelyIdentityMatrix))

(cl:defmethod get-definitely-identity-matrix ((self matrix4))
  (matrix4_getDefinitelyIdentityMatrix (ff-pointer self)))

(cl:defmethod equals ((self matrix4) (other matrix4) (tolerance cl:number))
  (matrix4_equals (ff-pointer self) (ff-pointer other) tolerance))

(cl:defmethod equals ((self matrix4) (other matrix4))
  (matrix4_equals (ff-pointer self) (ff-pointer other)))


(cl:defclass path()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj path) &key)
  (setf (slot-value obj 'ff-pointer) (new_path)))

(cl:defmethod initialize-instance :after ((obj path) &key (other path))
  (setf (slot-value obj 'ff-pointer) (new_path (ff-pointer other))))

(cl:defmethod initialize-instance :after ((obj path) &key (number cl:number))
  (setf (slot-value obj 'ff-pointer) (new_path number)))

(cl:defmethod initialize-instance :after ((obj path) &key (number cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_path number)))

(cl:defmethod initialize-instance :after ((obj path) &key (number cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_path number)))

(cl:defmethod initialize-instance :after ((obj path) &key (number cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_path number)))

(cl:defmethod initialize-instance :after ((obj path) &key (number cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_path number)))

(cl:shadow "=")
(cl:defmethod = ((self path) (other path))
  (path___assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self path) (other path))
  (path___add__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "aRef")
(cl:defmethod aRef ((self path) (index cl:integer))
  (path___aref__ (ff-pointer self) index))

(cl:shadow "aRef")
(cl:defmethod aRef ((self path) (index cl:integer))
  (path___aref__ (ff-pointer self) index))

(cl:shadow "==")
(cl:defmethod == ((self path) (str cl:string))
  (path___eq__ (ff-pointer self) str))

(cl:shadow "==")
(cl:defmethod == ((self path) (other path))
  (path___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "<")
(cl:defmethod < ((self path) (other path))
  (path___lt__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self path) (str cl:string))
  (path___ne__ (ff-pointer self) str))

(cl:shadow "!=")
(cl:defmethod != ((self path) (other path))
  (path___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod size ((self path))
  (path_size (ff-pointer self)))

(cl:defmethod empty ((self path))
  (path_empty (ff-pointer self)))

(cl:defmethod c-str ((self path))
  (path_c_str (ff-pointer self)))

(cl:defmethod make-lower ((self path))
  (path_make_lower (ff-pointer self)))

(cl:defmethod make-upper ((self path))
  (path_make_upper (ff-pointer self)))

(cl:defmethod equals-ignore-case ((self path) (other path))
  (path_equals_ignore_case (ff-pointer self) (ff-pointer other)))

(cl:defmethod equals-substring-ignore-case ((self path) (other path) (sourcePos cl:integer))
  (path_equals_substring_ignore_case (ff-pointer self) (ff-pointer other) sourcePos))

(cl:defmethod equals-substring-ignore-case ((self path) (other path))
  (path_equals_substring_ignore_case (ff-pointer self) (ff-pointer other)))

(cl:defmethod lower-ignore-case ((self path) (other path))
  (path_lower_ignore_case (ff-pointer self) (ff-pointer other)))

(cl:defmethod equalsn ((self path) (other path) (n cl:integer))
  (path_equalsn (ff-pointer self) (ff-pointer other) n))

(cl:defmethod equalsn ((self path) (str cl:string) (n cl:integer))
  (path_equalsn (ff-pointer self) str n))

(cl:defmethod append ((self path) (character cl:character))
  (path_append (ff-pointer self) character))

(cl:defmethod append ((self path) (other cl:string) (length cl:integer))
  (path_append (ff-pointer self) other length))

(cl:defmethod append ((self path) (other cl:string))
  (path_append (ff-pointer self) other))

(cl:defmethod append ((self path) (other path))
  (path_append (ff-pointer self) (ff-pointer other)))

(cl:defmethod append ((self path) (other path) (length cl:integer))
  (path_append (ff-pointer self) (ff-pointer other) length))

(cl:defmethod reserve ((self path) (count cl:integer))
  (path_reserve (ff-pointer self) count))

(cl:defmethod find-first ((self path) (c cl:character))
  (path_findFirst (ff-pointer self) c))

(cl:defmethod find-first-char ((self path) (c cl:string) (count cl:integer))
  (path_findFirstChar (ff-pointer self) c count))

(cl:defmethod find-first-char ((self path) (c cl:string))
  (path_findFirstChar (ff-pointer self) c))

(cl:defmethod find-next ((self path) (c cl:character) (startPos cl:integer))
  (path_findNext (ff-pointer self) c startPos))

(cl:defmethod find-last ((self path) (c cl:character) (start cl:integer))
  (path_findLast (ff-pointer self) c start))

(cl:defmethod find-last ((self path) (c cl:character))
  (path_findLast (ff-pointer self) c))

(cl:defmethod find-last-char ((self path) (c cl:string) (count cl:integer))
  (path_findLastChar (ff-pointer self) c count))

(cl:defmethod find-last-char ((self path) (c cl:string))
  (path_findLastChar (ff-pointer self) c))

(cl:defmethod sub-string ((self path) (begin cl:integer) (length cl:integer) (make_lower t))
  (path_subString (ff-pointer self) begin length make_lower))

(cl:defmethod sub-string ((self path) (begin cl:integer) (length cl:integer))
  (path_subString (ff-pointer self) begin length))

(cl:shadow "+=")
(cl:defmethod += ((self path) (c cl:character))
  (path___add_assign__ (ff-pointer self) c))

(cl:shadow "+=")
(cl:defmethod += ((self path) (c cl:string))
  (path___add_assign__ (ff-pointer self) c))

(cl:shadow "+=")
(cl:defmethod += ((self path) (other path))
  (path___add_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+=")
(cl:defmethod += ((self path) (i cl:integer))
  (path___add_assign__ (ff-pointer self) i))

(cl:shadow "+=")
(cl:defmethod += ((self path) (i cl:integer))
  (path___add_assign__ (ff-pointer self) i))

(cl:shadow "+=")
(cl:defmethod += ((self path) (i cl:integer))
  (path___add_assign__ (ff-pointer self) i))

(cl:shadow "+=")
(cl:defmethod += ((self path) (i cl:integer))
  (path___add_assign__ (ff-pointer self) i))

(cl:shadow "+=")
(cl:defmethod += ((self path) (i cl:number))
  (path___add_assign__ (ff-pointer self) i))

(cl:shadow "+=")
(cl:defmethod += ((self path) (i cl:number))
  (path___add_assign__ (ff-pointer self) i))

(cl:defmethod replace ((self path) (toReplace cl:character) (replaceWith cl:character))
  (path_replace (ff-pointer self) toReplace replaceWith))

(cl:defmethod replace ((self path) (toReplace path) (replaceWith path))
  (path_replace (ff-pointer self) (ff-pointer toReplace) (ff-pointer replaceWith)))

(cl:defmethod remove ((self path) (c cl:character))
  (path_remove (ff-pointer self) c))

(cl:defmethod remove ((self path) (toRemove path))
  (path_remove (ff-pointer self) (ff-pointer toRemove)))

(cl:defmethod remove-chars ((self path) (characters path))
  (path_removeChars (ff-pointer self) (ff-pointer characters)))

(cl:defmethod trim ((self path) (whitespace path))
  (path_trim (ff-pointer self) (ff-pointer whitespace)))

(cl:defmethod trim ((self path))
  (path_trim (ff-pointer self)))

(cl:defmethod erase ((self path) (index cl:integer))
  (path_erase (ff-pointer self) index))

(cl:defmethod validate ((self path))
  (path_validate (ff-pointer self)))

(cl:defmethod last-char ((self path))
  (path_lastChar (ff-pointer self)))

(cl:defmethod initialize-instance :after ((obj path) &key (c cl:string) (length cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_fromCString c length)))

(cl:defmethod initialize-instance :after ((obj path) &key (c cl:string))
  (setf (slot-value obj 'ff-pointer) (new_fromCString c)))


(cl:defclass plane3df()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj plane3df) &key)
  (setf (slot-value obj 'ff-pointer) (new_plane3df)))

(cl:defmethod initialize-instance :after ((obj plane3df) &key MPoint Normal)
  (setf (slot-value obj 'ff-pointer) (new_plane3df MPoint Normal)))

(cl:defmethod initialize-instance :after ((obj plane3df) &key (px cl:number) (py cl:number) (pz cl:number) (nx cl:number) (ny cl:number) (nz cl:number))
  (setf (slot-value obj 'ff-pointer) (new_plane3df px py pz nx ny nz)))

(cl:defmethod initialize-instance :after ((obj plane3df) &key point1 point2 point3)
  (setf (slot-value obj 'ff-pointer) (new_plane3df point1 point2 point3)))

(cl:defmethod initialize-instance :after ((obj plane3df) &key normal (d cl:number))
  (setf (slot-value obj 'ff-pointer) (new_plane3df normal d)))

(cl:shadow "==")
(cl:defmethod == ((self plane3df) (other plane3df))
  (plane3df___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self plane3df) (other plane3df))
  (plane3df___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-plane ((self plane3df) point nvector)
  (plane3df_setPlane (ff-pointer self) point nvector))

(cl:defmethod set-plane ((self plane3df) nvect (d cl:number))
  (plane3df_setPlane (ff-pointer self) nvect d))

(cl:defmethod set-plane ((self plane3df) point1 point2 point3)
  (plane3df_setPlane (ff-pointer self) point1 point2 point3))

(cl:defmethod get-intersection-with-line ((self plane3df) linePoint lineVect outIntersection)
  (plane3df_getIntersectionWithLine (ff-pointer self) linePoint lineVect outIntersection))

(cl:defmethod get-known-intersection-with-line ((self plane3df) linePoint1 linePoint2)
  (plane3df_getKnownIntersectionWithLine (ff-pointer self) linePoint1 linePoint2))

(cl:defmethod get-intersection-with-limited-line ((self plane3df) linePoint1 linePoint2 outIntersection)
  (plane3df_getIntersectionWithLimitedLine (ff-pointer self) linePoint1 linePoint2 outIntersection))

(cl:defmethod classify-point-relation ((self plane3df) point)
  (plane3df_classifyPointRelation (ff-pointer self) point))

(cl:defmethod recalculate-d ((self plane3df) MPoint)
  (plane3df_recalculateD (ff-pointer self) MPoint))

(cl:defmethod get-member-point ((self plane3df))
  (plane3df_getMemberPoint (ff-pointer self)))

(cl:defmethod exists-intersection ((self plane3df) (other plane3df))
  (plane3df_existsIntersection (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-intersection-with-plane ((self plane3df) (other plane3df) outLinePoint outLineVect)
  (plane3df_getIntersectionWithPlane (ff-pointer self) (ff-pointer other) outLinePoint outLineVect))

(cl:defmethod get-intersection-with-planes ((self plane3df) (o1 plane3df) (o2 plane3df) outPoint)
  (plane3df_getIntersectionWithPlanes (ff-pointer self) (ff-pointer o1) (ff-pointer o2) outPoint))

(cl:defmethod is-front-facing ((self plane3df) lookDirection)
  (plane3df_isFrontFacing (ff-pointer self) lookDirection))

(cl:defmethod get-distance-to ((self plane3df) point)
  (plane3df_getDistanceTo (ff-pointer self) point))

(cl:defmethod (cl:setf Normal) (arg0 (obj plane3df))
  (plane3df_Normal_set (ff-pointer obj) arg0))

(cl:defmethod Normal ((obj plane3df))
  (plane3df_Normal_get (ff-pointer obj)))

(cl:defmethod (cl:setf D) (arg0 (obj plane3df))
  (plane3df_D_set (ff-pointer obj) arg0))

(cl:defmethod D ((obj plane3df))
  (plane3df_D_get (ff-pointer obj)))


(cl:defclass plane3di()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj plane3di) &key)
  (setf (slot-value obj 'ff-pointer) (new_plane3di)))

(cl:defmethod initialize-instance :after ((obj plane3di) &key MPoint Normal)
  (setf (slot-value obj 'ff-pointer) (new_plane3di MPoint Normal)))

(cl:defmethod initialize-instance :after ((obj plane3di) &key (px cl:integer) (py cl:integer) (pz cl:integer) (nx cl:integer) (ny cl:integer) (nz cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_plane3di px py pz nx ny nz)))

(cl:defmethod initialize-instance :after ((obj plane3di) &key point1 point2 point3)
  (setf (slot-value obj 'ff-pointer) (new_plane3di point1 point2 point3)))

(cl:defmethod initialize-instance :after ((obj plane3di) &key normal (d cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_plane3di normal d)))

(cl:shadow "==")
(cl:defmethod == ((self plane3di) (other plane3di))
  (plane3di___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self plane3di) (other plane3di))
  (plane3di___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod set-plane ((self plane3di) point nvector)
  (plane3di_setPlane (ff-pointer self) point nvector))

(cl:defmethod set-plane ((self plane3di) nvect (d cl:integer))
  (plane3di_setPlane (ff-pointer self) nvect d))

(cl:defmethod set-plane ((self plane3di) point1 point2 point3)
  (plane3di_setPlane (ff-pointer self) point1 point2 point3))

(cl:defmethod get-intersection-with-line ((self plane3di) linePoint lineVect outIntersection)
  (plane3di_getIntersectionWithLine (ff-pointer self) linePoint lineVect outIntersection))

(cl:defmethod get-known-intersection-with-line ((self plane3di) linePoint1 linePoint2)
  (plane3di_getKnownIntersectionWithLine (ff-pointer self) linePoint1 linePoint2))

(cl:defmethod get-intersection-with-limited-line ((self plane3di) linePoint1 linePoint2 outIntersection)
  (plane3di_getIntersectionWithLimitedLine (ff-pointer self) linePoint1 linePoint2 outIntersection))

(cl:defmethod classify-point-relation ((self plane3di) point)
  (plane3di_classifyPointRelation (ff-pointer self) point))

(cl:defmethod recalculate-d ((self plane3di) MPoint)
  (plane3di_recalculateD (ff-pointer self) MPoint))

(cl:defmethod get-member-point ((self plane3di))
  (plane3di_getMemberPoint (ff-pointer self)))

(cl:defmethod exists-intersection ((self plane3di) (other plane3di))
  (plane3di_existsIntersection (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-intersection-with-plane ((self plane3di) (other plane3di) outLinePoint outLineVect)
  (plane3di_getIntersectionWithPlane (ff-pointer self) (ff-pointer other) outLinePoint outLineVect))

(cl:defmethod get-intersection-with-planes ((self plane3di) (o1 plane3di) (o2 plane3di) outPoint)
  (plane3di_getIntersectionWithPlanes (ff-pointer self) (ff-pointer o1) (ff-pointer o2) outPoint))

(cl:defmethod is-front-facing ((self plane3di) lookDirection)
  (plane3di_isFrontFacing (ff-pointer self) lookDirection))

(cl:defmethod get-distance-to ((self plane3di) point)
  (plane3di_getDistanceTo (ff-pointer self) point))

(cl:defmethod (cl:setf Normal) (arg0 (obj plane3di))
  (plane3di_Normal_set (ff-pointer obj) arg0))

(cl:defmethod Normal ((obj plane3di))
  (plane3di_Normal_get (ff-pointer obj)))

(cl:defmethod (cl:setf D) (arg0 (obj plane3di))
  (plane3di_D_set (ff-pointer obj) arg0))

(cl:defmethod D ((obj plane3di))
  (plane3di_D_get (ff-pointer obj)))


(cl:defclass rectf()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj rectf) &key)
  (setf (slot-value obj 'ff-pointer) (new_rectf)))

(cl:defmethod initialize-instance :after ((obj rectf) &key (x cl:number) (y cl:number) (x2 cl:number) (y2 cl:number))
  (setf (slot-value obj 'ff-pointer) (new_rectf x y x2 y2)))

(cl:defmethod initialize-instance :after ((obj rectf) &key upperLeft lowerRight)
  (setf (slot-value obj 'ff-pointer) (new_rectf upperLeft lowerRight)))

(cl:shadow "+")
(cl:defmethod + ((self rectf) pos)
  (rectf___add__ (ff-pointer self) pos))

(cl:shadow "+=")
(cl:defmethod += ((self rectf) pos)
  (rectf___add_assign__ (ff-pointer self) pos))

(cl:shadow "-")
(cl:defmethod - ((self rectf) pos)
  (rectf___sub__ (ff-pointer self) pos))

(cl:shadow "-=")
(cl:defmethod -= ((self rectf) pos)
  (rectf___sub_assign__ (ff-pointer self) pos))

(cl:shadow "==")
(cl:defmethod == ((self rectf) (other rectf))
  (rectf___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self rectf) (other rectf))
  (rectf___ne__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "<")
(cl:defmethod < ((self rectf) (other rectf))
  (rectf___lt__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-area ((self rectf))
  (rectf_getArea (ff-pointer self)))

(cl:defmethod is-point-inside ((self rectf) pos)
  (rectf_isPointInside (ff-pointer self) pos))

(cl:defmethod is-rect-collided ((self rectf) (other rectf))
  (rectf_isRectCollided (ff-pointer self) (ff-pointer other)))

(cl:defmethod clip-against ((self rectf) (other rectf))
  (rectf_clipAgainst (ff-pointer self) (ff-pointer other)))

(cl:defmethod constrain-to ((self rectf) (other rectf))
  (rectf_constrainTo (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-width ((self rectf))
  (rectf_getWidth (ff-pointer self)))

(cl:defmethod get-height ((self rectf))
  (rectf_getHeight (ff-pointer self)))

(cl:defmethod repair ((self rectf))
  (rectf_repair (ff-pointer self)))

(cl:defmethod is-valid ((self rectf))
  (rectf_isValid (ff-pointer self)))

(cl:defmethod get-center ((self rectf))
  (rectf_getCenter (ff-pointer self)))

(cl:defmethod get-size ((self rectf))
  (rectf_getSize (ff-pointer self)))

(cl:defmethod add-internal-point ((self rectf) p)
  (rectf_addInternalPoint (ff-pointer self) p))

(cl:defmethod add-internal-point ((self rectf) (x cl:number) (y cl:number))
  (rectf_addInternalPoint (ff-pointer self) x y))

(cl:defmethod (cl:setf UpperLeftCorner) (arg0 (obj rectf))
  (rectf_UpperLeftCorner_set (ff-pointer obj) arg0))

(cl:defmethod UpperLeftCorner ((obj rectf))
  (rectf_UpperLeftCorner_get (ff-pointer obj)))

(cl:defmethod (cl:setf LowerRightCorner) (arg0 (obj rectf))
  (rectf_LowerRightCorner_set (ff-pointer obj) arg0))

(cl:defmethod LowerRightCorner ((obj rectf))
  (rectf_LowerRightCorner_get (ff-pointer obj)))


(cl:defclass recti()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj recti) &key)
  (setf (slot-value obj 'ff-pointer) (new_recti)))

(cl:defmethod initialize-instance :after ((obj recti) &key (x cl:integer) (y cl:integer) (x2 cl:integer) (y2 cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_recti x y x2 y2)))

(cl:defmethod initialize-instance :after ((obj recti) &key upperLeft lowerRight)
  (setf (slot-value obj 'ff-pointer) (new_recti upperLeft lowerRight)))

(cl:shadow "+")
(cl:defmethod + ((self recti) pos)
  (recti___add__ (ff-pointer self) pos))

(cl:shadow "+=")
(cl:defmethod += ((self recti) pos)
  (recti___add_assign__ (ff-pointer self) pos))

(cl:shadow "-")
(cl:defmethod - ((self recti) pos)
  (recti___sub__ (ff-pointer self) pos))

(cl:shadow "-=")
(cl:defmethod -= ((self recti) pos)
  (recti___sub_assign__ (ff-pointer self) pos))

(cl:shadow "==")
(cl:defmethod == ((self recti) (other recti))
  (recti___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self recti) (other recti))
  (recti___ne__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "<")
(cl:defmethod < ((self recti) (other recti))
  (recti___lt__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-area ((self recti))
  (recti_getArea (ff-pointer self)))

(cl:defmethod is-point-inside ((self recti) pos)
  (recti_isPointInside (ff-pointer self) pos))

(cl:defmethod is-rect-collided ((self recti) (other recti))
  (recti_isRectCollided (ff-pointer self) (ff-pointer other)))

(cl:defmethod clip-against ((self recti) (other recti))
  (recti_clipAgainst (ff-pointer self) (ff-pointer other)))

(cl:defmethod constrain-to ((self recti) (other recti))
  (recti_constrainTo (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-width ((self recti))
  (recti_getWidth (ff-pointer self)))

(cl:defmethod get-height ((self recti))
  (recti_getHeight (ff-pointer self)))

(cl:defmethod repair ((self recti))
  (recti_repair (ff-pointer self)))

(cl:defmethod is-valid ((self recti))
  (recti_isValid (ff-pointer self)))

(cl:defmethod get-center ((self recti))
  (recti_getCenter (ff-pointer self)))

(cl:defmethod get-size ((self recti))
  (recti_getSize (ff-pointer self)))

(cl:defmethod add-internal-point ((self recti) p)
  (recti_addInternalPoint (ff-pointer self) p))

(cl:defmethod add-internal-point ((self recti) (x cl:integer) (y cl:integer))
  (recti_addInternalPoint (ff-pointer self) x y))

(cl:defmethod (cl:setf UpperLeftCorner) (arg0 (obj recti))
  (recti_UpperLeftCorner_set (ff-pointer obj) arg0))

(cl:defmethod UpperLeftCorner ((obj recti))
  (recti_UpperLeftCorner_get (ff-pointer obj)))

(cl:defmethod (cl:setf LowerRightCorner) (arg0 (obj recti))
  (recti_LowerRightCorner_set (ff-pointer obj) arg0))

(cl:defmethod LowerRightCorner ((obj recti))
  (recti_LowerRightCorner_get (ff-pointer obj)))


(cl:defclass triangle3df()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj triangle3df) &key)
  (setf (slot-value obj 'ff-pointer) (new_triangle3df)))

(cl:defmethod initialize-instance :after ((obj triangle3df) &key v1 v2 v3)
  (setf (slot-value obj 'ff-pointer) (new_triangle3df v1 v2 v3)))

(cl:shadow "==")
(cl:defmethod == ((self triangle3df) (other triangle3df))
  (triangle3df___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self triangle3df) (other triangle3df))
  (triangle3df___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod is-total-inside-box ((self triangle3df) (box aabbox3df))
  (triangle3df_isTotalInsideBox (ff-pointer self) box))

(cl:defmethod is-total-outside-box ((self triangle3df) (box aabbox3df))
  (triangle3df_isTotalOutsideBox (ff-pointer self) box))

(cl:defmethod closest-point-on-triangle ((self triangle3df) p)
  (triangle3df_closestPointOnTriangle (ff-pointer self) p))

(cl:defmethod is-point-inside ((self triangle3df) p)
  (triangle3df_isPointInside (ff-pointer self) p))

(cl:defmethod is-point-inside-fast ((self triangle3df) p)
  (triangle3df_isPointInsideFast (ff-pointer self) p))

(cl:defmethod get-intersection-with-limited-line ((self triangle3df) (line line3df) outIntersection)
  (triangle3df_getIntersectionWithLimitedLine (ff-pointer self) line outIntersection))

(cl:defmethod get-intersection-with-line ((self triangle3df) linePoint lineVect outIntersection)
  (triangle3df_getIntersectionWithLine (ff-pointer self) linePoint lineVect outIntersection))

(cl:defmethod get-intersection-of-plane-with-line ((self triangle3df) linePoint lineVect outIntersection)
  (triangle3df_getIntersectionOfPlaneWithLine (ff-pointer self) linePoint lineVect outIntersection))

(cl:defmethod get-normal ((self triangle3df))
  (triangle3df_getNormal (ff-pointer self)))

(cl:defmethod is-front-facing ((self triangle3df) lookDirection)
  (triangle3df_isFrontFacing (ff-pointer self) lookDirection))

(cl:defmethod get-plane ((self triangle3df))
  (triangle3df_getPlane (ff-pointer self)))

(cl:defmethod get-area ((self triangle3df))
  (triangle3df_getArea (ff-pointer self)))

(cl:defmethod set ((self triangle3df) a b c)
  (triangle3df_set (ff-pointer self) a b c))

(cl:defmethod (cl:setf pointA) (arg0 (obj triangle3df))
  (triangle3df_pointA_set (ff-pointer obj) arg0))

(cl:defmethod pointA ((obj triangle3df))
  (triangle3df_pointA_get (ff-pointer obj)))

(cl:defmethod (cl:setf pointB) (arg0 (obj triangle3df))
  (triangle3df_pointB_set (ff-pointer obj) arg0))

(cl:defmethod pointB ((obj triangle3df))
  (triangle3df_pointB_get (ff-pointer obj)))

(cl:defmethod (cl:setf pointC) (arg0 (obj triangle3df))
  (triangle3df_pointC_set (ff-pointer obj) arg0))

(cl:defmethod pointC ((obj triangle3df))
  (triangle3df_pointC_get (ff-pointer obj)))


(cl:defclass triangle3di()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj triangle3di) &key)
  (setf (slot-value obj 'ff-pointer) (new_triangle3di)))

(cl:defmethod initialize-instance :after ((obj triangle3di) &key v1 v2 v3)
  (setf (slot-value obj 'ff-pointer) (new_triangle3di v1 v2 v3)))

(cl:shadow "==")
(cl:defmethod == ((self triangle3di) (other triangle3di))
  (triangle3di___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self triangle3di) (other triangle3di))
  (triangle3di___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod is-total-inside-box ((self triangle3di) (box aabbox3di))
  (triangle3di_isTotalInsideBox (ff-pointer self) box))

(cl:defmethod is-total-outside-box ((self triangle3di) (box aabbox3di))
  (triangle3di_isTotalOutsideBox (ff-pointer self) box))

(cl:defmethod closest-point-on-triangle ((self triangle3di) p)
  (triangle3di_closestPointOnTriangle (ff-pointer self) p))

(cl:defmethod is-point-inside ((self triangle3di) p)
  (triangle3di_isPointInside (ff-pointer self) p))

(cl:defmethod is-point-inside-fast ((self triangle3di) p)
  (triangle3di_isPointInsideFast (ff-pointer self) p))

(cl:defmethod get-intersection-with-limited-line ((self triangle3di) (line line3di) outIntersection)
  (triangle3di_getIntersectionWithLimitedLine (ff-pointer self) line outIntersection))

(cl:defmethod get-intersection-with-line ((self triangle3di) linePoint lineVect outIntersection)
  (triangle3di_getIntersectionWithLine (ff-pointer self) linePoint lineVect outIntersection))

(cl:defmethod get-intersection-of-plane-with-line ((self triangle3di) linePoint lineVect outIntersection)
  (triangle3di_getIntersectionOfPlaneWithLine (ff-pointer self) linePoint lineVect outIntersection))

(cl:defmethod get-normal ((self triangle3di))
  (triangle3di_getNormal (ff-pointer self)))

(cl:defmethod is-front-facing ((self triangle3di) lookDirection)
  (triangle3di_isFrontFacing (ff-pointer self) lookDirection))

(cl:defmethod get-plane ((self triangle3di))
  (triangle3di_getPlane (ff-pointer self)))

(cl:defmethod get-area ((self triangle3di))
  (triangle3di_getArea (ff-pointer self)))

(cl:defmethod set ((self triangle3di) a b c)
  (triangle3di_set (ff-pointer self) a b c))

(cl:defmethod (cl:setf pointA) (arg0 (obj triangle3di))
  (triangle3di_pointA_set (ff-pointer obj) arg0))

(cl:defmethod pointA ((obj triangle3di))
  (triangle3di_pointA_get (ff-pointer obj)))

(cl:defmethod (cl:setf pointB) (arg0 (obj triangle3di))
  (triangle3di_pointB_set (ff-pointer obj) arg0))

(cl:defmethod pointB ((obj triangle3di))
  (triangle3di_pointB_get (ff-pointer obj)))

(cl:defmethod (cl:setf pointC) (arg0 (obj triangle3di))
  (triangle3di_pointC_set (ff-pointer obj) arg0))

(cl:defmethod pointC ((obj triangle3di))
  (triangle3di_pointC_get (ff-pointer obj)))


(cl:defclass vector2df()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj vector2df) &key)
  (setf (slot-value obj 'ff-pointer) (new_vector2df)))

(cl:defmethod initialize-instance :after ((obj vector2df) &key (nx cl:number) (ny cl:number))
  (setf (slot-value obj 'ff-pointer) (new_vector2df nx ny)))

(cl:defmethod initialize-instance :after ((obj vector2df) &key (n cl:number))
  (setf (slot-value obj 'ff-pointer) (new_vector2df n)))

(cl:defmethod initialize-instance :after ((obj vector2df) &key (other vector2df))
  (setf (slot-value obj 'ff-pointer) (new_vector2df (ff-pointer other))))

(cl:defmethod initialize-instance :after ((obj vector2df) &key (other dimension2df))
  (setf (slot-value obj 'ff-pointer) (new_vector2df other)))

(cl:shadow "-")
(cl:defmethod - ((self vector2df))
  (vector2df___neg__ (ff-pointer self)))

(cl:shadow "=")
(cl:defmethod = ((self vector2df) (other vector2df))
  (vector2df___assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "=")
(cl:defmethod = ((self vector2df) (other dimension2df))
  (vector2df___assign__ (ff-pointer self) other))

(cl:shadow "+")
(cl:defmethod + ((self vector2df) (other vector2df))
  (vector2df___add__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self vector2df) (other dimension2df))
  (vector2df___add__ (ff-pointer self) other))

(cl:shadow "+=")
(cl:defmethod += ((self vector2df) (other vector2df))
  (vector2df___add_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self vector2df) (v cl:number))
  (vector2df___add__ (ff-pointer self) v))

(cl:shadow "+=")
(cl:defmethod += ((self vector2df) (v cl:number))
  (vector2df___add_assign__ (ff-pointer self) v))

(cl:shadow "+=")
(cl:defmethod += ((self vector2df) (other dimension2df))
  (vector2df___add_assign__ (ff-pointer self) other))

(cl:shadow "-")
(cl:defmethod - ((self vector2df) (other vector2df))
  (vector2df___sub__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-")
(cl:defmethod - ((self vector2df) (other dimension2df))
  (vector2df___sub__ (ff-pointer self) other))

(cl:shadow "-=")
(cl:defmethod -= ((self vector2df) (other vector2df))
  (vector2df___sub_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-")
(cl:defmethod - ((self vector2df) (v cl:number))
  (vector2df___sub__ (ff-pointer self) v))

(cl:shadow "-=")
(cl:defmethod -= ((self vector2df) (v cl:number))
  (vector2df___sub_assign__ (ff-pointer self) v))

(cl:shadow "-=")
(cl:defmethod -= ((self vector2df) (other dimension2df))
  (vector2df___sub_assign__ (ff-pointer self) other))

(cl:shadow "*")
(cl:defmethod * ((self vector2df) (other vector2df))
  (vector2df___mul__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*=")
(cl:defmethod *= ((self vector2df) (other vector2df))
  (vector2df___mul_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*")
(cl:defmethod * ((self vector2df) (v cl:number))
  (vector2df___mul__ (ff-pointer self) v))

(cl:shadow "*=")
(cl:defmethod *= ((self vector2df) (v cl:number))
  (vector2df___mul_assign__ (ff-pointer self) v))

(cl:shadow "/")
(cl:defmethod / ((self vector2df) (other vector2df))
  (vector2df___div__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "/=")
(cl:defmethod /= ((self vector2df) (other vector2df))
  (vector2df___div_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "/")
(cl:defmethod / ((self vector2df) (v cl:number))
  (vector2df___div__ (ff-pointer self) v))

(cl:shadow "/=")
(cl:defmethod /= ((self vector2df) (v cl:number))
  (vector2df___div_assign__ (ff-pointer self) v))

(cl:shadow "<=")
(cl:defmethod <= ((self vector2df) (other vector2df))
  (vector2df___lte__ (ff-pointer self) (ff-pointer other)))

(cl:shadow ">=")
(cl:defmethod >= ((self vector2df) (other vector2df))
  (vector2df___gte__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "<")
(cl:defmethod < ((self vector2df) (other vector2df))
  (vector2df___lt__ (ff-pointer self) (ff-pointer other)))

(cl:shadow ">")
(cl:defmethod > ((self vector2df) (other vector2df))
  (vector2df___gt__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "==")
(cl:defmethod == ((self vector2df) (other vector2df))
  (vector2df___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self vector2df) (other vector2df))
  (vector2df___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod equals ((self vector2df) (other vector2df))
  (vector2df_equals (ff-pointer self) (ff-pointer other)))

(cl:defmethod set ((self vector2df) (nx cl:number) (ny cl:number))
  (vector2df_set (ff-pointer self) nx ny))

(cl:defmethod set ((self vector2df) (p vector2df))
  (vector2df_set (ff-pointer self) (ff-pointer p)))

(cl:defmethod get-length ((self vector2df))
  (vector2df_getLength (ff-pointer self)))

(cl:defmethod get-length-sq ((self vector2df))
  (vector2df_getLengthSQ (ff-pointer self)))

(cl:defmethod dot-product ((self vector2df) (other vector2df))
  (vector2df_dotProduct (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-distance-from ((self vector2df) (other vector2df))
  (vector2df_getDistanceFrom (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-distance-from-sq ((self vector2df) (other vector2df))
  (vector2df_getDistanceFromSQ (ff-pointer self) (ff-pointer other)))

(cl:defmethod rotate-by ((self vector2df) (degrees cl:number) (center vector2df))
  (vector2df_rotateBy (ff-pointer self) degrees (ff-pointer center)))

(cl:defmethod rotate-by ((self vector2df) (degrees cl:number))
  (vector2df_rotateBy (ff-pointer self) degrees))

(cl:defmethod normalize ((self vector2df))
  (vector2df_normalize (ff-pointer self)))

(cl:defmethod get-angle-trig ((self vector2df))
  (vector2df_getAngleTrig (ff-pointer self)))

(cl:defmethod get-angle ((self vector2df))
  (vector2df_getAngle (ff-pointer self)))

(cl:defmethod get-angle-with ((self vector2df) (b vector2df))
  (vector2df_getAngleWith (ff-pointer self) (ff-pointer b)))

(cl:defmethod is-between-points ((self vector2df) (begin vector2df) (end vector2df))
  (vector2df_isBetweenPoints (ff-pointer self) (ff-pointer begin) (ff-pointer end)))

(cl:defmethod get-interpolated ((self vector2df) (other vector2df) (d cl:number))
  (vector2df_getInterpolated (ff-pointer self) (ff-pointer other) d))

(cl:defmethod get-interpolated-quadratic ((self vector2df) (v2 vector2df) (v3 vector2df) (d cl:number))
  (vector2df_getInterpolated_quadratic (ff-pointer self) (ff-pointer v2) (ff-pointer v3) d))

(cl:defmethod interpolate ((self vector2df) (a vector2df) (b vector2df) (d cl:number))
  (vector2df_interpolate (ff-pointer self) (ff-pointer a) (ff-pointer b) d))

(cl:defmethod (cl:setf X) (arg0 (obj vector2df))
  (vector2df_X_set (ff-pointer obj) arg0))

(cl:defmethod X ((obj vector2df))
  (vector2df_X_get (ff-pointer obj)))

(cl:defmethod (cl:setf Y) (arg0 (obj vector2df))
  (vector2df_Y_set (ff-pointer obj) arg0))

(cl:defmethod Y ((obj vector2df))
  (vector2df_Y_get (ff-pointer obj)))


(cl:defclass vector2di()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj vector2di) &key)
  (setf (slot-value obj 'ff-pointer) (new_vector2di)))

(cl:defmethod initialize-instance :after ((obj vector2di) &key (nx cl:integer) (ny cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_vector2di nx ny)))

(cl:defmethod initialize-instance :after ((obj vector2di) &key (n cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_vector2di n)))

(cl:defmethod initialize-instance :after ((obj vector2di) &key (other vector2di))
  (setf (slot-value obj 'ff-pointer) (new_vector2di (ff-pointer other))))

(cl:defmethod initialize-instance :after ((obj vector2di) &key (other dimension2di))
  (setf (slot-value obj 'ff-pointer) (new_vector2di other)))

(cl:shadow "-")
(cl:defmethod - ((self vector2di))
  (vector2di___neg__ (ff-pointer self)))

(cl:shadow "=")
(cl:defmethod = ((self vector2di) (other vector2di))
  (vector2di___assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "=")
(cl:defmethod = ((self vector2di) (other dimension2di))
  (vector2di___assign__ (ff-pointer self) other))

(cl:shadow "+")
(cl:defmethod + ((self vector2di) (other vector2di))
  (vector2di___add__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self vector2di) (other dimension2di))
  (vector2di___add__ (ff-pointer self) other))

(cl:shadow "+=")
(cl:defmethod += ((self vector2di) (other vector2di))
  (vector2di___add_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self vector2di) (v cl:integer))
  (vector2di___add__ (ff-pointer self) v))

(cl:shadow "+=")
(cl:defmethod += ((self vector2di) (v cl:integer))
  (vector2di___add_assign__ (ff-pointer self) v))

(cl:shadow "+=")
(cl:defmethod += ((self vector2di) (other dimension2di))
  (vector2di___add_assign__ (ff-pointer self) other))

(cl:shadow "-")
(cl:defmethod - ((self vector2di) (other vector2di))
  (vector2di___sub__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-")
(cl:defmethod - ((self vector2di) (other dimension2di))
  (vector2di___sub__ (ff-pointer self) other))

(cl:shadow "-=")
(cl:defmethod -= ((self vector2di) (other vector2di))
  (vector2di___sub_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-")
(cl:defmethod - ((self vector2di) (v cl:integer))
  (vector2di___sub__ (ff-pointer self) v))

(cl:shadow "-=")
(cl:defmethod -= ((self vector2di) (v cl:integer))
  (vector2di___sub_assign__ (ff-pointer self) v))

(cl:shadow "-=")
(cl:defmethod -= ((self vector2di) (other dimension2di))
  (vector2di___sub_assign__ (ff-pointer self) other))

(cl:shadow "*")
(cl:defmethod * ((self vector2di) (other vector2di))
  (vector2di___mul__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*=")
(cl:defmethod *= ((self vector2di) (other vector2di))
  (vector2di___mul_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*")
(cl:defmethod * ((self vector2di) (v cl:integer))
  (vector2di___mul__ (ff-pointer self) v))

(cl:shadow "*=")
(cl:defmethod *= ((self vector2di) (v cl:integer))
  (vector2di___mul_assign__ (ff-pointer self) v))

(cl:shadow "/")
(cl:defmethod / ((self vector2di) (other vector2di))
  (vector2di___div__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "/=")
(cl:defmethod /= ((self vector2di) (other vector2di))
  (vector2di___div_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "/")
(cl:defmethod / ((self vector2di) (v cl:integer))
  (vector2di___div__ (ff-pointer self) v))

(cl:shadow "/=")
(cl:defmethod /= ((self vector2di) (v cl:integer))
  (vector2di___div_assign__ (ff-pointer self) v))

(cl:shadow "<=")
(cl:defmethod <= ((self vector2di) (other vector2di))
  (vector2di___lte__ (ff-pointer self) (ff-pointer other)))

(cl:shadow ">=")
(cl:defmethod >= ((self vector2di) (other vector2di))
  (vector2di___gte__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "<")
(cl:defmethod < ((self vector2di) (other vector2di))
  (vector2di___lt__ (ff-pointer self) (ff-pointer other)))

(cl:shadow ">")
(cl:defmethod > ((self vector2di) (other vector2di))
  (vector2di___gt__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "==")
(cl:defmethod == ((self vector2di) (other vector2di))
  (vector2di___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self vector2di) (other vector2di))
  (vector2di___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod equals ((self vector2di) (other vector2di))
  (vector2di_equals (ff-pointer self) (ff-pointer other)))

(cl:defmethod set ((self vector2di) (nx cl:integer) (ny cl:integer))
  (vector2di_set (ff-pointer self) nx ny))

(cl:defmethod set ((self vector2di) (p vector2di))
  (vector2di_set (ff-pointer self) (ff-pointer p)))

(cl:defmethod get-length ((self vector2di))
  (vector2di_getLength (ff-pointer self)))

(cl:defmethod get-length-sq ((self vector2di))
  (vector2di_getLengthSQ (ff-pointer self)))

(cl:defmethod dot-product ((self vector2di) (other vector2di))
  (vector2di_dotProduct (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-distance-from ((self vector2di) (other vector2di))
  (vector2di_getDistanceFrom (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-distance-from-sq ((self vector2di) (other vector2di))
  (vector2di_getDistanceFromSQ (ff-pointer self) (ff-pointer other)))

(cl:defmethod rotate-by ((self vector2di) (degrees cl:number) (center vector2di))
  (vector2di_rotateBy (ff-pointer self) degrees (ff-pointer center)))

(cl:defmethod rotate-by ((self vector2di) (degrees cl:number))
  (vector2di_rotateBy (ff-pointer self) degrees))

(cl:defmethod normalize ((self vector2di))
  (vector2di_normalize (ff-pointer self)))

(cl:defmethod get-angle-trig ((self vector2di))
  (vector2di_getAngleTrig (ff-pointer self)))

(cl:defmethod get-angle ((self vector2di))
  (vector2di_getAngle (ff-pointer self)))

(cl:defmethod get-angle-with ((self vector2di) (b vector2di))
  (vector2di_getAngleWith (ff-pointer self) (ff-pointer b)))

(cl:defmethod is-between-points ((self vector2di) (begin vector2di) (end vector2di))
  (vector2di_isBetweenPoints (ff-pointer self) (ff-pointer begin) (ff-pointer end)))

(cl:defmethod get-interpolated ((self vector2di) (other vector2di) (d cl:number))
  (vector2di_getInterpolated (ff-pointer self) (ff-pointer other) d))

(cl:defmethod get-interpolated-quadratic ((self vector2di) (v2 vector2di) (v3 vector2di) (d cl:number))
  (vector2di_getInterpolated_quadratic (ff-pointer self) (ff-pointer v2) (ff-pointer v3) d))

(cl:defmethod interpolate ((self vector2di) (a vector2di) (b vector2di) (d cl:number))
  (vector2di_interpolate (ff-pointer self) (ff-pointer a) (ff-pointer b) d))

(cl:defmethod (cl:setf X) (arg0 (obj vector2di))
  (vector2di_X_set (ff-pointer obj) arg0))

(cl:defmethod X ((obj vector2di))
  (vector2di_X_get (ff-pointer obj)))

(cl:defmethod (cl:setf Y) (arg0 (obj vector2di))
  (vector2di_Y_set (ff-pointer obj) arg0))

(cl:defmethod Y ((obj vector2di))
  (vector2di_Y_get (ff-pointer obj)))


(cl:defclass vector3df()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj vector3df) &key)
  (setf (slot-value obj 'ff-pointer) (new_vector3df)))

(cl:defmethod initialize-instance :after ((obj vector3df) &key (nx cl:number) (ny cl:number) (nz cl:number))
  (setf (slot-value obj 'ff-pointer) (new_vector3df nx ny nz)))

(cl:defmethod initialize-instance :after ((obj vector3df) &key (n cl:number))
  (setf (slot-value obj 'ff-pointer) (new_vector3df n)))

(cl:defmethod initialize-instance :after ((obj vector3df) &key (other vector3df))
  (setf (slot-value obj 'ff-pointer) (new_vector3df (ff-pointer other))))

(cl:shadow "-")
(cl:defmethod - ((self vector3df))
  (vector3df___neg__ (ff-pointer self)))

(cl:shadow "=")
(cl:defmethod = ((self vector3df) (other vector3df))
  (vector3df___assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self vector3df) (other vector3df))
  (vector3df___add__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+=")
(cl:defmethod += ((self vector3df) (other vector3df))
  (vector3df___add_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self vector3df) (val cl:number))
  (vector3df___add__ (ff-pointer self) val))

(cl:shadow "+=")
(cl:defmethod += ((self vector3df) (val cl:number))
  (vector3df___add_assign__ (ff-pointer self) val))

(cl:shadow "-")
(cl:defmethod - ((self vector3df) (other vector3df))
  (vector3df___sub__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-=")
(cl:defmethod -= ((self vector3df) (other vector3df))
  (vector3df___sub_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-")
(cl:defmethod - ((self vector3df) (val cl:number))
  (vector3df___sub__ (ff-pointer self) val))

(cl:shadow "-=")
(cl:defmethod -= ((self vector3df) (val cl:number))
  (vector3df___sub_assign__ (ff-pointer self) val))

(cl:shadow "*")
(cl:defmethod * ((self vector3df) (other vector3df))
  (vector3df___mul__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*=")
(cl:defmethod *= ((self vector3df) (other vector3df))
  (vector3df___mul_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*")
(cl:defmethod * ((self vector3df) (v cl:number))
  (vector3df___mul__ (ff-pointer self) v))

(cl:shadow "*=")
(cl:defmethod *= ((self vector3df) (v cl:number))
  (vector3df___mul_assign__ (ff-pointer self) v))

(cl:shadow "/")
(cl:defmethod / ((self vector3df) (other vector3df))
  (vector3df___div__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "/=")
(cl:defmethod /= ((self vector3df) (other vector3df))
  (vector3df___div_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "/")
(cl:defmethod / ((self vector3df) (v cl:number))
  (vector3df___div__ (ff-pointer self) v))

(cl:shadow "/=")
(cl:defmethod /= ((self vector3df) (v cl:number))
  (vector3df___div_assign__ (ff-pointer self) v))

(cl:shadow "<=")
(cl:defmethod <= ((self vector3df) (other vector3df))
  (vector3df___lte__ (ff-pointer self) (ff-pointer other)))

(cl:shadow ">=")
(cl:defmethod >= ((self vector3df) (other vector3df))
  (vector3df___gte__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "<")
(cl:defmethod < ((self vector3df) (other vector3df))
  (vector3df___lt__ (ff-pointer self) (ff-pointer other)))

(cl:shadow ">")
(cl:defmethod > ((self vector3df) (other vector3df))
  (vector3df___gt__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "==")
(cl:defmethod == ((self vector3df) (other vector3df))
  (vector3df___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self vector3df) (other vector3df))
  (vector3df___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod equals ((self vector3df) (other vector3df) (tolerance cl:number))
  (vector3df_equals (ff-pointer self) (ff-pointer other) tolerance))

(cl:defmethod equals ((self vector3df) (other vector3df))
  (vector3df_equals (ff-pointer self) (ff-pointer other)))

(cl:defmethod set ((self vector3df) (nx cl:number) (ny cl:number) (nz cl:number))
  (vector3df_set (ff-pointer self) nx ny nz))

(cl:defmethod set ((self vector3df) (p vector3df))
  (vector3df_set (ff-pointer self) (ff-pointer p)))

(cl:defmethod get-length ((self vector3df))
  (vector3df_getLength (ff-pointer self)))

(cl:defmethod get-length-sq ((self vector3df))
  (vector3df_getLengthSQ (ff-pointer self)))

(cl:defmethod dot-product ((self vector3df) (other vector3df))
  (vector3df_dotProduct (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-distance-from ((self vector3df) (other vector3df))
  (vector3df_getDistanceFrom (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-distance-from-sq ((self vector3df) (other vector3df))
  (vector3df_getDistanceFromSQ (ff-pointer self) (ff-pointer other)))

(cl:defmethod cross-product ((self vector3df) (p vector3df))
  (vector3df_crossProduct (ff-pointer self) (ff-pointer p)))

(cl:defmethod is-between-points ((self vector3df) (begin vector3df) (end vector3df))
  (vector3df_isBetweenPoints (ff-pointer self) (ff-pointer begin) (ff-pointer end)))

(cl:defmethod normalize ((self vector3df))
  (vector3df_normalize (ff-pointer self)))

(cl:defmethod set-length ((self vector3df) (newlength cl:number))
  (vector3df_setLength (ff-pointer self) newlength))

(cl:defmethod invert ((self vector3df))
  (vector3df_invert (ff-pointer self)))

(cl:defmethod rotate-xzby ((self vector3df) (degrees cl:number) (center vector3df))
  (vector3df_rotateXZBy (ff-pointer self) degrees (ff-pointer center)))

(cl:defmethod rotate-xzby ((self vector3df) (degrees cl:number))
  (vector3df_rotateXZBy (ff-pointer self) degrees))

(cl:defmethod rotate-xyby ((self vector3df) (degrees cl:number) (center vector3df))
  (vector3df_rotateXYBy (ff-pointer self) degrees (ff-pointer center)))

(cl:defmethod rotate-xyby ((self vector3df) (degrees cl:number))
  (vector3df_rotateXYBy (ff-pointer self) degrees))

(cl:defmethod rotate-yzby ((self vector3df) (degrees cl:number) (center vector3df))
  (vector3df_rotateYZBy (ff-pointer self) degrees (ff-pointer center)))

(cl:defmethod rotate-yzby ((self vector3df) (degrees cl:number))
  (vector3df_rotateYZBy (ff-pointer self) degrees))

(cl:defmethod get-interpolated ((self vector3df) (other vector3df) (d cl:number))
  (vector3df_getInterpolated (ff-pointer self) (ff-pointer other) d))

(cl:defmethod get-interpolated-quadratic ((self vector3df) (v2 vector3df) (v3 vector3df) (d cl:number))
  (vector3df_getInterpolated_quadratic (ff-pointer self) (ff-pointer v2) (ff-pointer v3) d))

(cl:defmethod interpolate ((self vector3df) (a vector3df) (b vector3df) (d cl:number))
  (vector3df_interpolate (ff-pointer self) (ff-pointer a) (ff-pointer b) d))

(cl:defmethod get-horizontal-angle ((self vector3df))
  (vector3df_getHorizontalAngle (ff-pointer self)))

(cl:defmethod get-spherical-coordinate-angles ((self vector3df))
  (vector3df_getSphericalCoordinateAngles (ff-pointer self)))

(cl:defmethod rotation-to-direction ((self vector3df) (forwards vector3df))
  (vector3df_rotationToDirection (ff-pointer self) (ff-pointer forwards)))

(cl:defmethod rotation-to-direction ((self vector3df))
  (vector3df_rotationToDirection (ff-pointer self)))

(cl:defmethod get-as4-values ((self vector3df) array)
  (vector3df_getAs4Values (ff-pointer self) array))

(cl:defmethod get-as3-values ((self vector3df) array)
  (vector3df_getAs3Values (ff-pointer self) array))

(cl:defmethod (cl:setf X) (arg0 (obj vector3df))
  (vector3df_X_set (ff-pointer obj) arg0))

(cl:defmethod X ((obj vector3df))
  (vector3df_X_get (ff-pointer obj)))

(cl:defmethod (cl:setf Y) (arg0 (obj vector3df))
  (vector3df_Y_set (ff-pointer obj) arg0))

(cl:defmethod Y ((obj vector3df))
  (vector3df_Y_get (ff-pointer obj)))

(cl:defmethod (cl:setf Z) (arg0 (obj vector3df))
  (vector3df_Z_set (ff-pointer obj) arg0))

(cl:defmethod Z ((obj vector3df))
  (vector3df_Z_get (ff-pointer obj)))


(cl:defclass vector3di()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod initialize-instance :after ((obj vector3di) &key)
  (setf (slot-value obj 'ff-pointer) (new_vector3di)))

(cl:defmethod initialize-instance :after ((obj vector3di) &key (nx cl:integer) (ny cl:integer) (nz cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_vector3di nx ny nz)))

(cl:defmethod initialize-instance :after ((obj vector3di) &key (n cl:integer))
  (setf (slot-value obj 'ff-pointer) (new_vector3di n)))

(cl:defmethod initialize-instance :after ((obj vector3di) &key (other vector3di))
  (setf (slot-value obj 'ff-pointer) (new_vector3di (ff-pointer other))))

(cl:shadow "-")
(cl:defmethod - ((self vector3di))
  (vector3di___neg__ (ff-pointer self)))

(cl:shadow "=")
(cl:defmethod = ((self vector3di) (other vector3di))
  (vector3di___assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self vector3di) (other vector3di))
  (vector3di___add__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+=")
(cl:defmethod += ((self vector3di) (other vector3di))
  (vector3di___add_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "+")
(cl:defmethod + ((self vector3di) (val cl:integer))
  (vector3di___add__ (ff-pointer self) val))

(cl:shadow "+=")
(cl:defmethod += ((self vector3di) (val cl:integer))
  (vector3di___add_assign__ (ff-pointer self) val))

(cl:shadow "-")
(cl:defmethod - ((self vector3di) (other vector3di))
  (vector3di___sub__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-=")
(cl:defmethod -= ((self vector3di) (other vector3di))
  (vector3di___sub_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "-")
(cl:defmethod - ((self vector3di) (val cl:integer))
  (vector3di___sub__ (ff-pointer self) val))

(cl:shadow "-=")
(cl:defmethod -= ((self vector3di) (val cl:integer))
  (vector3di___sub_assign__ (ff-pointer self) val))

(cl:shadow "*")
(cl:defmethod * ((self vector3di) (other vector3di))
  (vector3di___mul__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*=")
(cl:defmethod *= ((self vector3di) (other vector3di))
  (vector3di___mul_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "*")
(cl:defmethod * ((self vector3di) (v cl:integer))
  (vector3di___mul__ (ff-pointer self) v))

(cl:shadow "*=")
(cl:defmethod *= ((self vector3di) (v cl:integer))
  (vector3di___mul_assign__ (ff-pointer self) v))

(cl:shadow "/")
(cl:defmethod / ((self vector3di) (other vector3di))
  (vector3di___div__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "/=")
(cl:defmethod /= ((self vector3di) (other vector3di))
  (vector3di___div_assign__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "/")
(cl:defmethod / ((self vector3di) (v cl:integer))
  (vector3di___div__ (ff-pointer self) v))

(cl:shadow "/=")
(cl:defmethod /= ((self vector3di) (v cl:integer))
  (vector3di___div_assign__ (ff-pointer self) v))

(cl:shadow "<=")
(cl:defmethod <= ((self vector3di) (other vector3di))
  (vector3di___lte__ (ff-pointer self) (ff-pointer other)))

(cl:shadow ">=")
(cl:defmethod >= ((self vector3di) (other vector3di))
  (vector3di___gte__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "<")
(cl:defmethod < ((self vector3di) (other vector3di))
  (vector3di___lt__ (ff-pointer self) (ff-pointer other)))

(cl:shadow ">")
(cl:defmethod > ((self vector3di) (other vector3di))
  (vector3di___gt__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "==")
(cl:defmethod == ((self vector3di) (other vector3di))
  (vector3di___eq__ (ff-pointer self) (ff-pointer other)))

(cl:shadow "!=")
(cl:defmethod != ((self vector3di) (other vector3di))
  (vector3di___ne__ (ff-pointer self) (ff-pointer other)))

(cl:defmethod equals ((self vector3di) (other vector3di) (tolerance cl:integer))
  (vector3di_equals (ff-pointer self) (ff-pointer other) tolerance))

(cl:defmethod equals ((self vector3di) (other vector3di))
  (vector3di_equals (ff-pointer self) (ff-pointer other)))

(cl:defmethod set ((self vector3di) (nx cl:integer) (ny cl:integer) (nz cl:integer))
  (vector3di_set (ff-pointer self) nx ny nz))

(cl:defmethod set ((self vector3di) (p vector3di))
  (vector3di_set (ff-pointer self) (ff-pointer p)))

(cl:defmethod get-length ((self vector3di))
  (vector3di_getLength (ff-pointer self)))

(cl:defmethod get-length-sq ((self vector3di))
  (vector3di_getLengthSQ (ff-pointer self)))

(cl:defmethod dot-product ((self vector3di) (other vector3di))
  (vector3di_dotProduct (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-distance-from ((self vector3di) (other vector3di))
  (vector3di_getDistanceFrom (ff-pointer self) (ff-pointer other)))

(cl:defmethod get-distance-from-sq ((self vector3di) (other vector3di))
  (vector3di_getDistanceFromSQ (ff-pointer self) (ff-pointer other)))

(cl:defmethod cross-product ((self vector3di) (p vector3di))
  (vector3di_crossProduct (ff-pointer self) (ff-pointer p)))

(cl:defmethod is-between-points ((self vector3di) (begin vector3di) (end vector3di))
  (vector3di_isBetweenPoints (ff-pointer self) (ff-pointer begin) (ff-pointer end)))

(cl:defmethod normalize ((self vector3di))
  (vector3di_normalize (ff-pointer self)))

(cl:defmethod set-length ((self vector3di) (newlength cl:integer))
  (vector3di_setLength (ff-pointer self) newlength))

(cl:defmethod invert ((self vector3di))
  (vector3di_invert (ff-pointer self)))

(cl:defmethod rotate-xzby ((self vector3di) (degrees cl:number) (center vector3di))
  (vector3di_rotateXZBy (ff-pointer self) degrees (ff-pointer center)))

(cl:defmethod rotate-xzby ((self vector3di) (degrees cl:number))
  (vector3di_rotateXZBy (ff-pointer self) degrees))

(cl:defmethod rotate-xyby ((self vector3di) (degrees cl:number) (center vector3di))
  (vector3di_rotateXYBy (ff-pointer self) degrees (ff-pointer center)))

(cl:defmethod rotate-xyby ((self vector3di) (degrees cl:number))
  (vector3di_rotateXYBy (ff-pointer self) degrees))

(cl:defmethod rotate-yzby ((self vector3di) (degrees cl:number) (center vector3di))
  (vector3di_rotateYZBy (ff-pointer self) degrees (ff-pointer center)))

(cl:defmethod rotate-yzby ((self vector3di) (degrees cl:number))
  (vector3di_rotateYZBy (ff-pointer self) degrees))

(cl:defmethod get-interpolated ((self vector3di) (other vector3di) (d cl:number))
  (vector3di_getInterpolated (ff-pointer self) (ff-pointer other) d))

(cl:defmethod get-interpolated-quadratic ((self vector3di) (v2 vector3di) (v3 vector3di) (d cl:number))
  (vector3di_getInterpolated_quadratic (ff-pointer self) (ff-pointer v2) (ff-pointer v3) d))

(cl:defmethod interpolate ((self vector3di) (a vector3di) (b vector3di) (d cl:number))
  (vector3di_interpolate (ff-pointer self) (ff-pointer a) (ff-pointer b) d))

(cl:defmethod get-horizontal-angle ((self vector3di))
  (vector3di_getHorizontalAngle (ff-pointer self)))

(cl:defmethod get-spherical-coordinate-angles ((self vector3di))
  (vector3di_getSphericalCoordinateAngles (ff-pointer self)))

(cl:defmethod rotation-to-direction ((self vector3di) (forwards vector3di))
  (vector3di_rotationToDirection (ff-pointer self) (ff-pointer forwards)))

(cl:defmethod rotation-to-direction ((self vector3di))
  (vector3di_rotationToDirection (ff-pointer self)))

(cl:defmethod get-as4-values ((self vector3di) array)
  (vector3di_getAs4Values (ff-pointer self) array))

(cl:defmethod get-as3-values ((self vector3di) array)
  (vector3di_getAs3Values (ff-pointer self) array))

(cl:defmethod (cl:setf X) (arg0 (obj vector3di))
  (vector3di_X_set (ff-pointer obj) arg0))

(cl:defmethod X ((obj vector3di))
  (vector3di_X_get (ff-pointer obj)))

(cl:defmethod (cl:setf Y) (arg0 (obj vector3di))
  (vector3di_Y_set (ff-pointer obj) arg0))

(cl:defmethod Y ((obj vector3di))
  (vector3di_Y_get (ff-pointer obj)))

(cl:defmethod (cl:setf Z) (arg0 (obj vector3di))
  (vector3di_Z_set (ff-pointer obj) arg0))

(cl:defmethod Z ((obj vector3di))
  (vector3di_Z_get (ff-pointer obj)))

