.class public Lcom/amazon/whispersync/dcp/framework/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# instance fields
.field private mStartTime:Ljava/lang/Long;

.field private mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/SystemWrapper;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/StopWatch;->mStartTime:Ljava/lang/Long;

    .line 11
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/StopWatch;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    return-void
.end method


# virtual methods
.method public getElapsedTime()J
    .locals 4

    .line 46
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/StopWatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/StopWatch;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/StopWatch;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stop watch is not runnnig"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRunning()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/StopWatch;->mStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public restart()V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/StopWatch;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/StopWatch;->mStartTime:Ljava/lang/Long;

    return-void
.end method

.method public start()V
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/StopWatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/StopWatch;->mSystem:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/StopWatch;->mStartTime:Ljava/lang/Long;

    return-void
.end method

.method public start(J)V
    .locals 0

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/StopWatch;->mStartTime:Ljava/lang/Long;

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/StopWatch;->mStartTime:Ljava/lang/Long;

    return-void
.end method
