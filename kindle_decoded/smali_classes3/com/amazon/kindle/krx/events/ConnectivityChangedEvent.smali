.class public Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;
.super Ljava/lang/Object;
.source "ConnectivityChangedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final isWanConnected:Z

.field private final isWifiConnected:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;->isWifiConnected:Z

    .line 13
    iput-boolean p2, p0, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;->isWanConnected:Z

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;->isWanConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isWanConnected()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;->isWanConnected:Z

    return v0
.end method

.method public isWifiConnected()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;->isWifiConnected:Z

    return v0
.end method
