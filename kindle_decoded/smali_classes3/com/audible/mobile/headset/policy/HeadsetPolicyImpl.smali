.class public Lcom/audible/mobile/headset/policy/HeadsetPolicyImpl;
.super Ljava/lang/Object;
.source "HeadsetPolicyImpl.java"

# interfaces
.implements Lcom/audible/playersdk/headset/HeadsetPolicy;


# instance fields
.field private headsetState:Lcom/audible/playersdk/headset/HeadsetPolicy$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->UNPLUGGED:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    iput-object v0, p0, Lcom/audible/mobile/headset/policy/HeadsetPolicyImpl;->headsetState:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    return-void
.end method


# virtual methods
.method public setNewHeadsetState(Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/audible/mobile/headset/policy/HeadsetPolicyImpl;->headsetState:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    return-void
.end method

.method public shouldPausePlayback()Z
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/audible/mobile/headset/policy/HeadsetPolicyImpl;->headsetState:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    sget-object v1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->UNPLUGGED:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldStartPlayback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
