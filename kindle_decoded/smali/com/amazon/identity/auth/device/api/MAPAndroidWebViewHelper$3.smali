.class final Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$3;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic eG:Landroid/webkit/WebView;

.field final synthetic gl:Ljava/lang/String;

.field final synthetic gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1064
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$3;->gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$3;->eG:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$3;->gl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1068
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$3;->gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

    if-nez v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$3;->eG:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$3;->gl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 1075
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$3;->eG:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$3;->gl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;->navigate(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
