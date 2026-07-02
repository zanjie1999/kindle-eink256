.class Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;
.super Ljava/lang/Object;
.source "AndroidTutorialManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/AndroidTutorialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerObserver"
.end annotation


# instance fields
.field private activityForegroundCheck:Z

.field final synthetic this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

.field private topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Ljava/lang/String;Z)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;->topic:Ljava/lang/String;

    .line 909
    iput-boolean p3, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;->activityForegroundCheck:Z

    return-void
.end method


# virtual methods
.method public notify(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 4

    .line 914
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$700()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 915
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "UTM is disabled. Ignoring trigger event: %s"

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->trace(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    return-void

    .line 918
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$100()Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Adding event %s to queue"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 919
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$200(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;->topic:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$TriggerObserver;->activityForegroundCheck:Z

    invoke-direct {v1, v2, p1, v3}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
