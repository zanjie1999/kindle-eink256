.class final Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;
.super Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private done:Ljava/util/concurrent/CountDownLatch;

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;

.field waiting:Z


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;)V
    .locals 1

    .line 40
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;

    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;-><init>()V

    .line 45
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->result:Ljava/lang/Object;

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->result:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->dispatchOnLoadComplete(Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    return-void
.end method
