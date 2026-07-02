.class Lcom/amazon/kindle/event/BaseEventProvider$1;
.super Ljava/lang/Object;
.source "BaseEventProvider.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/event/BaseEventProvider;->publishEvent(Lcom/amazon/kindle/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/event/BaseEventProvider;

.field final synthetic val$event:Lcom/amazon/kindle/event/Event;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/event/BaseEventProvider;Lcom/amazon/kindle/event/Event;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazon/kindle/event/BaseEventProvider$1;->this$0:Lcom/amazon/kindle/event/BaseEventProvider;

    iput-object p2, p0, Lcom/amazon/kindle/event/BaseEventProvider$1;->val$event:Lcom/amazon/kindle/event/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kindle/event/BaseEventProvider$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/event/BaseEventProvider$1;->this$0:Lcom/amazon/kindle/event/BaseEventProvider;

    iget-object v1, p0, Lcom/amazon/kindle/event/BaseEventProvider$1;->val$event:Lcom/amazon/kindle/event/Event;

    invoke-static {v0, v1}, Lcom/amazon/kindle/event/BaseEventProvider;->access$000(Lcom/amazon/kindle/event/BaseEventProvider;Lcom/amazon/kindle/event/Event;)V

    const/4 v0, 0x0

    return-object v0
.end method
