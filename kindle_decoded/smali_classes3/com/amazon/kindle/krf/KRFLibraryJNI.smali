.class public final Lcom/amazon/kindle/krf/KRFLibraryJNI;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/amazon/kindle/jni/KindleReaderJNI;->init()V

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->swig_module_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native COVERART_MIN_SIZE_get()J
.end method

.method public static final native JniBitmapGraphicsContext_SWIGUpcast(J)J
.end method

.method public static final native JniByteBufferGraphicsContext_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_BufferAlterableArrayAdaptor_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_BufferAlterableArrayAdaptor_getItem__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;J)J
.end method

.method public static final native KBL_Foundation_BufferArrayAdaptor_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_BufferArrayAdaptor_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/BufferArrayAdaptor;)J
.end method

.method public static final native KBL_Foundation_BufferArrayIterator_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_BufferArrayIterator_createIterator(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;)J
.end method

.method public static final native KBL_Foundation_BufferArrayIterator_first(JLcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;)V
.end method

.method public static final native KBL_Foundation_BufferArrayIterator_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;)J
.end method

.method public static final native KBL_Foundation_BufferArrayIterator_isNull(JLcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;)Z
.end method

.method public static final native KBL_Foundation_BufferArrayIterator_next(JLcom/amazon/kindle/krf/KBL/Foundation/BufferArrayIterator;)V
.end method

.method public static final native KBL_Foundation_BufferArray_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_BufferArray_getStoredElements(JLcom/amazon/kindle/krf/KBL/Foundation/BufferArray;)J
.end method

.method public static final native KBL_Foundation_BufferVectorArray_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_BufferVectorArray_empty(JLcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;)V
.end method

.method public static final native KBL_Foundation_BufferVectorArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;)J
.end method

.method public static final native KBL_Foundation_BufferVectorArray_setCount(JLcom/amazon/kindle/krf/KBL/Foundation/BufferVectorArray;J)V
.end method

.method public static final native KBL_Foundation_Buffer_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_Buffer_clear(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;)V
.end method

.method public static final native KBL_Foundation_Buffer_copyFrom__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;[BJ)V
.end method

.method public static final native KBL_Foundation_Buffer_copyFrom__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;Ljava/lang/String;)V
.end method

.method public static final native KBL_Foundation_Buffer_copyFrom__SWIG_2(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;JLcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)V
.end method

.method public static final native KBL_Foundation_Buffer_getDataConst(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;)[B
.end method

.method public static final native KBL_Foundation_Buffer_getLength(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;)J
.end method

.method public static final native KBL_Foundation_IBuffer_getDataConst(JLcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)[B
.end method

.method public static final native KBL_Foundation_IBuffer_getLength(JLcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)J
.end method

.method public static final native KBL_Foundation_ICallback_change_ownership(Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;JZ)V
.end method

.method public static final native KBL_Foundation_ICallback_director_connect(Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;JZZ)V
.end method

.method public static final native KBL_Foundation_ICallback_execute(JLcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V
.end method

.method public static final native KBL_Foundation_IInputStream_readBytes(JLcom/amazon/kindle/krf/KBL/Foundation/IInputStream;[BJJ)J
.end method

.method public static final native KBL_Foundation_IRandomAccessInputStream_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_IRandomAccessInputStream_seek(JLcom/amazon/kindle/krf/KBL/Foundation/IRandomAccessInputStream;II)V
.end method

.method public static final native KBL_Foundation_IRandomAccessInputStream_tell(JLcom/amazon/kindle/krf/KBL/Foundation/IRandomAccessInputStream;)J
.end method

.method public static final native KBL_Foundation_ITemplateActiveAreaArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateActiveAreaArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateBiDirectionalWordIterator_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_ITemplateBiDirectionalWordIterator_last(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateBiDirectionalWordIterator;)V
.end method

.method public static final native KBL_Foundation_ITemplateBiDirectionalWordIterator_previous(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateBiDirectionalWordIterator;)V
.end method

.method public static final native KBL_Foundation_ITemplateBufferAlterableArray_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_ITemplateBufferAlterableArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferAlterableArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateBufferArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateBufferArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateChapterMetadataArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateChapterMetadataArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateChapterMetadataArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateChapterMetadataArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateChapterResourceArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateChapterResourceArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateChapterResourceArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateChapterResourceArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateDictionaryLookupArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateDictionaryLookupArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateDictionaryLookupArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateDictionaryLookupArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateDictionaryResultArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateDictionaryResultArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateDictionaryResultArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateDictionaryResultArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateFontRegistryFontInfoArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateFontRegistryFontInfoArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateFontRegistryFontInfoArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateFontRegistryFontInfoArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateIBufferAlterableArray_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_ITemplateIBufferAlterableArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferAlterableArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateIBufferArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateIBufferArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateIBufferIterator_first(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)V
.end method

.method public static final native KBL_Foundation_ITemplateIBufferIterator_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)J
.end method

.method public static final native KBL_Foundation_ITemplateIBufferIterator_isNull(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)Z
.end method

.method public static final native KBL_Foundation_ITemplateIBufferIterator_next(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)V
.end method

.method public static final native KBL_Foundation_ITemplateIChapterResourceAlterableArray_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_ITemplateIChapterResourceAlterableArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceAlterableArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateIChapterResourceArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateIChapterResourceArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateIChapterResourceVectorArray_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_ITemplateIChapterResourceVectorArray_empty(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;)V
.end method

.method public static final native KBL_Foundation_ITemplateIChapterResourceVectorArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateIChapterResourceVectorArray_setCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;J)V
.end method

.method public static final native KBL_Foundation_ITemplateIContainerInfoArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIContainerInfoArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateIContainerInfoArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIContainerInfoArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateImageIdAlterableArray_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_ITemplateImageIdAlterableArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateImageIdAlterableArray;J)Ljava/lang/String;
.end method

.method public static final native KBL_Foundation_ITemplateImageIdArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateImageIdArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateImageIdArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateImageIdArray;J)Ljava/lang/String;
.end method

.method public static final native KBL_Foundation_ITemplateImageIdVectorArray_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_ITemplateImageIdVectorArray_empty(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateImageIdVectorArray;)V
.end method

.method public static final native KBL_Foundation_ITemplateImageIdVectorArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateImageIdVectorArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateImageIdVectorArray_setCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateImageIdVectorArray;J)V
.end method

.method public static final native KBL_Foundation_ITemplateIntArgCallback_change_ownership(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArgCallback;JZ)V
.end method

.method public static final native KBL_Foundation_ITemplateIntArgCallback_director_connect(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArgCallback;JZZ)V
.end method

.method public static final native KBL_Foundation_ITemplateIntArgCallback_execute(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArgCallback;I)V
.end method

.method public static final native KBL_Foundation_ITemplateIntArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateIntArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArray;J)I
.end method

.method public static final native KBL_Foundation_ITemplateLinkArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateLinkArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateLinkArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateLinkArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateLongArgCallback_change_ownership(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;JZ)V
.end method

.method public static final native KBL_Foundation_ITemplateLongArgCallback_director_connect(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;JZZ)V
.end method

.method public static final native KBL_Foundation_ITemplateLongArgCallback_execute(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;J)V
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_getCurrentIndex(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)J
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)J
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_getSiblingsCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)J
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_hasChild(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_hasParent(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToFirstChild(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToFirstSibling(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToLastSibling(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToNextSibling(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToParent(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToPreviousSibling(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z
.end method

.method public static final native KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToSibling(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;J)Z
.end method

.method public static final native KBL_Foundation_ITemplatePageElementAlterableArray_SWIGUpcast(J)J
.end method

.method public static final native KBL_Foundation_ITemplatePageElementAlterableArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementAlterableArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplatePageElementArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementArray;)J
.end method

.method public static final native KBL_Foundation_ITemplatePageElementArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplatePageElementArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplatePositionArgCallback_change_ownership(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;JZ)V
.end method

.method public static final native KBL_Foundation_ITemplatePositionArgCallback_director_connect(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;JZZ)V
.end method

.method public static final native KBL_Foundation_ITemplatePositionArgCallback_execute(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;JLcom/amazon/kindle/krf/KRF/Reader/Position;)V
.end method

.method public static final native KBL_Foundation_ITemplatePositionShiftDirectionArgsCallback_change_ownership(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;JZ)V
.end method

.method public static final native KBL_Foundation_ITemplatePositionShiftDirectionArgsCallback_director_connect(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;JZZ)V
.end method

.method public static final native KBL_Foundation_ITemplatePositionShiftDirectionArgsCallback_execute(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;JLcom/amazon/kindle/krf/KRF/Reader/Position;I)V
.end method

.method public static final native KBL_Foundation_ITemplateRectangleArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateRectangleArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateSpeechBreakerArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateSpeechBreakerArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateStringArgCallback_change_ownership(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;JZ)V
.end method

.method public static final native KBL_Foundation_ITemplateStringArgCallback_director_connect(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;JZZ)V
.end method

.method public static final native KBL_Foundation_ITemplateStringArgCallback_execute(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;Ljava/lang/String;)V
.end method

.method public static final native KBL_Foundation_ITemplateUStringArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateUStringArray;)J
.end method

.method public static final native KBL_Foundation_ITemplateUStringArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateUStringArray;J)J
.end method

.method public static final native KBL_Foundation_ITemplateWordIterator_first(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;)V
.end method

.method public static final native KBL_Foundation_ITemplateWordIterator_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;)J
.end method

.method public static final native KBL_Foundation_ITemplateWordIterator_isNull(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;)Z
.end method

.method public static final native KBL_Foundation_ITemplateWordIterator_next(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateWordIterator;)V
.end method

.method public static final native KBL_Foundation_Rectangle_isEmpty(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
.end method

.method public static final native KBL_Foundation_Rectangle_m_height_get(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)I
.end method

.method public static final native KBL_Foundation_Rectangle_m_height_set(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;I)V
.end method

.method public static final native KBL_Foundation_Rectangle_m_width_get(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)I
.end method

.method public static final native KBL_Foundation_Rectangle_m_width_set(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;I)V
.end method

.method public static final native KBL_Foundation_Rectangle_m_x_get(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)I
.end method

.method public static final native KBL_Foundation_Rectangle_m_x_set(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;I)V
.end method

.method public static final native KBL_Foundation_Rectangle_m_y_get(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)I
.end method

.method public static final native KBL_Foundation_Rectangle_m_y_set(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;I)V
.end method

.method public static final native KBL_Foundation_Rectangle_valueEquals(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
.end method

.method public static final native KBL_Foundation_Rectangle_valueNotEquals(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
.end method

.method public static final native KBL_Foundation_Rectangle_zero(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)V
.end method

.method public static final native KBL_Foundation_UString_asUtfChar(JLcom/amazon/kindle/krf/KBL/Foundation/UString;)Ljava/lang/String;
.end method

.method public static final native KBL_Foundation_UString_assign(JLcom/amazon/kindle/krf/KBL/Foundation/UString;JLcom/amazon/kindle/krf/KBL/Foundation/UString;)J
.end method

.method public static final native KBL_Foundation_UString_concat(JLcom/amazon/kindle/krf/KBL/Foundation/UString;JLcom/amazon/kindle/krf/KBL/Foundation/UString;)V
.end method

.method public static final native KBL_Foundation_UString_copyFrom__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/UString;Ljava/lang/String;)V
.end method

.method public static final native KBL_Foundation_UString_copyFrom__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/UString;Ljava/lang/String;J)V
.end method

.method public static final native KBL_Foundation_UString_detach(JLcom/amazon/kindle/krf/KBL/Foundation/UString;)Ljava/lang/String;
.end method

.method public static final native KBL_Foundation_UString_getLength(JLcom/amazon/kindle/krf/KBL/Foundation/UString;)I
.end method

.method public static final native KBL_Foundation_UString_startsWith__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/UString;JLcom/amazon/kindle/krf/KBL/Foundation/UString;)Z
.end method

.method public static final native KBL_Foundation_UString_startsWith__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/UString;Ljava/lang/String;)Z
.end method

.method public static final native KBL_Foundation_UString_valueEquals__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/UString;JLcom/amazon/kindle/krf/KBL/Foundation/UString;)Z
.end method

.method public static final native KBL_Foundation_UString_valueEquals__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/UString;Ljava/lang/String;)Z
.end method

.method public static final native KBL_Foundation_UString_valueNotEquals__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/UString;JLcom/amazon/kindle/krf/KBL/Foundation/UString;)Z
.end method

.method public static final native KBL_Foundation_UString_valueNotEquals__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/UString;Ljava/lang/String;)Z
.end method

.method public static final native KRF_Graphics_BitmapBase_SWIGUpcast(J)J
.end method

.method public static final native KRF_Graphics_BitmapBase_getColorByteOrder(JLcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;)I
.end method

.method public static final native KRF_Graphics_BitmapBase_getHeight(JLcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;)I
.end method

.method public static final native KRF_Graphics_BitmapBase_getPixelsConst(JLcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;)[B
.end method

.method public static final native KRF_Graphics_BitmapBase_getWidth(JLcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;)I
.end method

.method public static final native KRF_Graphics_BitmapBase_setColorByteOrder(JLcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;I)V
.end method

.method public static final native KRF_Graphics_Bitmap_SWIGUpcast(J)J
.end method

.method public static final native KRF_Graphics_Bitmap_resize(JLcom/amazon/kindle/krf/KRF/Graphics/Bitmap;II)V
.end method

.method public static final native KRF_Graphics_FontRegistry_FontInfo_getFamilyName(JLcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Graphics_FontRegistry_FontInfo_getFilePath(JLcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Graphics_FontRegistry_FontInfo_setFamilyName(JLcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;Ljava/lang/String;)V
.end method

.method public static final native KRF_Graphics_FontRegistry_FontInfo_setFilePath(JLcom/amazon/kindle/krf/KRF/Graphics/FontRegistry/FontInfo;Ljava/lang/String;)V
.end method

.method public static final native KRF_Graphics_IBitmap_getColorByteOrder(JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)I
.end method

.method public static final native KRF_Graphics_IBitmap_getHeight(JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)I
.end method

.method public static final native KRF_Graphics_IBitmap_getPixelsConst(JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)[B
.end method

.method public static final native KRF_Graphics_IBitmap_getWidth(JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)I
.end method

.method public static final native KRF_Graphics_IBitmap_setColorByteOrder(JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;I)V
.end method

.method public static final native KRF_Graphics_IColor_getBlue(JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)S
.end method

.method public static final native KRF_Graphics_IColor_getGreen(JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)S
.end method

.method public static final native KRF_Graphics_IColor_getRed(JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)S
.end method

.method public static final native KRF_Graphics_IColor_valueEquals(JLcom/amazon/kindle/krf/KRF/Graphics/IColor;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)Z
.end method

.method public static final native KRF_Graphics_IColor_valueNotEquals(JLcom/amazon/kindle/krf/KRF/Graphics/IColor;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)Z
.end method

.method public static final native KRF_Graphics_IImageBuffer_getDataConst(JLcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;)J
.end method

.method public static final native KRF_Graphics_IImageBuffer_getHeight(JLcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;)I
.end method

.method public static final native KRF_Graphics_IImageBuffer_getType(JLcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;)I
.end method

.method public static final native KRF_Graphics_IImageBuffer_getWidth(JLcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;)I
.end method

.method public static final native KRF_Graphics_ImageRenderingHelper_createImageRenderingHelper(JLcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;Ljava/lang/String;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)J
.end method

.method public static final native KRF_Graphics_ImageRenderingHelper_getImageHeight(JLcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;)I
.end method

.method public static final native KRF_Graphics_ImageRenderingHelper_getImageWidth(JLcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;)I
.end method

.method public static final native KRF_Graphics_ImageRenderingHelper_render__SWIG_0(JLcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;JLcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
.end method

.method public static final native KRF_Graphics_ImageRenderingHelper_render__SWIG_1(JLcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;I)Z
.end method

.method public static final native KRF_Graphics_ImageRenderingHelper_render__SWIG_2(JLcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
.end method

.method public static final native KRF_Graphics_NativeGraphicsContext_isValid(JLcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;)Z
.end method

.method public static final native KRF_Graphics_RGBColor_SWIGUpcast(J)J
.end method

.method public static final native KRF_Graphics_RGBColor_asUint32(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;I)J
.end method

.method public static final native KRF_Graphics_RGBColor_assign(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)J
.end method

.method public static final native KRF_Graphics_RGBColor_getBlue(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;)S
.end method

.method public static final native KRF_Graphics_RGBColor_getGreen(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;)S
.end method

.method public static final native KRF_Graphics_RGBColor_getRed(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;)S
.end method

.method public static final native KRF_Graphics_RGBColor_valueEquals(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)Z
.end method

.method public static final native KRF_Graphics_RGBColor_valueNotEquals(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)Z
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_SWIGUpcast(J)J
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_createActiveAreasAt__SWIG_0(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;IIJ)J
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_createActiveAreasAt__SWIG_1(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;II)J
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_getActiveAreas(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_getCurrentPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_getFootnoteDefaultCallBack(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_getInternalLinkDefaultCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_getJavascriptLinkDefaultCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_getTableShiftActiveAreaSize(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)I
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_getTableShiftDefaultCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_getTableShiftSize(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)I
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_getTogglableDefaultCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)J
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_hasViewer(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)Z
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_onPageChanged(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setAudioCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setBuyLinkArgCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setBuyLinkCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setExternalLinkCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setFootnoteCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setInternalLinkCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setJavascriptLinkCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setShowBookDetailLinkArgCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setShowBookDetailLinkCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setTableShiftActiveAreaSize(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;I)Z
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setTableShiftCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setTableShiftSize(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;I)Z
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setTogglableCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setTooltipCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setVideoCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setViewer(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V
.end method

.method public static final native KRF_ReaderExtensions_ActiveAreaManager_setZoomableCallback(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;)V
.end method

.method public static final native KRF_ReaderExtensions_ExtendedDocumentInfo_createFontSignature(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;)J
.end method

.method public static final native KRF_ReaderExtensions_ExtendedDocumentInfo_getCDEContentType(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_ReaderExtensions_ExtendedDocumentInfo_getMultimediaGuid(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_ReaderExtensions_ExtendedDocumentInfo_getWatermark(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_ReaderExtensions_HistoryEntry_getPageSnapshotInfo(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryEntry;)J
.end method

.method public static final native KRF_ReaderExtensions_HistoryEntry_setPageSnapshotInfo(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryEntry;JLcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)V
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_SWIGUpcast(J)J
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_addHistoryEntry(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_back(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)Z
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_countBackwardEntries(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)J
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_countForwardEntries(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)J
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_emptyHistory(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_enable(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;Z)V
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_forward(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)Z
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_getHistoryEntryAt(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;J)J
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_hasBackward(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)Z
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_hasForward(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)Z
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_isEnabled(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)Z
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_postGotoPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_postNextPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_postPreviousPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_preGotoPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_preNextPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_prePreviousPage(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)V
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_restoreHistoryEntry(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;J)Z
.end method

.method public static final native KRF_ReaderExtensions_HistoryManager_size(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;)J
.end method

.method public static final native KRF_ReaderExtensions_IActiveArea_execute(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)V
.end method

.method public static final native KRF_ReaderExtensions_IActiveArea_getActiveRectangles(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)J
.end method

.method public static final native KRF_ReaderExtensions_IActiveArea_getAnchorEnd(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)J
.end method

.method public static final native KRF_ReaderExtensions_IActiveArea_getAnchorStart(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)J
.end method

.method public static final native KRF_ReaderExtensions_IActiveArea_getType(JLcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)J
.end method

.method public static final native KRF_ReaderInternal_MobiDataReader_createMobiDataReader__SWIG_0(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)J
.end method

.method public static final native KRF_ReaderInternal_MobiDataReader_createMobiDataReader__SWIG_1(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)J
.end method

.method public static final native KRF_ReaderInternal_MobiDataReader_getPrimaryPayloadSize(JLcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;)J
.end method

.method public static final native KRF_Reader_DocumentErrorValue_value_get(JLcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)I
.end method

.method public static final native KRF_Reader_DocumentErrorValue_value_set(JLcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;I)V
.end method

.method public static final native KRF_Reader_DocumentSecurityFactory_createTamperproofData__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)J
.end method

.method public static final native KRF_Reader_DocumentSecurityFactory_createTamperproofData__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/DocumentSecurityFactory;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)J
.end method

.method public static final native KRF_Reader_IAmazonLink_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IAmazonLink_getASIN(JLcom/amazon/kindle/krf/KRF/Reader/IAmazonLink;)J
.end method

.method public static final native KRF_Reader_IAmazonLink_getTargetType(JLcom/amazon/kindle/krf/KRF/Reader/IAmazonLink;)I
.end method

.method public static final native KRF_Reader_IAudioPageElement_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IAudioPageElement_getAudioId(JLcom/amazon/kindle/krf/KRF/Reader/IAudioPageElement;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IAudioPageElement_hasControl(JLcom/amazon/kindle/krf/KRF/Reader/IAudioPageElement;)Z
.end method

.method public static final native KRF_Reader_IAudioPlayLink_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IAudioPlayLink_getAudioId(JLcom/amazon/kindle/krf/KRF/Reader/IAudioPlayLink;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterMetadata_getAuthor(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterMetadata_getChapterID(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterMetadata_getDescription(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterMetadata_getKicker(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterMetadata_getLayout(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterMetadata_getName(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterMetadata_getScrubberLandscape(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)J
.end method

.method public static final native KRF_Reader_IChapterMetadata_getScrubberPortrait(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)J
.end method

.method public static final native KRF_Reader_IChapterMetadata_getSmoothScrolling(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterMetadata_getTags(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterMetadata_getThumbnailsLandscape(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)J
.end method

.method public static final native KRF_Reader_IChapterMetadata_getThumbnailsPortrait(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)J
.end method

.method public static final native KRF_Reader_IChapterMetadata_getTitle(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterMetadata_getToc(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)J
.end method

.method public static final native KRF_Reader_IChapterMetadata_hasAudio(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Z
.end method

.method public static final native KRF_Reader_IChapterMetadata_hasSlideshow(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Z
.end method

.method public static final native KRF_Reader_IChapterMetadata_hasVideo(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Z
.end method

.method public static final native KRF_Reader_IChapterMetadata_hideFromTOC(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Z
.end method

.method public static final native KRF_Reader_IChapterMetadata_isAdvertisement(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Z
.end method

.method public static final native KRF_Reader_IChapterResource_getChapterResourceType(JLcom/amazon/kindle/krf/KRF/Reader/IChapterResource;)I
.end method

.method public static final native KRF_Reader_IChapterResource_getHeight(JLcom/amazon/kindle/krf/KRF/Reader/IChapterResource;)J
.end method

.method public static final native KRF_Reader_IChapterResource_getResourceID(JLcom/amazon/kindle/krf/KRF/Reader/IChapterResource;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterResource_getTarget(JLcom/amazon/kindle/krf/KRF/Reader/IChapterResource;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IChapterResource_getWidth(JLcom/amazon/kindle/krf/KRF/Reader/IChapterResource;)J
.end method

.method public static final native KRF_Reader_IContainerInfo_getContainerId(JLcom/amazon/kindle/krf/KRF/Reader/IContainerInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDictionaryLookup_createLookupResults(JLcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_IDictionaryLookup_getSourceLanguage(JLcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDictionaryLookup_getTargetLanguage(JLcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDictionaryResult_getDictionaryWord(JLcom/amazon/kindle/krf/KRF/Reader/IDictionaryResult;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDictionaryResult_getFirstPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IDictionaryResult;)J
.end method

.method public static final native KRF_Reader_IDictionaryResult_getGrammaticalFeatures(JLcom/amazon/kindle/krf/KRF/Reader/IDictionaryResult;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDictionaryResult_getLastPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IDictionaryResult;)J
.end method

.method public static final native KRF_Reader_IDocumentChapter_getChapterResources(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentChapter;)J
.end method

.method public static final native KRF_Reader_IDocumentChapter_getElementsConst(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentChapter;)J
.end method

.method public static final native KRF_Reader_IDocumentIndex_assign(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J
.end method

.method public static final native KRF_Reader_IDocumentIndex_copy(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J
.end method

.method public static final native KRF_Reader_IDocumentIndex_getLastLoadedPosition(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J
.end method

.method public static final native KRF_Reader_IDocumentIndex_getPageCount(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)I
.end method

.method public static final native KRF_Reader_IDocumentIndex_getPageFromPosition(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/Position;)I
.end method

.method public static final native KRF_Reader_IDocumentIndex_getPositionFromPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;IJLcom/amazon/kindle/krf/KRF/Reader/Position;)Z
.end method

.method public static final native KRF_Reader_IDocumentIndex_getSettings(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J
.end method

.method public static final native KRF_Reader_IDocumentIndex_isCompleteIndex(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z
.end method

.method public static final native KRF_Reader_IDocumentIndex_mergeSettings(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
.end method

.method public static final native KRF_Reader_IDocumentIndex_serialize(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;Ljava/lang/String;)Z
.end method

.method public static final native KRF_Reader_IDocumentIndex_valueEquals(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z
.end method

.method public static final native KRF_Reader_IDocumentIndex_valueNotEquals(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z
.end method

.method public static final native KRF_Reader_IDocumentIndexerListener_notifyIndexingEvent(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndexerListener;JLcom/amazon/kindle/krf/KRF/Reader/IIndexerEvent;)V
.end method

.method public static final native KRF_Reader_IDocumentIndexer_createIndex__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndexer;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndexerListener;)J
.end method

.method public static final native KRF_Reader_IDocumentIndexer_createIndex__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndexer;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J
.end method

.method public static final native KRF_Reader_IDocumentIndexer_createProgressiveIndex(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndexer;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J
.end method

.method public static final native KRF_Reader_IDocumentIndexer_updateProgressiveIndex(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndexer;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_createBufferFromMetadata__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_createBufferFromMetadata__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;I)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_createIntListFromMetadata__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_createIntListFromMetadata__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;I)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_createIntValueFromMetadata__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;I)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_createIntValueFromMetadata__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_createLabelFromLocation(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;J)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_createStringListFromMetadata__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_createStringListFromMetadata__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;I)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_getAsin(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_getAuthor(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_getBaseLanguage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_getBookFileType(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I
.end method

.method public static final native KRF_Reader_IDocumentInfo_getCDEContentType(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_getChapterMetadatas(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_getClippingLimit(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)F
.end method

.method public static final native KRF_Reader_IDocumentInfo_getCover(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_getCoverId(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_getGuid(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_getInnerNavigationOrientation(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_getLocationFromLabel(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_getLocationFromPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;JLcom/amazon/kindle/krf/KRF/Reader/Position;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_getMaxLocation(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_getMaxPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J
.end method

.method public static final native KRF_Reader_IDocumentInfo_getMimeType(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_getNaturalHeight(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I
.end method

.method public static final native KRF_Reader_IDocumentInfo_getNaturalWidth(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I
.end method

.method public static final native KRF_Reader_IDocumentInfo_getOriginalHeight(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I
.end method

.method public static final native KRF_Reader_IDocumentInfo_getOriginalWidth(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I
.end method

.method public static final native KRF_Reader_IDocumentInfo_getPrimaryWritingMode(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_getPublisher(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_getPublishingDate(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_getReadingDirection(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I
.end method

.method public static final native KRF_Reader_IDocumentInfo_getScaleFactor(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)D
.end method

.method public static final native KRF_Reader_IDocumentInfo_getSpanForRange(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;)F
.end method

.method public static final native KRF_Reader_IDocumentInfo_getStringFromMetadata__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_getStringFromMetadata__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;I)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_getTitle(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentInfo_hasAudioMedia(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_hasContentFeature(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_hasCoverPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_hasDictionaryLookups(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_hasEmbeddedFonts(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_hasTocPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_hasVideoMedia(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_isComic(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_isEncrypted(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_isFixedLayout(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_isManga(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_isSample(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_isTextbook(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_isYJFolio(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentInfo_isYJOP(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentNavigationListener_change_ownership(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;JZ)V
.end method

.method public static final native KRF_Reader_IDocumentNavigationListener_director_connect(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;JZZ)V
.end method

.method public static final native KRF_Reader_IDocumentNavigationListener_postGotoPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
.end method

.method public static final native KRF_Reader_IDocumentNavigationListener_postNextPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
.end method

.method public static final native KRF_Reader_IDocumentNavigationListener_postPreviousPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
.end method

.method public static final native KRF_Reader_IDocumentNavigationListener_preGotoPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
.end method

.method public static final native KRF_Reader_IDocumentNavigationListener_preNextPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
.end method

.method public static final native KRF_Reader_IDocumentNavigationListener_prePreviousPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
.end method

.method public static final native KRF_Reader_IDocumentPageChangedListener_change_ownership(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;JZ)V
.end method

.method public static final native KRF_Reader_IDocumentPageChangedListener_director_connect(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;JZZ)V
.end method

.method public static final native KRF_Reader_IDocumentPageChangedListener_onPageChanged(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)V
.end method

.method public static final native KRF_Reader_IDocumentPage_checkContentClipped(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_createCoveringRectangles(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;)J
.end method

.method public static final native KRF_Reader_IDocumentPage_createPageSnapshotInfo(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getDecorativeRectangles(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementAtPointConst__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;IIIZ)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementAtPointConst__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;III)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementAtPointConst__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;II)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementAtPoint__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;IIIZ)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementAtPoint__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;III)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementAtPoint__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;II)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementClosestToPointConst__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;IIIZ)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementClosestToPointConst__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;III)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementClosestToPointConst__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;II)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementClosestToPoint__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;IIIZ)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementClosestToPoint__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;III)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementClosestToPoint__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;II)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElements(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getElementsConst(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getFirstPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getLastPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getLinks(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getPageElementID(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J
.end method

.method public static final native KRF_Reader_IDocumentPage_getPageHeight(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)D
.end method

.method public static final native KRF_Reader_IDocumentPage_getPageType(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)I
.end method

.method public static final native KRF_Reader_IDocumentPage_getPageWidth(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)D
.end method

.method public static final native KRF_Reader_IDocumentPage_getText(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;I)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IDocumentPage_hasScalableGraphics(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_heightRequiredToRenderToPosition(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Reader/Position;)I
.end method

.method public static final native KRF_Reader_IDocumentPage_isFirstPageOfChapter(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeCover_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutDoublePageSpreadFirst_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutDoublePageSpreadSecond_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutDoublePageSpread_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPageFirst_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPageSecond_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPagesBlankPageAligned_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPagesBlankPageAny_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPagesOrDoublePageSpread_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFacingPages_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutFirstPage_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutSecondPage_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeFixedLayoutSingle_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeReflowable_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_kPageTypeUnknown_get()I
.end method

.method public static final native KRF_Reader_IDocumentPage_render__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;IDDD)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_render__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;IDD)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_render__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;ID)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_render__SWIG_3(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;I)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_render__SWIG_4(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_render__SWIG_5(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIIIDDD)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_render__SWIG_6(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIIIDD)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_render__SWIG_7(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIIID)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_render__SWIG_8(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;JLcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;IIII)Z
.end method

.method public static final native KRF_Reader_IDocumentPage_writeToCache(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;Z)Z
.end method

.method public static final native KRF_Reader_IDocumentSecurityBuilder_createTamperproofData(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentSecurityBuilder;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_addListener__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
.end method

.method public static final native KRF_Reader_IDocumentViewer_addListener__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)V
.end method

.method public static final native KRF_Reader_IDocumentViewer_applyIndex(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_applySettings(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_createFootnoteViewer(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_createZoomableViewer(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_getCurrentPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_getCurrentPageConst(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_getCurrentPageNumber(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)I
.end method

.method public static final native KRF_Reader_IDocumentViewer_getDocumentIndex(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_getJavascriptInterpreter(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_getKindleDocument(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_getNextPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_getNumberOfPages(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)I
.end method

.method public static final native KRF_Reader_IDocumentViewer_getPreviousPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_getSettings(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_getSettingsLimitations(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_getSpeechBreakers(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_gotoCoverPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_gotoFirstPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_gotoFootnote(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_gotoLocation(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_gotoPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_gotoPageContaining(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_gotoPageNumber(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;I)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_gotoPageStartingWith(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/Position;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_gotoStartReadingPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_gotoTocPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_hasCoverPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_hasDocumentIndex(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_hasNextPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_hasPreviousPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_hasTocPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_isNextPageReady(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_isPreviousPageReady(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_lookupBackward(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_lookupForward(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;J)J
.end method

.method public static final native KRF_Reader_IDocumentViewer_nextPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_previousPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)Z
.end method

.method public static final native KRF_Reader_IDocumentViewer_removeListener__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
.end method

.method public static final native KRF_Reader_IDocumentViewer_removeListener__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)V
.end method

.method public static final native KRF_Reader_IDocumentViewer_skipPages(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;I)V
.end method

.method public static final native KRF_Reader_IExternalLink_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IExternalLink_getUrl(JLcom/amazon/kindle/krf/KRF/Reader/IExternalLink;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IFootnoteLink_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IFootnoteLink_getFootnoteId(JLcom/amazon/kindle/krf/KRF/Reader/IFootnoteLink;)J
.end method

.method public static final native KRF_Reader_IImagePageElement_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IImagePageElement_getImageId(JLcom/amazon/kindle/krf/KRF/Reader/IImagePageElement;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IIndexerEvent_getType(JLcom/amazon/kindle/krf/KRF/Reader/IIndexerEvent;)I
.end method

.method public static final native KRF_Reader_IInnerNavigationOrientation_getBindingDirection(JLcom/amazon/kindle/krf/KRF/Reader/IInnerNavigationOrientation;)I
.end method

.method public static final native KRF_Reader_IInnerNavigationOrientation_supportsLandscape(JLcom/amazon/kindle/krf/KRF/Reader/IInnerNavigationOrientation;)Z
.end method

.method public static final native KRF_Reader_IInnerNavigationOrientation_supportsPortrait(JLcom/amazon/kindle/krf/KRF/Reader/IInnerNavigationOrientation;)Z
.end method

.method public static final native KRF_Reader_IInternalLink_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IInternalLink_getTarget(JLcom/amazon/kindle/krf/KRF/Reader/IInternalLink;)J
.end method

.method public static final native KRF_Reader_IJavascriptCallbacks_onPlayAudio(JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_IJavascriptCallbacks_onPlayVideo(JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_IJavascriptInterpreter_evaluate(JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptInterpreter;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IJavascriptInterpreter_execute(JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptInterpreter;Ljava/lang/String;)Z
.end method

.method public static final native KRF_Reader_IJavascriptLink_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IJavascriptLink_getScript(JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptLink;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IKindleDocumentBuilder_createDocumentInfo__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocumentBuilder;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)J
.end method

.method public static final native KRF_Reader_IKindleDocumentBuilder_createDocumentInfo__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocumentBuilder;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IKindleDocument_addSpanToPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/Position;F)J
.end method

.method public static final native KRF_Reader_IKindleDocument_attachResourceContainer__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Z
.end method

.method public static final native KRF_Reader_IKindleDocument_attachResourceContainer__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)Z
.end method

.method public static final native KRF_Reader_IKindleDocument_createAudioStream(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createChapter(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JZ)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createDictionaryLookups(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createImage(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createIndexer(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createNavigationControl(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createResourcePathForResource(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IKindleDocument_createResourceStream(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createUriForMediaStream(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IKindleDocument_createVideoStream(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createViewer__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;Z)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createViewer__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createViewer__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createViewer__SWIG_3(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;Z)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createViewer__SWIG_4(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createViewer__SWIG_5(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createWordIterator__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/Position;I)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createWordIterator__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/Position;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_createWordIterator__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_getContainersForAssetId(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_getDocumentInfo(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_getPageCount(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_getResourceType(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)I
.end method

.method public static final native KRF_Reader_IKindleDocument_getStartReadingPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J
.end method

.method public static final native KRF_Reader_IKindleDocument_isAssetAvailable(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Z
.end method

.method public static final native KRF_Reader_IKindleDocument_isContainerAttached(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Z
.end method

.method public static final native KRF_Reader_IKindleDocument_purgeAllMediaStreamUri(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)V
.end method

.method public static final native KRF_Reader_IKindleDocument_purgeMediaStreamUri(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Z
.end method

.method public static final native KRF_Reader_ILink_getAnchorEnd(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J
.end method

.method public static final native KRF_Reader_ILink_getAnchorStart(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J
.end method

.method public static final native KRF_Reader_ILink_getType(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)I
.end method

.method public static final native KRF_Reader_ILink_interpretAsIExternalLink(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J
.end method

.method public static final native KRF_Reader_ILink_interpretAsIFootnoteLink(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J
.end method

.method public static final native KRF_Reader_ILink_interpretAsIInternalLink(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J
.end method

.method public static final native KRF_Reader_ILink_interpretAsIZoomableLink(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J
.end method

.method public static final native KRF_Reader_INavigationControlNode_getDepthLevel(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;)J
.end method

.method public static final native KRF_Reader_INavigationControlNode_getIntFromTag(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_INavigationControlNode_getNodeClass(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_INavigationControlNode_getPositionId(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;)J
.end method

.method public static final native KRF_Reader_INavigationControlNode_getStringFromTag(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_INavigationControlNode_getTitle(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_INavigationControl_createSecondaryTableIterator(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControl;J)J
.end method

.method public static final native KRF_Reader_INavigationControl_createTocIterator(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControl;)J
.end method

.method public static final native KRF_Reader_INavigationControl_createTocIteratorFromPositionId(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControl;JLcom/amazon/kindle/krf/KRF/Reader/Position;)J
.end method

.method public static final native KRF_Reader_INavigationControl_getSecondaryTableCount(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControl;)J
.end method

.method public static final native KRF_Reader_IPageElement_getCoveringRectangles(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J
.end method

.method public static final native KRF_Reader_IPageElement_getEndId(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J
.end method

.method public static final native KRF_Reader_IPageElement_getId(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J
.end method

.method public static final native KRF_Reader_IPageElement_getType(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)I
.end method

.method public static final native KRF_Reader_IPageElement_interpretAsIAudioPageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J
.end method

.method public static final native KRF_Reader_IPageElement_interpretAsIImagePageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J
.end method

.method public static final native KRF_Reader_IPageElement_interpretAsIPluginPageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J
.end method

.method public static final native KRF_Reader_IPageElement_interpretAsITogglablePageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J
.end method

.method public static final native KRF_Reader_IPageElement_interpretAsIVideoPageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J
.end method

.method public static final native KRF_Reader_IPageElement_interpretAsIWordPageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J
.end method

.method public static final native KRF_Reader_IPageSnapshotInfo_getBuffer(JLcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)J
.end method

.method public static final native KRF_Reader_IPageSnapshotInfo_getStartPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)J
.end method

.method public static final native KRF_Reader_IPluginPageElement_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IPluginPageElement_getManifest(JLcom/amazon/kindle/krf/KRF/Reader/IPluginPageElement;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IRenderingSettings_getAdditionalLineSpacing(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getAudioCapability(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
.end method

.method public static final native KRF_Reader_IRenderingSettings_getAudioControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getAudioControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getBackgroundColor(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J
.end method

.method public static final native KRF_Reader_IRenderingSettings_getBackingScaleFactor(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)F
.end method

.method public static final native KRF_Reader_IRenderingSettings_getCachePath(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IRenderingSettings_getColorMode(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getColumnCount(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getDPI(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)F
.end method

.method public static final native KRF_Reader_IRenderingSettings_getDefaultFallbackFontFace(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IRenderingSettings_getDefaultFontFace(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IRenderingSettings_getDefaultMonospaceFontFace(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IRenderingSettings_getDefaultSansSerifFontFace(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IRenderingSettings_getFallbackFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IRenderingSettings_getFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IRenderingSettings_getFontSize(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)F
.end method

.method public static final native KRF_Reader_IRenderingSettings_getHeight(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getHorizontalMargin(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getLetterSpacing(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getLinkColor(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J
.end method

.method public static final native KRF_Reader_IRenderingSettings_getMaxNumCaches(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getSpaceBetweenColumns(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getSubpixelRendering(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getTextAlignment(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getTextColor(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J
.end method

.method public static final native KRF_Reader_IRenderingSettings_getVerticalMargin(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getVideoCapability(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
.end method

.method public static final native KRF_Reader_IRenderingSettings_getVideoControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getVideoControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_getWidth(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I
.end method

.method public static final native KRF_Reader_IRenderingSettings_isHDContentPreferred(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
.end method

.method public static final native KRF_Reader_IRenderingSettings_isPageAlignmentEnforced(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
.end method

.method public static final native KRF_Reader_IRenderingSettings_isPreloadingEnabled(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
.end method

.method public static final native KRF_Reader_IResourceProvider_createResource(JLcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;Ljava/lang/String;)J
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeAdditionalLineSpacing(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeAudioControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeAudioControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeBackgroundColor(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeBackingScaleFactor(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeCachePath(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeColorMode(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeColumnCount(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeEnforcePageAlignment(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeFallbackFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeFallbackFontFace(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeFontFace(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeFontSize(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeHeight(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeHorizontalMargin(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeLetterSpacing(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeLinkColor(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeMaxNumCaches(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeMonospaceFontFace(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeSansSerifFontFace(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeSpaceBetweenColumns(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeSubpixelRendering(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeTextAlignment(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeTextColor(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeVerticalMargin(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeVideoControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeVideoControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canChangeWidth(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canHandleAudioContent(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_canHandleVideoContent(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_ISettingsLimitations_isValidFontFace(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;Ljava/lang/String;)Z
.end method

.method public static final native KRF_Reader_ISpeechBreaker_getEndId(JLcom/amazon/kindle/krf/KRF/Reader/ISpeechBreaker;)J
.end method

.method public static final native KRF_Reader_ISpeechBreaker_getId(JLcom/amazon/kindle/krf/KRF/Reader/ISpeechBreaker;)J
.end method

.method public static final native KRF_Reader_ISpeechBreaker_getMetadata(JLcom/amazon/kindle/krf/KRF/Reader/ISpeechBreaker;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_ITablePageElement_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_ITablePageElement_getDisplayableHeight(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I
.end method

.method public static final native KRF_Reader_ITablePageElement_getDisplayableWidth(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I
.end method

.method public static final native KRF_Reader_ITablePageElement_getHorizontalShift(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I
.end method

.method public static final native KRF_Reader_ITablePageElement_getHorizontalShiftMax(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I
.end method

.method public static final native KRF_Reader_ITablePageElement_getHorizontalShiftMin(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I
.end method

.method public static final native KRF_Reader_ITablePageElement_getVerticalShift(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I
.end method

.method public static final native KRF_Reader_ITablePageElement_getVerticalShiftMax(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I
.end method

.method public static final native KRF_Reader_ITablePageElement_getVerticalShiftMin(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;)I
.end method

.method public static final native KRF_Reader_ITablePageElement_shiftTable(JLcom/amazon/kindle/krf/KRF/Reader/ITablePageElement;II)V
.end method

.method public static final native KRF_Reader_ITamperproofData_getTamperproofKeys(JLcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;)J
.end method

.method public static final native KRF_Reader_ITamperproofData_getTamperproofValues(JLcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;)J
.end method

.method public static final native KRF_Reader_ITogglablePageElement_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_ITogglablePageElement_getOrdinal(JLcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;)I
.end method

.method public static final native KRF_Reader_ITogglablePageElement_isOn(JLcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;)Z
.end method

.method public static final native KRF_Reader_ITogglablePageElement_toggle(JLcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;)V
.end method

.method public static final native KRF_Reader_ITooltipLink_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_ITooltipLink_getContent(JLcom/amazon/kindle/krf/KRF/Reader/ITooltipLink;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IVideoPageElement_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IVideoPageElement_getVideoId(JLcom/amazon/kindle/krf/KRF/Reader/IVideoPageElement;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IVideoPageElement_hasControl(JLcom/amazon/kindle/krf/KRF/Reader/IVideoPageElement;)Z
.end method

.method public static final native KRF_Reader_IVideoPlayLink_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IVideoPlayLink_getVideoId(JLcom/amazon/kindle/krf/KRF/Reader/IVideoPlayLink;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IWordIterator_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IWordIterator_gotoPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IWordIterator;JLcom/amazon/kindle/krf/KRF/Reader/Position;)V
.end method

.method public static final native KRF_Reader_IWordPageElement_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IWordPageElement_getText(JLcom/amazon/kindle/krf/KRF/Reader/IWordPageElement;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IWord_getEndId(JLcom/amazon/kindle/krf/KRF/Reader/IWord;)J
.end method

.method public static final native KRF_Reader_IWord_getId(JLcom/amazon/kindle/krf/KRF/Reader/IWord;)J
.end method

.method public static final native KRF_Reader_IWord_getText(JLcom/amazon/kindle/krf/KRF/Reader/IWord;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_IZoomableLink_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IZoomableLink_getPreferredHeight(JLcom/amazon/kindle/krf/KRF/Reader/IZoomableLink;)I
.end method

.method public static final native KRF_Reader_IZoomableLink_getPreferredWidth(JLcom/amazon/kindle/krf/KRF/Reader/IZoomableLink;)I
.end method

.method public static final native KRF_Reader_IZoomableLink_getZoomableId(JLcom/amazon/kindle/krf/KRF/Reader/IZoomableLink;)J
.end method

.method public static final native KRF_Reader_IndexerProgressEvent_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_IndexerProgressEvent_getCurrent(JLcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;)J
.end method

.method public static final native KRF_Reader_IndexerProgressEvent_getLast(JLcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;)J
.end method

.method public static final native KRF_Reader_IndexerProgressEvent_getPageNumber(JLcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;)I
.end method

.method public static final native KRF_Reader_IndexerProgressEvent_getType(JLcom/amazon/kindle/krf/KRF/Reader/IndexerProgressEvent;)I
.end method

.method public static final native KRF_Reader_IntValue_value_get(JLcom/amazon/kindle/krf/KRF/Reader/IntValue;)I
.end method

.method public static final native KRF_Reader_IntValue_value_set(JLcom/amazon/kindle/krf/KRF/Reader/IntValue;I)V
.end method

.method public static final native KRF_Reader_KindleCacheFactory_getPageStartingWithCache__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;Ljava/lang/String;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;J)J
.end method

.method public static final native KRF_Reader_KindleCacheFactory_getPageStartingWithCache__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;Ljava/lang/String;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/Position;)J
.end method

.method public static final native KRF_Reader_KindleDocumentFactory_addKindleDocumentBuilder(JLcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocumentBuilder;)V
.end method

.method public static final native KRF_Reader_KindleDocumentFactory_createDocumentInfo__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)J
.end method

.method public static final native KRF_Reader_KindleDocumentFactory_createDocumentInfo__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)J
.end method

.method public static final native KRF_Reader_KindleDocumentFactory_createKindleDocument__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)J
.end method

.method public static final native KRF_Reader_KindleDocumentFactory_createKindleDocument__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)J
.end method

.method public static final native KRF_Reader_PageSnapshotInfo_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_PageSnapshotInfo_getBuffer(JLcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;)J
.end method

.method public static final native KRF_Reader_PageSnapshotInfo_getStartPositionId(JLcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;)J
.end method

.method public static final native KRF_Reader_PageSnapshotInfo_setBuffer(JLcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;JLcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)V
.end method

.method public static final native KRF_Reader_PageSnapshotInfo_setStartPositionId(JLcom/amazon/kindle/krf/KRF/Reader/PageSnapshotInfo;JLcom/amazon/kindle/krf/KRF/Reader/Position;)V
.end method

.method public static final native KRF_Reader_Position_assign(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;)J
.end method

.method public static final native KRF_Reader_Position_deserializeFromBuffer(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)Z
.end method

.method public static final native KRF_Reader_Position_deserializeFromString(JLcom/amazon/kindle/krf/KRF/Reader/Position;Ljava/lang/String;)Z
.end method

.method public static final native KRF_Reader_Position_serializeToBuffer(JLcom/amazon/kindle/krf/KRF/Reader/Position;)J
.end method

.method public static final native KRF_Reader_Position_serializeToString(JLcom/amazon/kindle/krf/KRF/Reader/Position;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_Position_valueEquals(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;)Z
.end method

.method public static final native KRF_Reader_Position_valueGreater(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;)Z
.end method

.method public static final native KRF_Reader_Position_valueGreaterOrEquals(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;)Z
.end method

.method public static final native KRF_Reader_Position_valueLess(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;)Z
.end method

.method public static final native KRF_Reader_Position_valueLessOrEquals(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;)Z
.end method

.method public static final native KRF_Reader_Position_valueNotEquals(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;)Z
.end method

.method public static final native KRF_Reader_RenderingSettingsHelper_applyLimitations(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)V
.end method

.method public static final native KRF_Reader_RenderingSettingsHelper_checkSettings(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
.end method

.method public static final native KRF_Reader_RenderingSettingsHelper_getSettingsSummary(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettingsHelper_isValidFontFace(Ljava/lang/String;)Z
.end method

.method public static final native KRF_Reader_RenderingSettings_SWIGUpcast(J)J
.end method

.method public static final native KRF_Reader_RenderingSettings_areSettingsDifferentForLayout(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Z)Z
.end method

.method public static final native KRF_Reader_RenderingSettings_assign(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J
.end method

.method public static final native KRF_Reader_RenderingSettings_getAdditionalLineSpacing(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getAudioCapability(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Z
.end method

.method public static final native KRF_Reader_RenderingSettings_getAudioControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getAudioControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getBackgroundColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)J
.end method

.method public static final native KRF_Reader_RenderingSettings_getBackingScaleFactor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)F
.end method

.method public static final native KRF_Reader_RenderingSettings_getCachePath(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_getColorMode(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getColumnCount(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getDPI(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)F
.end method

.method public static final native KRF_Reader_RenderingSettings_getDefaultFallbackFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_getDefaultFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_getDefaultMonospaceFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_getDefaultSansSerifFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_getFallbackFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_getFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_getFontSize(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)F
.end method

.method public static final native KRF_Reader_RenderingSettings_getHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getHorizontalMargin(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getLetterSpacing(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getLinkColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)J
.end method

.method public static final native KRF_Reader_RenderingSettings_getMaxNumCaches(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getSpaceBetweenColumns(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getSubpixelRendering(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getTextAlignment(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getTextColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)J
.end method

.method public static final native KRF_Reader_RenderingSettings_getVerticalMargin(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getVideoCapability(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Z
.end method

.method public static final native KRF_Reader_RenderingSettings_getVideoControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getVideoControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_getWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I
.end method

.method public static final native KRF_Reader_RenderingSettings_isHDContentPreferred(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Z
.end method

.method public static final native KRF_Reader_RenderingSettings_isPageAlignmentEnforced(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Z
.end method

.method public static final native KRF_Reader_RenderingSettings_isPreloadingEnabled(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Z
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultAdditionalLineSpacing_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultAudioCapability_get()Z
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultAudioControlMinHeight_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultAudioControlMinWidth_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultBackgroundColor_get()J
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultBackingScaleFactor_get()F
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultCachePath_get()Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultCachePath_set(Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultColorMode_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultColumnCount_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultDPI_get()F
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultFallbackFontConfigurationFile_get()Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultFallbackFontConfigurationFile_set(Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultFallbackFontFace_get()Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultFallbackFontFace_set(Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultFontConfigurationFile_get()Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultFontConfigurationFile_set(Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultFontFace_get()Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultFontFace_set(Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultFontSize_get()F
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultHDPreferred_get()Z
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultHeight_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultHorizontalMargin_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultLetterSpacing_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultLinkColor_get()J
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultMaxNumCaches_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultMonospaceFontFace_get()Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultMonospaceFontFace_set(Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultPageAlignementEnforcement_get()Z
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultPreloadingEnabled_get()Z
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultSansSerifFontFace_get()Ljava/lang/String;
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultSansSerifFontFace_set(Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultSpaceBetweenColumns_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultTextAlignment_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultTextColor_get()J
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultVerticalMargin_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultVideoCapability_get()Z
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultVideoControlMinHeight_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultVideoControlMinWidth_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_kDefaultWidth_get()I
.end method

.method public static final native KRF_Reader_RenderingSettings_setAdditionalLineSpacing(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setAudioCapability(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setAudioControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setAudioControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setBackgroundColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setBackingScaleFactor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;F)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setCachePath(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setColorMode(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setColumnCount(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setDPI(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;F)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setDefaultFallbackFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setDefaultFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setDefaultMonospaceFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setDefaultSansSerifFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setFallbackFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setFontSize(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;F)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setHDContentPreferred(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setHorizontalMargin(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setLetterSpacing(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setLinkColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setMaxNumCaches(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setPageAlignmentEnforced(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setPreloadingEnabled(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setSpaceBetweenColumns(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setSubpixelRendering(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setTextAlignment(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setTextColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setVerticalMargin(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setVideoCapability(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setVideoControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setVideoControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_setWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V
.end method

.method public static final native KRF_Reader_RenderingSettings_valueEquals(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
.end method

.method public static final native KRF_Reader_RenderingSettings_valueNotEquals(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
.end method

.method public static final native PairPositionPageType_first_get(JLcom/amazon/kindle/krf/PairPositionPageType;)J
.end method

.method public static final native PairPositionPageType_first_set(JLcom/amazon/kindle/krf/PairPositionPageType;J)V
.end method

.method public static final native PairPositionPageType_second_get(JLcom/amazon/kindle/krf/PairPositionPageType;)I
.end method

.method public static final native PairPositionPageType_second_set(JLcom/amazon/kindle/krf/PairPositionPageType;I)V
.end method

.method public static SwigDirector_KBL_Foundation_ICallback_execute(Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/ICallback;->execute()V

    return-void
.end method

.method public static SwigDirector_KBL_Foundation_ITemplateIntArgCallback_execute(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArgCallback;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArgCallback;->execute(I)V

    return-void
.end method

.method public static SwigDirector_KBL_Foundation_ITemplateLongArgCallback_execute(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateLongArgCallback;->execute(J)V

    return-void
.end method

.method public static SwigDirector_KBL_Foundation_ITemplatePositionArgCallback_execute(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;J)V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionArgCallback;->execute(Lcom/amazon/kindle/krf/KRF/Reader/Position;)V

    return-void
.end method

.method public static SwigDirector_KBL_Foundation_ITemplatePositionShiftDirectionArgsCallback_execute(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;JI)V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    invoke-virtual {p0, v0, p3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;->execute(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V

    return-void
.end method

.method public static SwigDirector_KBL_Foundation_ITemplateStringArgCallback_execute(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateStringArgCallback;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public static SwigDirector_KRF_Reader_IDocumentNavigationListener_postGotoPage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->postGotoPage()V

    return-void
.end method

.method public static SwigDirector_KRF_Reader_IDocumentNavigationListener_postNextPage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->postNextPage()V

    return-void
.end method

.method public static SwigDirector_KRF_Reader_IDocumentNavigationListener_postPreviousPage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->postPreviousPage()V

    return-void
.end method

.method public static SwigDirector_KRF_Reader_IDocumentNavigationListener_preGotoPage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->preGotoPage()V

    return-void
.end method

.method public static SwigDirector_KRF_Reader_IDocumentNavigationListener_preNextPage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->preNextPage()V

    return-void
.end method

.method public static SwigDirector_KRF_Reader_IDocumentNavigationListener_prePreviousPage(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentNavigationListener;->prePreviousPage()V

    return-void
.end method

.method public static SwigDirector_KRF_Reader_IDocumentPageChangedListener_onPageChanged(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->onPageChanged()V

    return-void
.end method

.method public static final native area(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)I
.end method

.method public static final native contains__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
.end method

.method public static final native contains__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;II)Z
.end method

.method public static final native createAvailableFCFontList()J
.end method

.method public static final native createGraphicsContext(Ljava/lang/Object;)J
.end method

.method public static final native createGraphicsContextFromByteBuffer(Ljava/lang/Object;III)J
.end method

.method public static final native createKindleDocumentWithContainers(JLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)J
.end method

.method public static final native delete_JniBitmapGraphicsContext(J)V
.end method

.method public static final native delete_JniByteBufferGraphicsContext(J)V
.end method

.method public static final native delete_KBL_Foundation_Buffer(J)V
.end method

.method public static final native delete_KBL_Foundation_BufferAlterableArrayAdaptor(J)V
.end method

.method public static final native delete_KBL_Foundation_BufferArray(J)V
.end method

.method public static final native delete_KBL_Foundation_BufferArrayAdaptor(J)V
.end method

.method public static final native delete_KBL_Foundation_BufferArrayIterator(J)V
.end method

.method public static final native delete_KBL_Foundation_BufferIdentityTypeConverter(J)V
.end method

.method public static final native delete_KBL_Foundation_BufferTypeConverterTraits(J)V
.end method

.method public static final native delete_KBL_Foundation_BufferVectorArray(J)V
.end method

.method public static final native delete_KBL_Foundation_IBuffer(J)V
.end method

.method public static final native delete_KBL_Foundation_ICallback(J)V
.end method

.method public static final native delete_KBL_Foundation_IInputStream(J)V
.end method

.method public static final native delete_KBL_Foundation_IRandomAccessInputStream(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateActiveAreaArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateBiDirectionalWordIterator(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateBufferAlterableArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateBufferArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateChapterMetadataArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateChapterResourceArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateDictionaryLookupArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateDictionaryResultArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateFontRegistryFontInfoArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateIBufferAlterableArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateIBufferArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateIBufferIterator(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateIChapterResourceAlterableArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateIChapterResourceArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateIChapterResourceVectorArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateIContainerInfoArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateImageIdAlterableArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateImageIdArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateImageIdVectorArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateIntArgCallback(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateIntArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateLinkArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateLongArgCallback(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateNavigationControlNodeTreeIterator(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplatePageElementAlterableArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplatePageElementArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplatePositionArgCallback(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplatePositionShiftDirectionArgsCallback(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateRectangleArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateSpeechBreakerArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateStringArgCallback(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateUStringArray(J)V
.end method

.method public static final native delete_KBL_Foundation_ITemplateWordIterator(J)V
.end method

.method public static final native delete_KBL_Foundation_Rectangle(J)V
.end method

.method public static final native delete_KBL_Foundation_UString(J)V
.end method

.method public static final native delete_KRF_Graphics_Bitmap(J)V
.end method

.method public static final native delete_KRF_Graphics_BitmapBase(J)V
.end method

.method public static final native delete_KRF_Graphics_FontRegistry_FontInfo(J)V
.end method

.method public static final native delete_KRF_Graphics_IBitmap(J)V
.end method

.method public static final native delete_KRF_Graphics_IColor(J)V
.end method

.method public static final native delete_KRF_Graphics_IImageBuffer(J)V
.end method

.method public static final native delete_KRF_Graphics_ImageRenderingHelper(J)V
.end method

.method public static final native delete_KRF_Graphics_NativeGraphicsContext(J)V
.end method

.method public static final native delete_KRF_Graphics_RGBColor(J)V
.end method

.method public static final native delete_KRF_ReaderExtensions_ActiveAreaManager(J)V
.end method

.method public static final native delete_KRF_ReaderExtensions_ExtendedDocumentInfo(J)V
.end method

.method public static final native delete_KRF_ReaderExtensions_HistoryEntry(J)V
.end method

.method public static final native delete_KRF_ReaderExtensions_HistoryManager(J)V
.end method

.method public static final native delete_KRF_ReaderExtensions_IActiveArea(J)V
.end method

.method public static final native delete_KRF_ReaderInternal_MobiDataReader(J)V
.end method

.method public static final native delete_KRF_Reader_DocumentErrorValue(J)V
.end method

.method public static final native delete_KRF_Reader_DocumentSecurityFactory(J)V
.end method

.method public static final native delete_KRF_Reader_IAmazonLink(J)V
.end method

.method public static final native delete_KRF_Reader_IAudioPageElement(J)V
.end method

.method public static final native delete_KRF_Reader_IAudioPlayLink(J)V
.end method

.method public static final native delete_KRF_Reader_IChapterMetadata(J)V
.end method

.method public static final native delete_KRF_Reader_IChapterResource(J)V
.end method

.method public static final native delete_KRF_Reader_IContainerInfo(J)V
.end method

.method public static final native delete_KRF_Reader_IDictionaryLookup(J)V
.end method

.method public static final native delete_KRF_Reader_IDictionaryResult(J)V
.end method

.method public static final native delete_KRF_Reader_IDocumentChapter(J)V
.end method

.method public static final native delete_KRF_Reader_IDocumentIndex(J)V
.end method

.method public static final native delete_KRF_Reader_IDocumentIndexer(J)V
.end method

.method public static final native delete_KRF_Reader_IDocumentIndexerListener(J)V
.end method

.method public static final native delete_KRF_Reader_IDocumentInfo(J)V
.end method

.method public static final native delete_KRF_Reader_IDocumentNavigationListener(J)V
.end method

.method public static final native delete_KRF_Reader_IDocumentPage(J)V
.end method

.method public static final native delete_KRF_Reader_IDocumentPageChangedListener(J)V
.end method

.method public static final native delete_KRF_Reader_IDocumentSecurityBuilder(J)V
.end method

.method public static final native delete_KRF_Reader_IDocumentViewer(J)V
.end method

.method public static final native delete_KRF_Reader_IExternalLink(J)V
.end method

.method public static final native delete_KRF_Reader_IFootnoteLink(J)V
.end method

.method public static final native delete_KRF_Reader_IImagePageElement(J)V
.end method

.method public static final native delete_KRF_Reader_IIndexerEvent(J)V
.end method

.method public static final native delete_KRF_Reader_IInnerNavigationOrientation(J)V
.end method

.method public static final native delete_KRF_Reader_IInternalLink(J)V
.end method

.method public static final native delete_KRF_Reader_IJavascriptCallbacks(J)V
.end method

.method public static final native delete_KRF_Reader_IJavascriptInterpreter(J)V
.end method

.method public static final native delete_KRF_Reader_IJavascriptLink(J)V
.end method

.method public static final native delete_KRF_Reader_IKindleDocument(J)V
.end method

.method public static final native delete_KRF_Reader_IKindleDocumentBuilder(J)V
.end method

.method public static final native delete_KRF_Reader_ILink(J)V
.end method

.method public static final native delete_KRF_Reader_INavigationControl(J)V
.end method

.method public static final native delete_KRF_Reader_INavigationControlNode(J)V
.end method

.method public static final native delete_KRF_Reader_IPageElement(J)V
.end method

.method public static final native delete_KRF_Reader_IPageSnapshotInfo(J)V
.end method

.method public static final native delete_KRF_Reader_IPluginPageElement(J)V
.end method

.method public static final native delete_KRF_Reader_IRenderingSettings(J)V
.end method

.method public static final native delete_KRF_Reader_IResourceProvider(J)V
.end method

.method public static final native delete_KRF_Reader_ISettingsLimitations(J)V
.end method

.method public static final native delete_KRF_Reader_ISpeechBreaker(J)V
.end method

.method public static final native delete_KRF_Reader_ITablePageElement(J)V
.end method

.method public static final native delete_KRF_Reader_ITamperproofData(J)V
.end method

.method public static final native delete_KRF_Reader_ITogglablePageElement(J)V
.end method

.method public static final native delete_KRF_Reader_ITooltipLink(J)V
.end method

.method public static final native delete_KRF_Reader_IVideoPageElement(J)V
.end method

.method public static final native delete_KRF_Reader_IVideoPlayLink(J)V
.end method

.method public static final native delete_KRF_Reader_IWord(J)V
.end method

.method public static final native delete_KRF_Reader_IWordIterator(J)V
.end method

.method public static final native delete_KRF_Reader_IWordPageElement(J)V
.end method

.method public static final native delete_KRF_Reader_IZoomableLink(J)V
.end method

.method public static final native delete_KRF_Reader_IndexerProgressEvent(J)V
.end method

.method public static final native delete_KRF_Reader_IntValue(J)V
.end method

.method public static final native delete_KRF_Reader_KindleCacheFactory(J)V
.end method

.method public static final native delete_KRF_Reader_KindleDocumentFactory(J)V
.end method

.method public static final native delete_KRF_Reader_PageSnapshotInfo(J)V
.end method

.method public static final native delete_KRF_Reader_Position(J)V
.end method

.method public static final native delete_KRF_Reader_RenderingSettings(J)V
.end method

.method public static final native delete_KRF_Reader_RenderingSettingsHelper(J)V
.end method

.method public static final native delete_PairPositionPageType(J)V
.end method

.method public static final native delete_jniPixelGraphicsContext(J)V
.end method

.method public static final native getDistance__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;II)J
.end method

.method public static final native getDistance__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;II)J
.end method

.method public static final native intersect(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
.end method

.method public static final native isValidFontFace(Ljava/lang/String;)Z
.end method

.method public static final native jniPixelGraphicsContext_SWIGUpcast(J)J
.end method

.method public static final native kInvalidPositionId_get()J
.end method

.method public static final native kInvalidSpan_get()F
.end method

.method public static final native kKRFBuildVersion_get()Ljava/lang/String;
.end method

.method public static final native kKRFBuildVersion_set(Ljava/lang/String;)V
.end method

.method public static final native loadCustomFont(Ljava/lang/String;)Z
.end method

.method public static final native merge(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)V
.end method

.method public static final native new_JniBitmapGraphicsContext(JLjava/lang/Object;)J
.end method

.method public static final native new_JniByteBufferGraphicsContext(JLjava/lang/Object;III)J
.end method

.method public static final native new_KBL_Foundation_BufferAlterableArrayAdaptor(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferAlterableArray;)J
.end method

.method public static final native new_KBL_Foundation_BufferArray()J
.end method

.method public static final native new_KBL_Foundation_BufferArrayAdaptor(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferArray;)J
.end method

.method public static final native new_KBL_Foundation_BufferArrayIterator(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;)J
.end method

.method public static final native new_KBL_Foundation_BufferIdentityTypeConverter()J
.end method

.method public static final native new_KBL_Foundation_BufferTypeConverterTraits()J
.end method

.method public static final native new_KBL_Foundation_BufferVectorArray()J
.end method

.method public static final native new_KBL_Foundation_Buffer__SWIG_0()J
.end method

.method public static final native new_KBL_Foundation_Buffer__SWIG_1([BJZ)J
.end method

.method public static final native new_KBL_Foundation_Buffer__SWIG_2([BJ)J
.end method

.method public static final native new_KBL_Foundation_Buffer__SWIG_3(Ljava/lang/String;)J
.end method

.method public static final native new_KBL_Foundation_ICallback()J
.end method

.method public static final native new_KBL_Foundation_ITemplateIChapterResourceVectorArray()J
.end method

.method public static final native new_KBL_Foundation_ITemplateImageIdVectorArray()J
.end method

.method public static final native new_KBL_Foundation_ITemplateIntArgCallback()J
.end method

.method public static final native new_KBL_Foundation_ITemplateLongArgCallback()J
.end method

.method public static final native new_KBL_Foundation_ITemplatePositionArgCallback()J
.end method

.method public static final native new_KBL_Foundation_ITemplatePositionShiftDirectionArgsCallback()J
.end method

.method public static final native new_KBL_Foundation_ITemplateStringArgCallback()J
.end method

.method public static final native new_KBL_Foundation_Rectangle__SWIG_0(IIII)J
.end method

.method public static final native new_KBL_Foundation_Rectangle__SWIG_1()J
.end method

.method public static final native new_KBL_Foundation_UString__SWIG_0()J
.end method

.method public static final native new_KBL_Foundation_UString__SWIG_1(Ljava/lang/String;)J
.end method

.method public static final native new_KBL_Foundation_UString__SWIG_2(Ljava/lang/String;J)J
.end method

.method public static final native new_KBL_Foundation_UString__SWIG_3(JLcom/amazon/kindle/krf/KBL/Foundation/UString;)J
.end method

.method public static final native new_KRF_Graphics_Bitmap(II)J
.end method

.method public static final native new_KRF_Graphics_FontRegistry_FontInfo()J
.end method

.method public static final native new_KRF_Graphics_RGBColor__SWIG_0(SSS)J
.end method

.method public static final native new_KRF_Graphics_RGBColor__SWIG_1(JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)J
.end method

.method public static final native new_KRF_ReaderExtensions_ActiveAreaManager__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native new_KRF_ReaderExtensions_ActiveAreaManager__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;)J
.end method

.method public static final native new_KRF_ReaderExtensions_ExtendedDocumentInfo(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J
.end method

.method public static final native new_KRF_ReaderExtensions_HistoryEntry(JLcom/amazon/kindle/krf/KRF/Reader/IPageSnapshotInfo;)J
.end method

.method public static final native new_KRF_ReaderExtensions_HistoryManager(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)J
.end method

.method public static final native new_KRF_Reader_DocumentErrorValue()J
.end method

.method public static final native new_KRF_Reader_DocumentSecurityFactory()J
.end method

.method public static final native new_KRF_Reader_IDocumentNavigationListener()J
.end method

.method public static final native new_KRF_Reader_IDocumentPageChangedListener()J
.end method

.method public static final native new_KRF_Reader_IndexerProgressEvent(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;I)J
.end method

.method public static final native new_KRF_Reader_IntValue(I)J
.end method

.method public static final native new_KRF_Reader_KindleCacheFactory()J
.end method

.method public static final native new_KRF_Reader_KindleDocumentFactory()J
.end method

.method public static final native new_KRF_Reader_PageSnapshotInfo(JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)J
.end method

.method public static final native new_KRF_Reader_Position__SWIG_0()J
.end method

.method public static final native new_KRF_Reader_Position__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/Position;)J
.end method

.method public static final native new_KRF_Reader_RenderingSettingsHelper()J
.end method

.method public static final native new_KRF_Reader_RenderingSettings__SWIG_0()J
.end method

.method public static final native new_KRF_Reader_RenderingSettings__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J
.end method

.method public static final native new_PairPositionPageType()J
.end method

.method public static final native new_jniPixelGraphicsContext(JIII)J
.end method

.method public static final native registerCustomFontFromMemory(JJLjava/lang/String;)Z
.end method

.method public static final native resetFontCache()V
.end method

.method public static final native setFontconfigConfigFile__SWIG_0(Ljava/lang/String;Z)Z
.end method

.method public static final native setFontconfigConfigFile__SWIG_1(Ljava/lang/String;)Z
.end method

.method private static final native swig_module_init()V
.end method

.method public static final native unloadCustomFont(Ljava/lang/String;)Z
.end method

.method public static final native unregisterCustomFontForName(Ljava/lang/String;)Z
.end method

.method public static final native updateFontconfigCache()Z
.end method
