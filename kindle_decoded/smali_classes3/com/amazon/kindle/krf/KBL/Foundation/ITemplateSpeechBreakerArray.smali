.class public Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KBL_Foundation_ITemplateSpeechBreakerArray(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->delete()V

    return-void
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateSpeechBreakerArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItem(J)Lcom/amazon/kindle/krf/KRF/Reader/ISpeechBreaker;
    .locals 3

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/ISpeechBreaker;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateSpeechBreakerArray_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateSpeechBreakerArray;J)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KRF/Reader/ISpeechBreaker;-><init>(JZ)V

    return-object v0
.end method
