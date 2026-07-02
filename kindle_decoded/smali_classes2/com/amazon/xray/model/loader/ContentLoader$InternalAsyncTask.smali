.class public Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;
.super Landroid/os/AsyncTask;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/loader/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InternalAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private final loader:Lcom/amazon/xray/model/loader/ContentLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/xray/model/loader/ContentLoader<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final task:Lcom/amazon/xray/model/loader/ContentLoader$Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/xray/model/loader/ContentLoader;Lcom/amazon/xray/model/loader/ContentLoader$Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/model/loader/ContentLoader<",
            "TResult;>;",
            "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
            "TResult;>;)V"
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    .line 275
    iput-object p2, p0, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;->task:Lcom/amazon/xray/model/loader/ContentLoader$Task;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 261
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 284
    :try_start_0
    iget-object p1, p0, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;->task:Lcom/amazon/xray/model/loader/ContentLoader$Task;

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->doInBackground()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-static {}, Lcom/amazon/xray/model/loader/ContentLoader;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception in content loader"

    invoke-static {v2, v3, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 290
    :goto_0
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-static {}, Lcom/amazon/xray/model/loader/ContentLoader;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loader task took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 305
    iget-object p1, p0, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;->task:Lcom/amazon/xray/model/loader/ContentLoader$Task;

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->cancel()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/amazon/xray/model/loader/ContentLoader$InternalAsyncTask;->loader:Lcom/amazon/xray/model/loader/ContentLoader;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Lcom/amazon/xray/model/loader/ContentLoader;->processResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
