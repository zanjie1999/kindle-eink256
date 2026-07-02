.class Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eG:Landroid/webkit/WebView;

.field final synthetic fg:Ljava/lang/String;

.field final synthetic fl:Ljava/lang/String;

.field final synthetic gl:Ljava/lang/String;

.field final synthetic gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

.field final synthetic gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Ljava/lang/String;Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->fg:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->eG:Landroid/webkit/WebView;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->fl:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->gl:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 5

    .line 634
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCookies call failed with error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.amazon.dcp.sso.ErrorMessage"

    .line 635
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->fg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "account "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->fg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 643
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->eG:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->fl:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->gl:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->gm:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v1

    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;)V

    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;->gn:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    const-string v1, "ON_UNABLE_TO_GET_COOKIES"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 628
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sign in skipped successfully. Loaded next URL in WebView."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
