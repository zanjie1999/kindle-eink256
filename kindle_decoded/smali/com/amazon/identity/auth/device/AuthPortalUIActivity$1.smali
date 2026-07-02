.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/dr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 381
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;)V
    .locals 6

    .line 408
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    .line 409
    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->g(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/dr;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    .line 410
    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->h(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    .line 411
    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    .line 412
    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->i(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Z

    move-result v5

    move-object v0, p1

    .line 408
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/dr;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/ej;Z)V

    return-void
.end method

.method public aJ()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->d(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    return-void
.end method

.method public aK()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    const-string v1, "OnCFCalledByAuthPortal"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->e(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->e(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 401
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->f(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    :cond_1
    return-void
.end method
