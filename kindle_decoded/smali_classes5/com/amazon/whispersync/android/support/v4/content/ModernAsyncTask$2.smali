.class Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$2;
.super Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$WorkerRunnable;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$2;->this$0:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$WorkerRunnable;-><init>(Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$2;->this$0:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;

    invoke-static {v0}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;->access$200(Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    .line 122
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$2;->this$0:Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;->access$300(Lcom/amazon/whispersync/android/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
