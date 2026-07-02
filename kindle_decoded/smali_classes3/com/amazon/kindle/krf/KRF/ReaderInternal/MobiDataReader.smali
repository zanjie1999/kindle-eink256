.class public Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->swigCPtr:J

    return-void
.end method

.method public static createMobiDataReader(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;
    .locals 3

    invoke-static {p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderInternal_MobiDataReader_createMobiDataReader__SWIG_1(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;-><init>(JZ)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static createMobiDataReader(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;
    .locals 2

    invoke-static {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderInternal_MobiDataReader_createMobiDataReader__SWIG_0(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferIterator;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_ReaderInternal_MobiDataReader(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->delete()V

    return-void
.end method

.method public getPrimaryPayloadSize()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_ReaderInternal_MobiDataReader_getPrimaryPayloadSize(JLcom/amazon/kindle/krf/KRF/ReaderInternal/MobiDataReader;)J

    move-result-wide v0

    return-wide v0
.end method
