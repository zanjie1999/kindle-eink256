.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eG:Landroid/webkit/WebView;

.field final synthetic eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

.field final synthetic ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->eG:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 510
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->eG:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->k(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->b(Ljava/util/Map;)V

    .line 517
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bR()Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    .line 520
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "Loading AuthPortal Signin Url: %s"

    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AuthPortalUIActivity_FirstOnPageStarted:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->eO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 524
    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/ms;)Lcom/amazon/identity/auth/device/ms;

    .line 527
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AuthPortalUIActivity_FirstPageLoad:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->eO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 527
    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->b(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/ms;)Lcom/amazon/identity/auth/device/ms;

    .line 529
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AuthPortalUIActivity_FirstPageRender:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->eO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->c(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/ms;)Lcom/amazon/identity/auth/device/ms;

    .line 531
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AuthPortalUIActivity_BackPressedInWebView:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-static {v0}, Lcom/amazon/identity/auth/device/mm;->eO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 531
    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->d(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/ms;)Lcom/amazon/identity/auth/device/ms;

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->eG:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;->eG:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    return-void
.end method
