.class Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;
.super Ljava/lang/Object;
.source "AndroidTutorialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->initSubmitOnMainThread(Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

.field final synthetic val$doneSignal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$entry:Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;->val$entry:Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;->val$doneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;->val$entry:Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;

    iget-object v2, v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->topic:Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->event:Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$500(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    .line 288
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;->val$entry:Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;

    iget-object v2, v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->topic:Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->event:Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$600(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;->val$entry:Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;

    iget-object v1, v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->topic:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$QueueEntry;->event:Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->attemptLaunchLegacyJIT(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$1;->val$doneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
