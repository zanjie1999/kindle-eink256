.class public Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_Reader_KindleCacheFactory()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_KindleCacheFactory(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->delete()V

    return-void
.end method

.method public getPageStartingWithCache(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;J)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
    .locals 9

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->swigCPtr:J

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-static/range {v0 .. v8}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_KindleCacheFactory_getPageStartingWithCache__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;Ljava/lang/String;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;J)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public getPageStartingWithCache(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;
    .locals 10

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->swigCPtr:J

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v4

    invoke-static {p3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_KindleCacheFactory_getPageStartingWithCache__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;Ljava/lang/String;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method
