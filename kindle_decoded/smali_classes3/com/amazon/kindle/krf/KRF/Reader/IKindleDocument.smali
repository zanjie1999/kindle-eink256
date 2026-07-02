.class public Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;
.super Lcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public addSpanToPositionId(Lcom/amazon/kindle/krf/KRF/Reader/Position;F)Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 8

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-static/range {v1 .. v7}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_addSpanToPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/Position;F)J

    move-result-wide p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public attachResourceContainer(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_attachResourceContainer__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public attachResourceContainer(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_attachResourceContainer__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)Z

    move-result p1

    return p1
.end method

.method public createAudioStream(Ljava/lang/String;)Lcom/amazon/kindle/krf/KBL/Foundation/IRandomAccessInputStream;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createAudioStream(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/IRandomAccessInputStream;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/IRandomAccessInputStream;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createChapter(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JZ)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentChapter;
    .locals 9

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createChapter(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JZ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentChapter;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentChapter;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public createDictionaryLookups()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateDictionaryLookupArray;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createDictionaryLookups(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateDictionaryLookupArray;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateDictionaryLookupArray;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public createImage(Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createImage(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createIndexer()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndexer;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createIndexer(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndexer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndexer;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public createNavigationControl()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createNavigationControl(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public createResourcePathForResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createResourcePathForResource(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createResourceStream(Ljava/lang/String;)Lcom/amazon/kindle/krf/KBL/Foundation/IRandomAccessInputStream;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createResourceStream(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/IRandomAccessInputStream;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/IRandomAccessInputStream;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createUriForMediaStream(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createUriForMediaStream(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createVideoStream(Ljava/lang/String;)Lcom/amazon/kindle/krf/KBL/Foundation/IRandomAccessInputStream;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createVideoStream(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/IRandomAccessInputStream;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/IRandomAccessInputStream;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createViewer__SWIG_5(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 9

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createViewer__SWIG_4(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;Z)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 10

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createViewer__SWIG_3(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IDocumentIndex;JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;Z)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createViewer__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 9

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createViewer__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public createViewer(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;Z)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;
    .locals 10

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createViewer__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IJavascriptCallbacks;Z)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public createWordIterator()Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createWordIterator__SWIG_2(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public createWordIterator(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createWordIterator__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createWordIterator(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;
    .locals 7

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_createWordIterator__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;JLcom/amazon/kindle/krf/KRF/Reader/Position;I)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IWordIterator;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_IKindleDocument(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->delete()V

    return-void
.end method

.method public getContainersForAssetId(Ljava/lang/String;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIContainerInfoArray;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_getContainersForAssetId(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIContainerInfoArray;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIContainerInfoArray;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_getDocumentInfo(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;-><init>(JZ)V

    return-object v0
.end method

.method public getPageCount()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_getPageCount(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResourceType(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_getResourceType(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getStartReadingPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_getStartReadingPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public isAssetAvailable(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_isAssetAvailable(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isContainerAttached(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_isContainerAttached(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public purgeAllMediaStreamUri()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_purgeAllMediaStreamUri(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;)V

    return-void
.end method

.method public purgeMediaStreamUri(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IKindleDocument_purgeMediaStreamUri(JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
