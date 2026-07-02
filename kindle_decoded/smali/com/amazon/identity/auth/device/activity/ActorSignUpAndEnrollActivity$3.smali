.class Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$3;
.super Landroid/webkit/WebViewClient;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->aV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$3;->eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 165
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Actor sign up and enroll onPageStarted: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "ActorSignUpAndEnrollActivity"

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 167
    invoke-static {p2}, Lcom/amazon/identity/auth/device/de;->bj(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/identity/auth/device/de;->a(Ljava/net/URI;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Customer canceled the sign up and enroll flow"

    .line 170
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$3;->eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->OPERATION_CANCELLED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v0, 0x1

    invoke-static {p3, p2, v0}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->k(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    const-string p1, "Got an error from the sign up and enroll webview. Aborting..."

    const-string p2, "ActorSignUpAndEnrollActivity"

    .line 179
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$3;->eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v0, 0x1

    invoke-static {p3, p1, v0}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->k(Landroid/os/Bundle;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 190
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "SSL Failure in sign up and enroll. SSL Error code %d."

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object p2, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$3;->eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {p3, p1, v0}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->k(Landroid/os/Bundle;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$3;->eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->av(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$3;->eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/de;->bj(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->a(Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;Ljava/net/URI;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$3;->eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;

    iget-object p2, p1, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fc:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->b(Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->onSuccess(Landroid/os/Bundle;)V

    .line 202
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$3;->eR:Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
