.class public interface abstract Lcom/amazon/kcp/library/FTUESyncCompletionWaiter$Callback;
.super Ljava/lang/Object;
.source "FTUESyncCompletionWaiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/FTUESyncCompletionWaiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onSyncCompleted()V
.end method

.method public abstract onSyncTimeout()V
.end method
