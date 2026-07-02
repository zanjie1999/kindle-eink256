.class Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;
.super Landroid/webkit/WebViewClient;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->aV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 204
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "MAP AuthChallenge onPageStarted: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "AuthChallengeHandleActivity"

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 208
    invoke-static {p2}, Lcom/amazon/identity/auth/device/de;->bj(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/identity/auth/device/de;->a(Ljava/net/URI;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Customer canceled the flow"

    .line 211
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->OPERATION_CANCELLED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->k(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    const-string p1, "Got an error from the webview. Aborting..."

    const-string p2, "AuthChallengeHandleActivity"

    .line 220
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p2, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {p3, p1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->k(Landroid/os/Bundle;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 231
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "SSL Failure. SSL Error code %d."

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 232
    iget-object p2, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {p3, p1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->k(Landroid/os/Bundle;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    .line 238
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->av(Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/de;->bj(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->a(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;Ljava/net/URI;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AuthChallengeHandleActivity"

    const-string p2, "Handling return to URL, calling get actor token without FC..."

    .line 244
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/hg;->ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;

    move-result-object v0

    const/4 v1, 0x0

    .line 246
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->b(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->c(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->d(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;

    invoke-direct {v7, p0}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;-><init>(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;)V

    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    iget-object v8, p1, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->bO:Lcom/amazon/identity/auth/device/ej;

    invoke-virtual/range {v0 .. v8}, Lcom/amazon/identity/auth/device/hg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
