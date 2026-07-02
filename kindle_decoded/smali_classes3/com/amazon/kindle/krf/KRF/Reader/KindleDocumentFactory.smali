.class public Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_Reader_KindleDocumentFactory()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public addKindleDocumentBuilder(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocumentBuilder;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocumentBuilder;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocumentBuilder;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_KindleDocumentFactory_addKindleDocumentBuilder(JLcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;JLcom/amazon/kindle/krf/KRF/Reader/IKindleDocumentBuilder;)V

    return-void
.end method

.method public createDocumentInfo(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;
    .locals 3

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_KindleDocumentFactory_createDocumentInfo__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public createDocumentInfo(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;
    .locals 8

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCPtr:J

    invoke-static {p3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_KindleDocumentFactory_createDocumentInfo__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public createKindleDocument(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;
    .locals 3

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_KindleDocumentFactory_createKindleDocument__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public createKindleDocument(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;
    .locals 8

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCPtr:J

    invoke-static {p3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_KindleDocumentFactory_createKindleDocument__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_KindleDocumentFactory(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->delete()V

    return-void
.end method
