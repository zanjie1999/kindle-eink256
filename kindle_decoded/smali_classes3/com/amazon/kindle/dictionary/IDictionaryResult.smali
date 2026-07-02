.class public Lcom/amazon/kindle/dictionary/IDictionaryResult;
.super Ljava/lang/Object;
.source "IDictionaryResult.java"


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/amazon/kindle/dictionary/IDictionaryResult;->handle:J

    return-void
.end method

.method private native delete()V
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 5

    monitor-enter p0

    .line 50
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/dictionary/IDictionaryResult;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->delete()V

    .line 52
    iput-wide v2, p0, Lcom/amazon/kindle/dictionary/IDictionaryResult;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->dispose()V

    return-void
.end method

.method public synchronized native getDictionaryWord()Ljava/lang/String;
.end method

.method public synchronized native getFirstPositionId()J
.end method

.method public synchronized native getLastPositionId()J
.end method
