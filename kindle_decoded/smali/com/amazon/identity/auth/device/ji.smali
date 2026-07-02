.class public final Lcom/amazon/identity/auth/device/ji;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/ji$b;,
        Lcom/amazon/identity/auth/device/ji$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ji"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/identity/auth/device/ji;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static dG(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer;
    .locals 2

    .line 1092
    new-instance v0, Lcom/amazon/identity/auth/device/ji$a;

    const-string v1, "UTF-8"

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/ji$a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1094
    invoke-virtual {v0, v1}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    .line 1096
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/UrlQuerySanitizer;->setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {v0, p0}, Landroid/net/UrlQuerySanitizer;->parseUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/ji;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to retrive a Sanitizer for a <null> url (string)."

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static dH(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 201
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 207
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 211
    sget-object v0, Lcom/amazon/identity/auth/device/ji;->TAG:Ljava/lang/String;

    const-string v2, "Failed to construct URL object."

    invoke-static {v0, v2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static gV()Lcom/amazon/identity/auth/device/ji$b;
    .locals 1

    .line 196
    new-instance v0, Lcom/amazon/identity/auth/device/ji$b;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ji$b;-><init>()V

    return-object v0
.end method
