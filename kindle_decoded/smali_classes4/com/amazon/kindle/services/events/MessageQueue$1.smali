.class Lcom/amazon/kindle/services/events/MessageQueue$1;
.super Ljava/lang/Object;
.source "MessageQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/events/MessageQueue;->handleEventAsync(Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/services/events/MessageQueue;

.field final synthetic val$event:Ljava/lang/Object;

.field final synthetic val$handler:Lcom/amazon/kindle/services/events/BaseEventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/events/MessageQueue;Lcom/amazon/kindle/services/events/BaseEventHandler;Ljava/lang/Object;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/kindle/services/events/MessageQueue$1;->this$0:Lcom/amazon/kindle/services/events/MessageQueue;

    iput-object p2, p0, Lcom/amazon/kindle/services/events/MessageQueue$1;->val$handler:Lcom/amazon/kindle/services/events/BaseEventHandler;

    iput-object p3, p0, Lcom/amazon/kindle/services/events/MessageQueue$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/services/events/MessageQueue$1;->val$handler:Lcom/amazon/kindle/services/events/BaseEventHandler;

    iget-object v1, p0, Lcom/amazon/kindle/services/events/MessageQueue$1;->val$event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/services/events/BaseEventHandler;->handle(Ljava/lang/Object;)V

    return-void
.end method
