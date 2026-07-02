.class Lcom/amazon/kindle/services/events/TopicEventHandler;
.super Lcom/amazon/kindle/services/events/BaseEventHandler;
.source "TopicEventHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field paramType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kindle/services/events/TopicEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/events/TopicEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/services/events/BaseEventHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Class;Ljava/lang/String;Lcom/amazon/kindle/services/events/IEventProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/services/events/IEventProcessor;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/services/events/BaseEventHandler;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->method:Ljava/lang/String;

    .line 38
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    .line 39
    iput-object p3, p0, Lcom/amazon/kindle/services/events/TopicEventHandler;->paramType:Ljava/lang/Class;

    .line 40
    iput-object p4, p0, Lcom/amazon/kindle/services/events/TopicEventHandler;->topic:Ljava/lang/String;

    .line 41
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
            "Lcom/amazon/kindle/services/events/TopicEventHandler;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 121
    invoke-static {v4}, Lcom/amazon/kindle/services/events/BaseEventHandler;->getSubscriberAnnotation(Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/events/Subscriber;

    if-eqz v5, :cond_0

    .line 122
    invoke-static {v5}, Lcom/amazon/kindle/services/events/TopicEventHandler;->hasTopic(Lcom/amazon/kindle/krx/events/Subscriber;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 123
    invoke-static {v4}, Lcom/amazon/kindle/services/events/TopicEventHandler;->getSubscriber(Ljava/lang/reflect/Method;)Lcom/amazon/kindle/services/events/TopicEventHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 125
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v4, p0}, Lcom/amazon/kindle/services/events/BaseEventHandler;->registerListener(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static getSubscriber(Ljava/lang/reflect/Method;)Lcom/amazon/kindle/services/events/TopicEventHandler;
    .locals 4

    .line 88
    const-class v0, Lcom/amazon/kindle/krx/events/Subscriber;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/Subscriber;

    .line 89
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 90
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 96
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_0

    .line 100
    new-instance v2, Lcom/amazon/kindle/services/events/TopicEventHandler;

    invoke-direct {v2}, Lcom/amazon/kindle/services/events/TopicEventHandler;-><init>()V

    const/4 v3, 0x0

    .line 101
    aget-object v1, v1, v3

    iput-object v1, v2, Lcom/amazon/kindle/services/events/TopicEventHandler;->paramType:Ljava/lang/Class;

    .line 102
    invoke-interface {v0}, Lcom/amazon/kindle/krx/events/Subscriber;->isBlocking()Z

    move-result v1

    iput-boolean v1, v2, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    .line 103
    invoke-interface {v0}, Lcom/amazon/kindle/krx/events/Subscriber;->topic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/amazon/kindle/services/events/TopicEventHandler;->topic:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/amazon/kindle/services/events/BaseEventHandler;->method:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/amazon/kindle/services/events/DefaultEventProcessor;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/services/events/DefaultEventProcessor;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, v2, Lcom/amazon/kindle/services/events/BaseEventHandler;->processor:Lcom/amazon/kindle/services/events/IEventProcessor;

    return-object v2

    .line 97
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

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " topic subscriber method must have one and only one parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static hasTopic(Lcom/amazon/kindle/krx/events/Subscriber;)Ljava/lang/Boolean;
    .locals 0

    if-eqz p0, :cond_0

    .line 83
    invoke-interface {p0}, Lcom/amazon/kindle/krx/events/Subscriber;->topic()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handle(Ljava/lang/Object;)V
    .locals 10

    const-string v0, ". "

    const-string v1, " with topic "

    const-string v2, "This should not happen: error invoking subscribed listener: "

    .line 46
    invoke-virtual {p0}, Lcom/amazon/kindle/services/events/BaseEventHandler;->getListeners()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    if-eqz v6, :cond_1

    .line 49
    :try_start_0
    iget-object v7, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->processor:Lcom/amazon/kindle/services/events/IEventProcessor;

    if-eqz v7, :cond_1

    .line 50
    iget-object v7, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->processor:Lcom/amazon/kindle/services/events/IEventProcessor;

    iget-object v8, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->method:Ljava/lang/String;

    invoke-interface {v7, v6, v8, p1}, Lcom/amazon/kindle/services/events/IEventProcessor;->processTopic(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 64
    sget-object v8, Lcom/amazon/kindle/services/events/TopicEventHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/kindle/services/events/TopicEventHandler;->topic:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-static {v8, v6, v7}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v7

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/kindle/services/events/TopicEventHandler;->topic:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v8

    if-nez v8, :cond_0

    .line 61
    sget-object v8, Lcom/amazon/kindle/services/events/TopicEventHandler;->TAG:Ljava/lang/String;

    invoke-static {v8, v6, v7}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 58
    :cond_0
    sget-object p1, Lcom/amazon/kindle/services/events/TopicEventHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    throw v7

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method isBlocking()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->processor:Lcom/amazon/kindle/services/events/IEventProcessor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/services/events/TopicEventHandler;->topic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->isBlocking:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/services/events/BaseEventHandler;->listeners:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
