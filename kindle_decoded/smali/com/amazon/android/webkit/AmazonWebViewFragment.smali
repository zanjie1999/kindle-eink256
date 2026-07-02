.class public Lcom/amazon/android/webkit/AmazonWebViewFragment;
.super Landroid/app/Fragment;
.source "AmazonWebViewFragment.java"


# instance fields
.field private mIsWebViewAvailable:Z

.field private mWebView:Lcom/amazon/android/webkit/AmazonWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getWebView()Lcom/amazon/android/webkit/AmazonWebView;
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/amazon/android/webkit/AmazonWebViewFragment;->mIsWebViewAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewFragment;->mWebView:Lcom/amazon/android/webkit/AmazonWebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 24
    iget-object p1, p0, Lcom/amazon/android/webkit/AmazonWebViewFragment;->mWebView:Lcom/amazon/android/webkit/AmazonWebView;

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/amazon/android/webkit/AmazonWebView;->destroy()V

    .line 27
    :cond_0
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebKitFactories;->getDefaultFactory()Lcom/amazon/android/webkit/AmazonWebKitFactory;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3, v0}, Lcom/amazon/android/webkit/AmazonWebKitFactory;->createWebView(Landroid/content/Context;ILjava/lang/Object;Z)Lcom/amazon/android/webkit/AmazonWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebViewFragment;->mWebView:Lcom/amazon/android/webkit/AmazonWebView;

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/amazon/android/webkit/AmazonWebViewFragment;->mIsWebViewAvailable:Z

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewFragment;->mWebView:Lcom/amazon/android/webkit/AmazonWebView;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebView;->destroy()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewFragment;->mWebView:Lcom/amazon/android/webkit/AmazonWebView;

    .line 38
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/amazon/android/webkit/AmazonWebViewFragment;->mIsWebViewAvailable:Z

    .line 44
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 50
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewFragment;->mWebView:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebViewFragment;->mWebView:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebView;->onResume()V

    .line 56
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method
