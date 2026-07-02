.class public abstract Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;
.super Lcom/amazon/whispersync/android/support/v4/content/Loader;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/android/support/v4/content/Loader<",
        "TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/android/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    .line 88
    iput-wide v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    return-void
.end method


# virtual methods
.method public cancelLoad()Z
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-boolean v1, v0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 144
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    :cond_0
    iput-object v2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    return v1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-boolean v1, v0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 153
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iput-object v2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    return v1

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 162
    :cond_3
    iput-object v2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    return v0

    :cond_4
    return v1
.end method

.method dispatchOnCancelled(Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 201
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    if-ne p2, p1, :cond_0

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 205
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    :cond_0
    return-void
.end method

.method dispatchOnLoadComplete(Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eq v0, p1, :cond_0

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->isAbandoned()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    .line 219
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 221
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 267
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    const-string p4, " waiting="

    if-eqz p2, :cond_0

    .line 268
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean p2, p2, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 271
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz p2, :cond_1

    .line 272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 273
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean p2, p2, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 275
    :cond_1
    iget-wide v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    .line 276
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    iget-wide p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string p1, " mLastLoadCompleteTime="

    .line 278
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-wide p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lcom/amazon/whispersync/android/support/v4/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 281
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method executePendingTask()V
    .locals 6

    .line 177
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    :cond_0
    iget-wide v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 184
    iget-wide v2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 189
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 190
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-wide v2, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;

    :cond_2
    return-void
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->onForceLoad()V

    .line 112
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->cancelLoad()Z

    .line 113
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;-><init>(Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;)V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 115
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 3

    .line 103
    iput-wide p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 105
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->mTask:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_0

    .line 257
    :try_start_0
    invoke-static {v0}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->access$000(Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
