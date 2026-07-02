.class Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Lcom/amazon/identity/auth/device/api/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eG:Landroid/webkit/WebView;

.field final synthetic fl:Ljava/lang/String;

.field final synthetic gl:Ljava/lang/String;

.field final synthetic gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

.field final synthetic gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->eG:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->fl:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->gl:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 6

    .line 1096
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->eG:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->fl:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->gl:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->b(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/webkit/WebView;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 6

    .line 1090
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->eG:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->fl:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->gl:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;->gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/webkit/WebView;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V

    return-void
.end method
