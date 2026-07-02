.class public final Lcom/amazon/identity/auth/device/de;
.super Landroid/webkit/WebViewClient;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/de$a;
    }
.end annotation


# instance fields
.field private final bO:Lcom/amazon/identity/auth/device/ej;

.field public iW:Z

.field private final iX:Lcom/amazon/identity/auth/device/de$a;

.field private final iY:Ljava/lang/String;

.field private final iZ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ja:Z

.field private final jb:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$TOKEN_SCOPE;

.field private final jc:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

.field private jd:Lcom/amazon/identity/auth/device/ms;

.field private je:Lcom/amazon/identity/auth/device/ms;

.field private jf:Lcom/amazon/identity/auth/device/ms;

.field private final jg:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

.field private volatile jh:Z

.field private volatile ji:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;Ljava/lang/String;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$TOKEN_SCOPE;Ljava/util/Set;ZLcom/amazon/identity/auth/device/de$a;Lcom/amazon/identity/auth/device/ej;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;",
            "Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$TOKEN_SCOPE;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/amazon/identity/auth/device/de$a;",
            "Lcom/amazon/identity/auth/device/ej;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/de;->iW:Z

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/amazon/identity/auth/device/de;->jf:Lcom/amazon/identity/auth/device/ms;

    .line 96
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/de;->jh:Z

    .line 98
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/de;->ji:Z

    const-string v0, "callback"

    .line 128
    invoke-static {p8, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/amazon/identity/auth/device/de;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/amazon/identity/auth/device/de;->jg:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    .line 131
    iput-object p4, p0, Lcom/amazon/identity/auth/device/de;->iY:Ljava/lang/String;

    .line 132
    iput-object p8, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    .line 133
    iput-object p5, p0, Lcom/amazon/identity/auth/device/de;->jb:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$TOKEN_SCOPE;

    .line 134
    iput-object p3, p0, Lcom/amazon/identity/auth/device/de;->jc:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 135
    iput-object p6, p0, Lcom/amazon/identity/auth/device/de;->iZ:Ljava/util/Set;

    .line 136
    iput-boolean p7, p0, Lcom/amazon/identity/auth/device/de;->ja:Z

    .line 137
    iput-object p9, p0, Lcom/amazon/identity/auth/device/de;->bO:Lcom/amazon/identity/auth/device/ej;

    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10

    .line 356
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AuthenticationWebViewClient"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "URL is null"

    .line 358
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 364
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MalformedURLException url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    move-object v3, v0

    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_c

    .line 3633
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/bb/feature/sso"

    .line 3634
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    .line 4622
    :cond_1
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/ap/3p_authentication"

    .line 4623
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "/ap/3p_authentication/"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_4

    .line 393
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->REQUIRES_3P_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REQUIRED_3P_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 395
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v0

    const-string v2, "3P login requires authentication"

    const-string v3, "3P login need authentication"

    .line 393
    invoke-static {p1, v2, v0, v3}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "thirdPartyLoginUrl"

    .line 397
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Detected 3P authentication needed"

    .line 398
    invoke-static {v1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object p2, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    invoke-interface {p2, p1}, Lcom/amazon/identity/auth/device/de$a;->l(Landroid/os/Bundle;)V

    return v4

    .line 403
    :cond_4
    iget-object v5, p0, Lcom/amazon/identity/auth/device/de;->iZ:Ljava/util/Set;

    iget-boolean v6, p0, Lcom/amazon/identity/auth/device/de;->ja:Z

    .line 5535
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .line 5536
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5538
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 5540
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v7, v5}, Lcom/amazon/identity/auth/device/de;->b(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v6, :cond_6

    :cond_5
    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const-string v5, "\\."

    .line 5556
    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    const-string v6, "account-status"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    .line 5561
    :cond_7
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 5562
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "/ap/"

    .line 5567
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "/ap/maplanding"

    .line 5569
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "/gp/yourstore/home"

    .line 5570
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 5571
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "startsWithAP="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " equalsReturnTo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " equalsCancelButton="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_c

    .line 407
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->jg:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/de;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3, p2}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->a(Ljava/net/URL;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 409
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->jg:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/de;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/fe;)V

    .line 5639
    :cond_9
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "ab_federated_auth"

    .line 5640
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "domain_hint"

    .line 5641
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "true"

    .line 5642
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_b

    .line 414
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/identity/auth/device/de$a;->ay(Ljava/lang/String;)V

    return v4

    :cond_b
    return v2

    :cond_c
    :try_start_1
    const-string v0, "Opening in external browser - url="

    .line 423
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 425
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 431
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to open external browser with url and path: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ignoring and stay in the current page."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return v4
.end method

.method public static a(Ljava/net/URI;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 671
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/ap/mapcancel"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 673
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/ap/mapcancel/"

    .line 671
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 674
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "isCancelForActor : "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "AuthenticationWebViewClient"

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 590
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 592
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "."

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 606
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/net/URI;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 686
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/ap/maplanding"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private bh(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ap/signin"

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ap/register"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "openid.assoc_handle"

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private bi(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/de;->iW:Z

    const-string v1, "AuthenticationWebViewClient"

    .line 442
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 445
    new-instance v2, Lcom/amazon/identity/auth/device/cm;

    invoke-direct {v2, p1}, Lcom/amazon/identity/auth/device/cm;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/cm;->bW()Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/cm;->bY()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_auth_access"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ":"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "WebViewFailure:InvalidScope:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/identity/auth/device/de;->jc:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mm;->eO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/String;

    .line 454
    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 457
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/cm;->bY()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    const-string v0, "Received token with invalid scope %s and no authorization code"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 459
    iget-object v0, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 461
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v2

    .line 459
    invoke-static {v1, p1, v2, p1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/de$a;->l(Landroid/os/Bundle;)V

    return-void

    .line 466
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/cm;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "MAPError:AuthenticationFailed"

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebViewFailure:NoAccessTokenAndAuthorizationCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/de;->jc:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mm;->eO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/String;

    .line 470
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    new-array p1, v5, [Ljava/lang/String;

    .line 476
    invoke-static {v3, p1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 480
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 482
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const-string v2, "Sign in failed because the access token is not set in the return_to_url. Please contact the AuthPortal team to understand the reason."

    const-string v3, "Received empty access token and authorization code from AP response"

    .line 480
    invoke-static {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/identity/auth/device/de$a;->l(Landroid/os/Bundle;)V

    return-void

    .line 488
    :cond_1
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/cm;->getDirectedId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebViewFailure:NoDirectedID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/de;->jc:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mm;->eO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/String;

    .line 490
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    new-array p1, v5, [Ljava/lang/String;

    .line 496
    invoke-static {v3, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 499
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 501
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const-string v2, "Sign in failed because the directedId is not set in the return_to_url. Please contact the AuthPortal team to understand the reason."

    const-string v3, "Registration response received invalid because it did not contain a directed id"

    .line 499
    invoke-static {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/identity/auth/device/de$a;->l(Landroid/os/Bundle;)V

    return-void

    .line 506
    :cond_2
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    invoke-interface {p1, v2}, Lcom/amazon/identity/auth/device/de$a;->b(Lcom/amazon/identity/auth/device/cm;)V

    return-void
.end method

.method public static bj(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    .line 750
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AuthenticationWebViewClient"

    const-string v1, "Exception while trying to parse url in onPageStarted. Continue with page load."

    .line 754
    invoke-static {v0, v1, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "MAP_URISyntaxException"

    .line 755
    invoke-static {v0, p0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public cI()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/de;->jh:Z

    return v0
.end method

.method public cJ()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/de;->ji:Z

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "AuthenticationWebViewClient"

    .line 320
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 321
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/jl;->aK(Landroid/content/Context;)V

    .line 325
    iget-boolean p1, p0, Lcom/amazon/identity/auth/device/de;->jh:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->jd:Lcom/amazon/identity/auth/device/ms;

    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 329
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/identity/auth/device/de;->ji:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->je:Lcom/amazon/identity/auth/device/ms;

    if-eqz p1, :cond_1

    .line 331
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 341
    :cond_1
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->iY:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/amazon/identity/auth/device/de;->iW:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 351
    :cond_2
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    invoke-interface {p1}, Lcom/amazon/identity/auth/device/de$a;->aL()V

    return-void

    .line 343
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->jf:Lcom/amazon/identity/auth/device/ms;

    if-eqz p1, :cond_4

    .line 345
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    const/4 p1, 0x0

    .line 346
    iput-object p1, p0, Lcom/amazon/identity/auth/device/de;->jf:Lcom/amazon/identity/auth/device/ms;

    :cond_4
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 260
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "onPageStarted: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "AuthenticationWebViewClient"

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 261
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Before Page Started with scope ="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/identity/auth/device/de;->jb:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$TOKEN_SCOPE;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 263
    iget-object p3, p0, Lcom/amazon/identity/auth/device/de;->jg:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/de;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2, v0}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 266
    iget-object p3, p0, Lcom/amazon/identity/auth/device/de;->jg:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/de;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->L(Landroid/content/Context;)V

    .line 269
    :cond_0
    iget-object p3, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    invoke-interface {p3, p2}, Lcom/amazon/identity/auth/device/de$a;->ax(Ljava/lang/String;)V

    .line 271
    invoke-static {p2}, Lcom/amazon/identity/auth/device/de;->bj(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 1655
    :cond_1
    invoke-virtual {p3}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/gp/yourstore/home"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1657
    invoke-virtual {p3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/gp/yourstore/home/"

    .line 1655
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 1658
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isCancelEvent : "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_6

    .line 285
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->OPERATION_CANCELLED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 p3, 0x4

    const-string v0, "Registration canceled"

    invoke-static {p2, v0, p3, v0}, Lcom/amazon/identity/auth/device/m;->b(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/identity/auth/device/de$a;->l(Landroid/os/Bundle;)V

    .line 2190
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->bO:Lcom/amazon/identity/auth/device/ej;

    if-eqz p1, :cond_5

    .line 2194
    iget-boolean p1, p0, Lcom/amazon/identity/auth/device/de;->ji:Z

    if-eqz p1, :cond_4

    .line 2197
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string p2, "DCQCanceled"

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 2199
    :cond_4
    iget-boolean p1, p0, Lcom/amazon/identity/auth/device/de;->jh:Z

    if-eqz p1, :cond_5

    .line 2202
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string p2, "MFACanceled"

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 294
    :cond_6
    invoke-static {p3}, Lcom/amazon/identity/auth/device/de;->b(Ljava/net/URI;)Z

    move-result p3

    if-nez p3, :cond_d

    .line 296
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/de;->bh(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/amazon/identity/auth/device/de;->jh:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/amazon/identity/auth/device/de;->ji:Z

    if-eqz p1, :cond_8

    .line 298
    :cond_7
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    invoke-interface {p1}, Lcom/amazon/identity/auth/device/de$a;->aM()V

    :cond_8
    const-string p1, "ap/dcq"

    .line 3159
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3161
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->bO:Lcom/amazon/identity/auth/device/ej;

    if-eqz p1, :cond_9

    .line 3165
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WebView:ContactedDCQ:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/amazon/identity/auth/device/de;->jc:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 3166
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string p2, "DCQ:PageRender"

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/de;->je:Lcom/amazon/identity/auth/device/ms;

    .line 3168
    :cond_9
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/de;->ji:Z

    .line 3169
    iput-boolean v1, p0, Lcom/amazon/identity/auth/device/de;->jh:Z

    return-void

    :cond_a
    const-string p1, "ap/mfa"

    .line 3171
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 3173
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->bO:Lcom/amazon/identity/auth/device/ej;

    if-eqz p1, :cond_b

    .line 3175
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WebView:ContactedMFA:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/amazon/identity/auth/device/de;->jc:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 3176
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string p2, "MFA:PageRender"

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/de;->jd:Lcom/amazon/identity/auth/device/ms;

    .line 3178
    :cond_b
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/de;->jh:Z

    .line 3179
    iput-boolean v1, p0, Lcom/amazon/identity/auth/device/de;->ji:Z

    return-void

    .line 3183
    :cond_c
    iput-boolean v1, p0, Lcom/amazon/identity/auth/device/de;->jh:Z

    .line 3184
    iput-boolean v1, p0, Lcom/amazon/identity/auth/device/de;->ji:Z

    return-void

    .line 311
    :cond_d
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/de;->bi(Ljava/lang/String;)V

    const-string p2, "ReturnToUrl is loaded by webview! This shouldn\'t happen"

    .line 312
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    const-string p2, "ReturnToUrl_OnPageStarted"

    .line 313
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Got an error from the webview. Returning false for SignIn ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthenticationWebViewClient"

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {p4, p2}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->c(Ljava/lang/String;I)V

    const/4 p1, 0x0

    new-array p4, p1, [Ljava/lang/String;

    const-string v0, "NetworkError3:AuthenticationWebViewClient"

    .line 245
    invoke-static {v0, p4}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 248
    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 249
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string v1, "Received error code %d and description: %s"

    .line 248
    invoke-static {p4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 251
    iget-object v0, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p3, p2, p1

    const-string p1, "A network error occurred: %s"

    .line 252
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 253
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    .line 251
    invoke-static {v1, p1, p2, p4}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/de$a;->l(Landroid/os/Bundle;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .line 696
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Got an SSL error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "AuthenticationWebViewClient"

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/String;

    const-string v1, "NetworkError5:AuthenticationWebViewClient"

    .line 707
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 710
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    const-string v2, "SSL Failure. SSL Error code %d."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 712
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 714
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v2

    .line 712
    invoke-static {v1, v0, v2, v0}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 718
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 720
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ji;->dH(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 722
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->d(Ljava/lang/String;I)V

    if-eqz v2, :cond_1

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL error for: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "MAPWebViewSSLError_"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "com.amazon.identity.WebViewSSLErrorDomainPath"

    .line 728
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    const-string v1, "CannotGetURL"

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->d(Ljava/lang/String;I)V

    new-array p1, p2, [Ljava/lang/String;

    const-string p2, "MAPWebViewSSLError"

    .line 735
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 741
    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    const-string p2, "com.amazon.identity.WebViewSSLErrorCode"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 742
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    invoke-interface {p1, v0}, Lcom/amazon/identity/auth/device/de$a;->l(Landroid/os/Bundle;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 149
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/de;->bh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/de;->jf:Lcom/amazon/identity/auth/device/ms;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/de;->bO:Lcom/amazon/identity/auth/device/ej;

    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AuthenticationWebViewClient_SignInRegisterPost:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/de;->jc:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 152
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/de;->jf:Lcom/amazon/identity/auth/device/ms;

    .line 154
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 518
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "AuthenticationWebViewClient"

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 519
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/de;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 523
    :cond_0
    invoke-static {p2}, Lcom/amazon/identity/auth/device/de;->bj(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/de;->b(Ljava/net/URI;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 526
    iget-object p1, p0, Lcom/amazon/identity/auth/device/de;->iX:Lcom/amazon/identity/auth/device/de$a;

    invoke-interface {p1, p2}, Lcom/amazon/identity/auth/device/de$a;->ax(Ljava/lang/String;)V

    .line 527
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/de;->bi(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
