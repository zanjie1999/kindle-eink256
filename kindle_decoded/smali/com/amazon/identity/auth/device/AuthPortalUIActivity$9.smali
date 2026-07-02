.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$9;
.super Landroid/webkit/WebChromeClient;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V
    .locals 0

    .line 1222
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$9;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$9;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->l(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$9;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0, p1, p2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1236
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AuthPortalUIActivity onShowFileChooser()"

    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$9;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/webkit/ValueCallback;)V

    const/4 p1, 0x1

    return p1
.end method
