.class public interface abstract Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;
.super Ljava/lang/Object;
.source "SwipeRefreshHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/SwipeRefreshHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAfterRefreshFinished()V
.end method

.method public abstract onBeforeRefreshStarted()V
.end method
