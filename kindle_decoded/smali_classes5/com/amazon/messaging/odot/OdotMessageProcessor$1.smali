.class Lcom/amazon/messaging/odot/OdotMessageProcessor$1;
.super Ljava/lang/Object;
.source "OdotMessageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/messaging/odot/OdotMessageProcessor;->processOdotMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/messaging/odot/OdotMessageProcessor;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/amazon/messaging/odot/OdotMessageProcessor;Landroid/os/Handler;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;->this$0:Lcom/amazon/messaging/odot/OdotMessageProcessor;

    iput-object p2, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;->this$0:Lcom/amazon/messaging/odot/OdotMessageProcessor;

    invoke-static {v0}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->access$000(Lcom/amazon/messaging/odot/OdotMessageProcessor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 116
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;->this$0:Lcom/amazon/messaging/odot/OdotMessageProcessor;

    invoke-static {v2}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->access$100(Lcom/amazon/messaging/odot/OdotMessageProcessor;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;->this$0:Lcom/amazon/messaging/odot/OdotMessageProcessor;

    invoke-static {v2}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->access$200(Lcom/amazon/messaging/odot/OdotMessageProcessor;)Z

    move-result v0

    .line 121
    iget-object v2, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;->this$0:Lcom/amazon/messaging/odot/OdotMessageProcessor;

    invoke-static {v2}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->access$300(Lcom/amazon/messaging/odot/OdotMessageProcessor;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    if-eqz v0, :cond_3

    .line 126
    :goto_1
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;->this$0:Lcom/amazon/messaging/odot/OdotMessageProcessor;

    invoke-static {v0}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->access$000(Lcom/amazon/messaging/odot/OdotMessageProcessor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 123
    :try_start_1
    invoke-static {}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "processOdotMessages processMessages triggered an exception"

    invoke-static {v3, v4, v2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;->this$0:Lcom/amazon/messaging/odot/OdotMessageProcessor;

    invoke-static {v0}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->access$000(Lcom/amazon/messaging/odot/OdotMessageProcessor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    :cond_2
    throw v2

    .line 131
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/messaging/odot/OdotMessageProcessor$1;->this$0:Lcom/amazon/messaging/odot/OdotMessageProcessor;

    invoke-static {v1}, Lcom/amazon/messaging/odot/OdotMessageProcessor;->access$500(Lcom/amazon/messaging/odot/OdotMessageProcessor;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
