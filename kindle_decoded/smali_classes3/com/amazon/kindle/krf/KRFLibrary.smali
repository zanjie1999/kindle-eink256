.class public final Lcom/amazon/kindle/krf/KRFLibrary;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/amazon/kindle/jni/KindleReaderJNI;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static area(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)I
    .locals 2

    invoke-static {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->area(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)I

    move-result p0

    return p0
.end method

.method public static contains(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;II)Z
    .locals 2

    invoke-static {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->contains__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;II)Z

    move-result p0

    return p0
.end method

.method public static contains(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
    .locals 6

    invoke-static {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->contains__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z

    move-result p0

    return p0
.end method

.method public static createAvailableFCFontList()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateFontRegistryFontInfoArray;
    .locals 5

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->createAvailableFCFontList()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateFontRegistryFontInfoArray;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateFontRegistryFontInfoArray;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static createGraphicsContext(Ljava/lang/Object;)Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;
    .locals 4

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->createGraphicsContext(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static createGraphicsContextFromByteBuffer(Ljava/lang/Object;III)Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->createGraphicsContextFromByteBuffer(Ljava/lang/Object;III)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public static createKindleDocumentWithContainers(JLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;
    .locals 1

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-static/range {p0 .. p6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->createKindleDocumentWithContainers(JLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;-><init>(JZ)V

    return-object v0
.end method

.method public static getCOVERART_MIN_SIZE()J
    .locals 2

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->COVERART_MIN_SIZE_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDistance(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;II)J
    .locals 2

    invoke-static {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->getDistance__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getDistance(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;II)J
    .locals 2

    invoke-static {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->getDistance__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getKInvalidPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 5

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->kInvalidPositionId_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static getKInvalidSpan()F
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->kInvalidSpan_get()F

    move-result v0

    return v0
.end method

.method public static getKKRFBuildVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->kKRFBuildVersion_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intersect(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
    .locals 6

    invoke-static {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->intersect(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z

    move-result p0

    return p0
.end method

.method public static isValidFontFace(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->isValidFontFace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadCustomFont(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->loadCustomFont(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static merge(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)V
    .locals 6

    invoke-static {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->merge(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)V

    return-void
.end method

.method public static registerCustomFontFromMemory(Lcom/amazon/kindle/krf/SWIGTYPE_p_void;JLjava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/amazon/kindle/krf/SWIGTYPE_p_void;->getCPtr(Lcom/amazon/kindle/krf/SWIGTYPE_p_void;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->registerCustomFontFromMemory(JJLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static resetFontCache()V
    .locals 0

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->resetFontCache()V

    return-void
.end method

.method public static setFontconfigConfigFile(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->setFontconfigConfigFile__SWIG_1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setFontconfigConfigFile(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->setFontconfigConfigFile__SWIG_0(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setKKRFBuildVersion(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->kKRFBuildVersion_set(Ljava/lang/String;)V

    return-void
.end method

.method public static unloadCustomFont(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->unloadCustomFont(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static unregisterCustomFontForName(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->unregisterCustomFontForName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static updateFontconfigCache()Z
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->updateFontconfigCache()Z

    move-result v0

    return v0
.end method
