.class public abstract Lcom/audible/hushpuppy/view/common/BaseKrxProvider;
.super Ljava/lang/Object;
.source "BaseKrxProvider.java"


# instance fields
.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/common/BaseKrxProvider;->mainHandler:Landroid/os/Handler;

    return-void
.end method
