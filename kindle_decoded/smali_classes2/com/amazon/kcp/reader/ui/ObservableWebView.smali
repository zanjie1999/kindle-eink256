.class public Lcom/amazon/kcp/reader/ui/ObservableWebView;
.super Landroid/webkit/WebView;
.source "ObservableWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ObservableWebView$OnScrollChangedCallback;
    }
.end annotation


# instance fields
.field private mOnScrollChangedCallback:Lcom/amazon/kcp/reader/ui/ObservableWebView$OnScrollChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 32
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ObservableWebView;->mOnScrollChangedCallback:Lcom/amazon/kcp/reader/ui/ObservableWebView$OnScrollChangedCallback;

    if-eqz p3, :cond_0

    .line 33
    invoke-interface {p3, p1, p2}, Lcom/amazon/kcp/reader/ui/ObservableWebView$OnScrollChangedCallback;->onScroll(II)V

    :cond_0
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/amazon/kcp/reader/ui/ObservableWebView$OnScrollChangedCallback;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ObservableWebView;->mOnScrollChangedCallback:Lcom/amazon/kcp/reader/ui/ObservableWebView$OnScrollChangedCallback;

    return-void
.end method
