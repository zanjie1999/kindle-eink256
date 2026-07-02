.class public interface abstract Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;
.super Ljava/lang/Object;
.source "SyncIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/sync/SyncIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDelegate"
.end annotation


# virtual methods
.method public abstract getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;
.end method

.method public abstract reportFailureMetric()V
.end method
