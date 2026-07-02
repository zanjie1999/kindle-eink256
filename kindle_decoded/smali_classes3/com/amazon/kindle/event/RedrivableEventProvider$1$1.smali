.class Lcom/amazon/kindle/event/RedrivableEventProvider$1$1;
.super Ljava/lang/Object;
.source "RedrivableEventProvider.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/event/RedrivableEventProvider$1;->run()V
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
.field final synthetic this$1:Lcom/amazon/kindle/event/RedrivableEventProvider$1;

.field final synthetic val$eventToRepublish:Lcom/amazon/kindle/event/Event;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/event/RedrivableEventProvider$1;Lcom/amazon/kindle/event/Event;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1$1;->this$1:Lcom/amazon/kindle/event/RedrivableEventProvider$1;

    iput-object p2, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1$1;->val$eventToRepublish:Lcom/amazon/kindle/event/Event;

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

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kindle/event/RedrivableEventProvider$1$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1$1;->this$1:Lcom/amazon/kindle/event/RedrivableEventProvider$1;

    iget-object v0, v0, Lcom/amazon/kindle/event/RedrivableEventProvider$1;->val$handler:Lcom/amazon/kindle/event/IEventHandler;

    iget-object v1, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1$1;->val$eventToRepublish:Lcom/amazon/kindle/event/Event;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/event/IEventHandler;->handleEvent(Lcom/amazon/kindle/event/Event;)V

    const/4 v0, 0x0

    return-object v0
.end method
