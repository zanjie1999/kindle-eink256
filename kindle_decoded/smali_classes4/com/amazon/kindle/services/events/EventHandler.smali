.class Lcom/amazon/kindle/services/events/EventHandler;
.super Lcom/amazon/kindle/services/events/BaseEventHandler;
.source "EventHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/krx/events/IEvent;",
            ">;"
        }
    .end annotation
.end field

.field paramType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/krx/events/IEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kindle/services/events/EventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/events/EventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/kindle/services/events/BaseEventHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Class;Ljava/lang/Class;Lcom/amazon/kindle/services/events/IEventProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/krx/events/IEvent;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/krx/events/IEvent;",
            ">;",
            "Lcom/amazon/kindle/services/events/IEventProcessor;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/services/events/BaseEventHandler;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->method:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    .line 43
    iput-object p3, p0, Lcom/amazon/kindle/services/events/EventHandler;->paramType:Ljava/lang/Class;

    .line 44
    iput-object p4, p0, Lcom/amazon/kindle/services/events/EventHandler;->eventType:Ljava/lang/Class;

    .line 45
    iput-object p5, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->processor:Lcom/amazon/kindle/services/events/IEventProcessor;

    return-void
.end method

.method static createEventHandlers(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/events/EventHandler;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 92
    invoke-static {v4}, Lcom/amazon/kindle/services/events/BaseEventHandler;->getSubscriberAnnotation(Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/events/Subscriber;

    if-eqz v5, :cond_0

    .line 93
    invoke-static {v5}, Lcom/amazon/kindle/services/events/TopicEventHandler;->hasTopic(Lcom/amazon/kindle/krx/events/Subscriber;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 94
    invoke-static {v4}, Lcom/amazon/kindle/services/events/EventHandler;->getSubscriber(Ljava/lang/reflect/Method;)Lcom/amazon/kindle/services/events/EventHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 96
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v4, p0}, Lcom/amazon/kindle/services/events/BaseEventHandler;->registerListener(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static getSubscriber(Ljava/lang/reflect/Method;)Lcom/amazon/kindle/services/events/EventHandler;
    .locals 5

    .line 113
    const-class v0, Lcom/amazon/kindle/krx/events/Subscriber;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/Subscriber;

    .line 114
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 115
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-class v2, Lcom/amazon/kindle/krx/events/IEvent;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_0

    .line 127
    new-instance v2, Lcom/amazon/kindle/services/events/EventHandler;

    invoke-direct {v2}, Lcom/amazon/kindle/services/events/EventHandler;-><init>()V

    .line 128
    aget-object v1, v1, v3

    iput-object v1, v2, Lcom/amazon/kindle/services/events/EventHandler;->eventType:Ljava/lang/Class;

    .line 129
    invoke-interface {v0}, Lcom/amazon/kindle/krx/events/Subscriber;->isBlocking()Z

    move-result v0

    iput-boolean v0, v2, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    .line 130
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/amazon/kindle/services/events/BaseEventHandler;->method:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/amazon/kindle/services/events/DefaultEventProcessor;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/services/events/DefaultEventProcessor;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, v2, Lcom/amazon/kindle/services/events/BaseEventHandler;->processor:Lcom/amazon/kindle/services/events/IEventProcessor;

    return-object v2

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " subscriber method must not throw any exceptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " subscriber method must have one and only one parameter that implements com.amazon.kindle.krx.events.IEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getEventType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/services/events/EventHandler;->eventType:Ljava/lang/Class;

    return-object v0
.end method

.method public handle(Ljava/lang/Object;)V
    .locals 8

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/services/events/EventHandler;->eventType:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kindle/services/events/BaseEventHandler;->getListeners()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 54
    :try_start_0
    iget-object v4, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->processor:Lcom/amazon/kindle/services/events/IEventProcessor;

    if-eqz v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->processor:Lcom/amazon/kindle/services/events/IEventProcessor;

    iget-object v5, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->method:Ljava/lang/String;

    invoke-interface {v4, v3, v5, p1}, Lcom/amazon/kindle/services/events/IEventProcessor;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 58
    sget-object v5, Lcom/amazon/kindle/services/events/EventHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This should not happen: error invoking subscribed listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with event "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/events/EventHandler;->eventType:Ljava/lang/Class;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-static {v5, v3, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method isBlocking()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->processor:Lcom/amazon/kindle/services/events/IEventProcessor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/services/events/EventHandler;->eventType:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/services/events/EventHandler;->paramType:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->listeners:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
