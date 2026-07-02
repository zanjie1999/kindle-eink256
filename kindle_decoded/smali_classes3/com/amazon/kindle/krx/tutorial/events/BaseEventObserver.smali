.class public abstract Lcom/amazon/kindle/krx/tutorial/events/BaseEventObserver;
.super Ljava/lang/Object;
.source "BaseEventObserver.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 0

    .line 17
    new-instance p1, Lcom/amazon/kindle/krx/util/NotImplementedException;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/util/NotImplementedException;-><init>()V

    throw p1
.end method
