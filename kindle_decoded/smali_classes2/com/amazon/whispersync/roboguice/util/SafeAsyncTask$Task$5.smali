.class Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$5;
.super Ljava/lang/Object;
.source "SafeAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->doFinally()V
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


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$5;->this$0:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$5;->this$0:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;

    iget-object v0, v0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->parent:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;

    invoke-virtual {v0}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;->onFinally()V

    const/4 v0, 0x0

    return-object v0
.end method
