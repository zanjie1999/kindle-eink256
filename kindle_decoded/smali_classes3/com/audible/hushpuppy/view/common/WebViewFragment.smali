.class public abstract Lcom/audible/hushpuppy/view/common/WebViewFragment;
.super Landroid/app/Fragment;
.source "WebViewFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 0

    .line 21
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 22
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/common/WebViewFragment;->refresh()V

    return-void
.end method

.method protected abstract refresh()V
.end method
