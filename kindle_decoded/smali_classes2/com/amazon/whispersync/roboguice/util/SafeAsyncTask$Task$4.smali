.class Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$4;
.super Ljava/lang/Object;
.source "SafeAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->doThrowable(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;Ljava/lang/Throwable;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$4;->this$0:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;

    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$4;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$4;->this$0:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;

    iget-object v0, v0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->parent:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$4;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;->onThrowable(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
