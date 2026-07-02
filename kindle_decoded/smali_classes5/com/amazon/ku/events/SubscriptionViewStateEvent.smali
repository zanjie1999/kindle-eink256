.class public Lcom/amazon/ku/events/SubscriptionViewStateEvent;
.super Ljava/lang/Object;
.source "SubscriptionViewStateEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final subscribeUrlPath:Ljava/lang/String;

.field private final viewState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/ku/events/SubscriptionViewStateEvent;->subscribeUrlPath:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/amazon/ku/events/SubscriptionViewStateEvent;->viewState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSubscribeUrlPath()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/ku/events/SubscriptionViewStateEvent;->subscribeUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method public getViewState()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/ku/events/SubscriptionViewStateEvent;->viewState:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/amazon/ku/events/SubscriptionViewStateEvent;->subscribeUrlPath:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v1, p0, Lcom/amazon/ku/events/SubscriptionViewStateEvent;->viewState:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    .line 55
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
