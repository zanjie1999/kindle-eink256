.class Lcom/amazon/kindle/services/events/TopicMessageQueue$1;
.super Ljava/lang/Object;
.source "TopicMessageQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/events/TopicMessageQueue;->handleEventAsync(Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/events/TopicMessageQueue;

.field final synthetic val$event:Ljava/lang/Object;

.field final synthetic val$handler:Lcom/amazon/kindle/services/events/BaseEventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/events/TopicMessageQueue;Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue$1;->this$0:Lcom/amazon/kindle/services/events/TopicMessageQueue;

    iput-object p2, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue$1;->val$handler:Lcom/amazon/kindle/services/events/BaseEventHandler;

    iput-object p3, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue$1;->val$handler:Lcom/amazon/kindle/services/events/BaseEventHandler;

    iget-object v1, p0, Lcom/amazon/kindle/services/events/TopicMessageQueue$1;->val$event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/services/events/BaseEventHandler;->handle(Ljava/lang/Object;)V

    return-void
.end method
