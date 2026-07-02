.class public interface abstract Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;
.super Ljava/lang/Object;
.source "SyncIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/sync/SyncIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILogger"
.end annotation


# virtual methods
.method public abstract debug(Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract trace(Ljava/lang/String;)V
.end method
