.class public Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_ITamperproofData(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->delete()V

    return-void
.end method

.method public getTamperproofKeys()Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITamperproofData_getTamperproofKeys(JLcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;-><init>(JZ)V

    return-object v0
.end method

.method public getTamperproofValues()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ITamperproofData_getTamperproofValues(JLcom/amazon/kindle/krf/KRF/Reader/ITamperproofData;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;-><init>(JZ)V

    return-object v0
.end method
