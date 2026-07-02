.class public Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;
.super Ljava/lang/Object;
.source "GLThreadChecker.java"


# instance fields
.field private GLThreadID:I

.field private mHasEglContext:Z

.field private mutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mHasEglContext:Z

    return-void
.end method

.method private isGLThreadSetInternal()Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public checkGLThread()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR, The current thread is NOT the GL Thread ! - CurrentThreadID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " GLThreadID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The current thread is NOT the GL Thread ! - CurrentThreadID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " GLThreadID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkGLThreadNotSet()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSetInternal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR, The GL Thread is already set ! GLThreadID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The GL Thread is already set ! GLThreadID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkGLThreadSet()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSetInternal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR, The GL Thread is not set ! GLThreadID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The GL Thread is not set ! GLThreadID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkHasGLContext()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->hasGLContext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR, There is no GL context yet ! - CurrentThreadID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " GLThreadID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no GL context yet ! - CurrentThreadID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " GLThreadID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkNotGLThread()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR, The current thread IS the GL Thread ! - CurrentThreadID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " GLThreadID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The current thread IS the GL Thread ! - CurrentThreadID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " GLThreadID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasGLContext()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mHasEglContext:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isGLThread()Z
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSetInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGLThreadSet()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSetInternal()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetGLContext()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 53
    :try_start_0
    iput-boolean v1, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mHasEglContext:Z

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetGLThread()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 34
    :try_start_0
    iput v1, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mHasEglContext:Z

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGLContext()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 44
    :try_start_0
    iput-boolean v1, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mHasEglContext:Z

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGLThread()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->GLThreadID:I

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
