.class Lcom/amazon/kindle/event/RedrivableEventProvider$1;
.super Ljava/lang/Object;
.source "RedrivableEventProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/event/RedrivableEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/event/RedrivableEventProvider;

.field final synthetic val$handler:Lcom/amazon/kindle/event/IEventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/event/RedrivableEventProvider;Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1;->this$0:Lcom/amazon/kindle/event/RedrivableEventProvider;

    iput-object p2, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1;->val$handler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1;->this$0:Lcom/amazon/kindle/event/RedrivableEventProvider;

    .line 43
    invoke-static {v0}, Lcom/amazon/kindle/event/RedrivableEventProvider;->access$000(Lcom/amazon/kindle/event/RedrivableEventProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/event/EventProviderDB;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/event/EventProviderDB;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1;->val$handler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1;->this$0:Lcom/amazon/kindle/event/RedrivableEventProvider;

    invoke-virtual {v2}, Lcom/amazon/kindle/event/RedrivableEventProvider;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/event/EventProviderDB;->getAllEvents(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/event/Event;

    .line 47
    iget-object v3, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1;->val$handler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-interface {v3}, Lcom/amazon/kindle/event/IEventHandler;->getEventTypes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kindle/event/Event;->getType()Lcom/amazon/kindle/event/EventType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v2}, Lcom/amazon/kindle/event/Event;->isBlocking()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    iget-object v3, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1;->val$handler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-interface {v3, v2}, Lcom/amazon/kindle/event/IEventHandler;->handleEvent(Lcom/amazon/kindle/event/Event;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1;->this$0:Lcom/amazon/kindle/event/RedrivableEventProvider;

    iget-object v3, v3, Lcom/amazon/kindle/event/BaseEventProvider;->workers:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/amazon/kindle/event/RedrivableEventProvider$1$1;

    invoke-direct {v4, p0, v2}, Lcom/amazon/kindle/event/RedrivableEventProvider$1$1;-><init>(Lcom/amazon/kindle/event/RedrivableEventProvider$1;Lcom/amazon/kindle/event/Event;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1;->this$0:Lcom/amazon/kindle/event/RedrivableEventProvider;

    invoke-static {v1}, Lcom/amazon/kindle/event/RedrivableEventProvider;->access$000(Lcom/amazon/kindle/event/RedrivableEventProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/event/EventProviderDB;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/event/EventProviderDB;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$1;->val$handler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/event/EventProviderDB;->markEventsProcessed(Ljava/lang/Class;Ljava/util/Collection;)V

    return-void
.end method
