.class Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueWorker;
.super Ljava/lang/Object;
.source "AndroidTutorialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/AndroidTutorialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueWorker;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueWorker;-><init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 258
    :catch_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$100()Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueWorker;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$200(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;

    .line 260
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$100()Ljava/lang/String;

    const-string v1, "Event received: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->event:Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 261
    iget-boolean v1, v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->activityForegroundCheck:Z

    if-nez v1, :cond_0

    .line 262
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skipping activity foreground check, processing tutorial event."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueWorker;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-static {v1, v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$300(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueWorker;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-static {v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$400(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueWorker;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-static {v1, v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$300(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity not in foreground, cannot process tutorial event."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
