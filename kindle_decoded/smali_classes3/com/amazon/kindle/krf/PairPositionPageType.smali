.class public Lcom/amazon/kindle/krf/PairPositionPageType;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_PairPositionPageType()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/PairPositionPageType;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/PairPositionPageType;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_PairPositionPageType(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/PairPositionPageType;->delete()V

    return-void
.end method

.method public getFirst()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->PairPositionPageType_first_get(JLcom/amazon/kindle/krf/PairPositionPageType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecond()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->PairPositionPageType_second_get(JLcom/amazon/kindle/krf/PairPositionPageType;)I

    move-result v0

    return v0
.end method

.method public setFirst(J)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->PairPositionPageType_first_set(JLcom/amazon/kindle/krf/PairPositionPageType;J)V

    return-void
.end method

.method public setSecond(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/PairPositionPageType;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->PairPositionPageType_second_set(JLcom/amazon/kindle/krf/PairPositionPageType;I)V

    return-void
.end method
