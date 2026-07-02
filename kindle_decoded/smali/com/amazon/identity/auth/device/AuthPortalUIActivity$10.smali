.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/de$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eB:Ljava/lang/String;

.field final synthetic eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

.field final synthetic ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;Ljava/lang/String;)V
    .locals 0

    .line 1468
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->eB:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aL()V
    .locals 4

    .line 1518
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    const-string v1, "apimageview"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1519
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1521
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->s(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1529
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v2

    const-string v3, "An unexpected error occured while setting up the WebView."

    .line 1527
    invoke-static {v1, v3, v2, v3}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;)V

    return-void

    .line 1536
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x8

    .line 1538
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1540
    :cond_1
    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1542
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1543
    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 1546
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->t(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    .line 1547
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->d(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    .line 1548
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->u(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1550
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->u(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->iN()V

    .line 1554
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->v(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1556
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->v(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->iN()V

    :cond_4
    return-void
.end method

.method public aM()V
    .locals 1

    .line 1563
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1564
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->p(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/de;->cI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->w(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1566
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->w(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->iN()V

    .line 1568
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->x(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    .line 1570
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->p(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/de;->cJ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->y(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1572
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->y(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->iN()V

    .line 1574
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->z(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    :cond_1
    return-void
.end method

.method public ax(Ljava/lang/String;)V
    .locals 3

    .line 1490
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->b(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Ljava/lang/String;)V

    .line 1492
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1494
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ms;->iN()V

    .line 1497
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AuthPortalPageTimeout:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bV()Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1498
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->p(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/de;->cI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":MFA"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->p(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/de;->cJ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":DCQ"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1506
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->c(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1508
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->n(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    .line 1509
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1510
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->q(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/util/Timer;

    move-result-object p1

    new-instance v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$a;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$a;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;B)V

    const-wide/32 v1, 0x3d090

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1512
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->r(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    return-void
.end method

.method public ay(Ljava/lang/String;)V
    .locals 4

    .line 1581
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->A(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "color_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1582
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chromeCustomTabLaunch:OpenFederatedAuthSignInRequest:Url="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1583
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Opening in chrome custom tab - url="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1584
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->s(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/identity/auth/device/bw;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/amazon/identity/auth/device/cm;)V
    .locals 3

    .line 1473
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->m(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->de()V

    .line 1474
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->eH:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bV()Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->eB:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V

    return-void
.end method

.method public l(Landroid/os/Bundle;)V
    .locals 1

    .line 1480
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->n(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    .line 1481
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;)V

    return-void
.end method
