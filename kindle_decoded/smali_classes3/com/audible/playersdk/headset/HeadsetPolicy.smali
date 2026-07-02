.class public interface abstract Lcom/audible/playersdk/headset/HeadsetPolicy;
.super Ljava/lang/Object;
.source "HeadsetPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/playersdk/headset/HeadsetPolicy$State;
    }
.end annotation


# virtual methods
.method public abstract setNewHeadsetState(Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V
.end method

.method public abstract shouldPausePlayback()Z
.end method

.method public abstract shouldStartPlayback()Z
.end method
