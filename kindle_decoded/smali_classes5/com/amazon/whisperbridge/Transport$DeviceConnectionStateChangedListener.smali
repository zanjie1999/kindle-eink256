.class public interface abstract Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;
.super Ljava/lang/Object;
.source "Transport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/Transport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceConnectionStateChangedListener"
.end annotation


# virtual methods
.method public abstract onConnect()V
.end method

.method public abstract onConnectionFailure(I)V
.end method

.method public abstract onDisconnect()V
.end method
