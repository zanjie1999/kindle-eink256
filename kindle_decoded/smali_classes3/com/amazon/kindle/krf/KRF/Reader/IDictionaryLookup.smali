.class public Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public createLookupResults(Ljava/lang/String;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateDictionaryResultArray;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDictionaryLookup_createLookupResults(JLcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateDictionaryResultArray;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateDictionaryResultArray;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_IDictionaryLookup(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->delete()V

    return-void
.end method

.method public getSourceLanguage()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDictionaryLookup_getSourceLanguage(JLcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetLanguage()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDictionaryLookup_getTargetLanguage(JLcom/amazon/kindle/krf/KRF/Reader/IDictionaryLookup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
