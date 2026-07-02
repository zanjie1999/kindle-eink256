.class Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Ljava/lang/String;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Lcom/amazon/identity/auth/device/api/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic eG:Landroid/webkit/WebView;

.field final synthetic gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

.field final synthetic gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Ljava/lang/String;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 0

    .line 1110
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->eG:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "com.amazon.identity.auth.device.api.cookiekeys.all"

    .line 1114
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1115
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    const-string v2, "com.amazon.identity.auth.device.api.cookiekeys.ResponseUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1117
    array-length v2, v0

    if-eqz v2, :cond_1

    .line 1119
    invoke-static {v1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MAPWebviewWarning:ReturnToURLNotHTTPS"

    .line 1121
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1122
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The return_to url is not HTTPS protocol, which is not encouraged and will not be supported by Android in the future. Please make sure your return_to url is using HTTPS protocol."

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Set cookies url to "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1126
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    invoke-static {v2, v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->eG:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

    invoke-static {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/webkit/WebView;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V

    .line 1130
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
