.class public abstract Lcom/amazon/kindle/krx/tutorial/events/BaseTutorialEvent;
.super Ljava/lang/Object;
.source "BaseTutorialEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventData()Landroid/os/Bundle;
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/util/NotImplementedException;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/util/NotImplementedException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/util/NotImplementedException;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/util/NotImplementedException;-><init>()V

    throw v0
.end method
