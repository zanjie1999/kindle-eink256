.class Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$2;
.super Ljava/lang/Object;
.source "SafeAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->doSuccess(Ljava/lang/Object;)V
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

.field final synthetic val$r:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;Ljava/lang/Object;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$2;->this$0:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;

    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$2;->val$r:Ljava/lang/Object;

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

    .line 210
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$2;->this$0:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;

    iget-object v0, v0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task;->parent:Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask$Task$2;->val$r:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/roboguice/util/SafeAsyncTask;->onSuccess(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
