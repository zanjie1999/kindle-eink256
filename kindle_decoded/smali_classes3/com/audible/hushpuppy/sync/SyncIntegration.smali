.class public Lcom/audible/hushpuppy/sync/SyncIntegration;
.super Ljava/lang/Object;
.source "SyncIntegration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;,
        Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;
    }
.end annotation


# static fields
.field private static delegate:Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;


# direct methods
.method public static getDelegate()Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;
    .locals 2

    .line 32
    sget-object v0, Lcom/audible/hushpuppy/sync/SyncIntegration;->delegate:Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sync integration not yet configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDelegate(Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;)V
    .locals 0

    .line 28
    sput-object p0, Lcom/audible/hushpuppy/sync/SyncIntegration;->delegate:Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;

    return-void
.end method
