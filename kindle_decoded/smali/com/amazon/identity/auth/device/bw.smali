.class public final Lcom/amazon/identity/auth/device/bw;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/bw$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 34
    new-instance v0, Lcom/amazon/identity/auth/device/by;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/by;-><init>()V

    .line 35
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->I(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "CustomTabActivityHelper"

    if-eqz v1, :cond_1

    .line 37
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 42
    :try_start_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 43
    invoke-virtual {v1, p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "Exception while getting CCT toolbar color_code"

    .line 47
    invoke-static {v2, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p2

    .line 51
    invoke-static {p0, p2, p1, v0}, Lcom/amazon/identity/auth/device/bw;->a(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Lcom/amazon/identity/auth/device/bw$a;)V

    return-void

    .line 55
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "chromeCustomNotSupported:OpenFederatedAuthRegistrationRequestWithExternalBrowser:Url="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Chrome Custom Tab is not supported. Opening in external browser - url="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 57
    invoke-interface {v0, p0, p1}, Lcom/amazon/identity/auth/device/bw$a;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Lcom/amazon/identity/auth/device/bw$a;)V
    .locals 1

    .line 74
    invoke-static {p0}, Lcom/amazon/identity/auth/device/bx;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    invoke-interface {p3, p0, p2}, Lcom/amazon/identity/auth/device/bw$a;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    .line 87
    :cond_0
    iget-object p3, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object p3, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, p0, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
