.class abstract Lcom/amazon/android/webkit/android/AndroidWebViewReflection;
.super Ljava/lang/Object;
.source "AndroidWebViewReflection.java"


# static fields
.field private static final KITKAT_VERSION_NUMBER:I = 0x13


# instance fields
.field protected final webView:Landroid/webkit/WebView;


# direct methods
.method protected constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewReflection;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public static create(Landroid/webkit/WebView;)Lcom/amazon/android/webkit/android/AndroidWebViewReflection;
    .locals 2

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 27
    new-instance v0, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;

    invoke-direct {v0, p0}, Lcom/amazon/android/webkit/android/JellyBeanWebViewReflection;-><init>(Landroid/webkit/WebView;)V

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;

    invoke-direct {v0, p0}, Lcom/amazon/android/webkit/android/PreJellyBeanWebViewReflection;-><init>(Landroid/webkit/WebView;)V

    return-object v0
.end method


# virtual methods
.method public abstract dumpDisplayTree()V
.end method

.method public abstract dumpDomTree(Z)V
.end method

.method public abstract dumpRenderTree(Z)V
.end method

.method public abstract dumpV8Counters()V
.end method

.method public abstract findAllAsync(Ljava/lang/String;)V
.end method

.method public abstract getTouchIconUrl()Ljava/lang/String;
.end method

.method public abstract getVerticalScrollOffset()I
.end method

.method public abstract loadWebArchive(Ljava/lang/String;)V
.end method

.method public abstract notifyFindDialogDismissed()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setFindIsUp(Z)V
.end method

.method public abstract setFindListener(Lcom/amazon/android/webkit/AmazonFindListener;)V
.end method

.method public abstract setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
.end method
