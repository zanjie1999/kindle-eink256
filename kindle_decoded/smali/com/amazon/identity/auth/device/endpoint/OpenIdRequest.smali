.class public Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$TOKEN_SCOPE;,
        Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;
    }
.end annotation


# static fields
.field private static final gK:Ljava/lang/String; = "com.amazon.identity.auth.device.endpoint.OpenIdRequest"


# instance fields
.field private final eb:Landroid/os/Bundle;

.field private final io:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ip:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

.field private iq:Ljava/lang/String;

.field private final ir:Landroid/net/Uri$Builder;

.field private is:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    .line 216
    iput-object p2, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ip:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :goto_1
    move-object v0, v1

    goto/16 :goto_5

    :cond_1
    const-string v2, "com.amazon.identity.auth.ChallengeException"

    .line 1864
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    const-string v3, "com.amazon.identity.auth.ChallengeException.oAuthURI"

    .line 1870
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_3

    const-string/jumbo v2, "resume_authentication_url"

    .line 1875
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    .line 1836
    :cond_4
    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "Unusable OpenID URL received: "

    const-string v4, "Unusable OpenID URL received"

    if-eqz v0, :cond_9

    invoke-static {v2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    .line 1843
    :cond_5
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1844
    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    .line 1852
    :cond_6
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1854
    :cond_7
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->gK:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gE()V

    goto :goto_1

    .line 1846
    :cond_8
    :goto_3
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->gK:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gE()V

    goto :goto_1

    .line 1838
    :cond_9
    :goto_4
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->gK:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gE()V

    goto/16 :goto_1

    :cond_a
    :goto_5
    if-nez v0, :cond_b

    .line 225
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    goto :goto_6

    .line 229
    :cond_b
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    .line 232
    :goto_6
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    if-eqz v0, :cond_c

    .line 2439
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 2441
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_c
    move-object v0, v1

    .line 2445
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2448
    :cond_d
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->w(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 2449
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->gK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AuthPortal Host: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 2454
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 234
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    const-string v2, "https"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 236
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 238
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ip:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    if-ne v0, v2, :cond_f

    .line 240
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    const-string v2, "/ap/register"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_8

    .line 242
    :cond_f
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->FORGOT_PASSWORD:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    if-ne v0, v2, :cond_10

    .line 244
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    const-string v2, "/ap/forgotpassword"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_8

    .line 246
    :cond_10
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CNEP:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    if-ne v0, v2, :cond_11

    .line 248
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    const-string v2, "/ap/cnep"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_8

    .line 250
    :cond_11
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CALLBACK_FOR_3P_LOGIN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    if-ne v0, v2, :cond_12

    .line 252
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    const-string v2, "/ap/3p_callback"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_8

    .line 256
    :cond_12
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    const-string v2, "/ap/signin"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_13
    :goto_8
    const-string v0, "amzn_device_na"

    .line 261
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aT(Ljava/lang/String;)V

    .line 3028
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string v3, "language"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v2, "app_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 270
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_14
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v2, "domain_hint"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 274
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_15
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v2, "ab_federated_auth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 278
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_16
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->s(Landroid/os/Bundle;)V

    .line 286
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v0, "openid.ns"

    const-string v2, "http://specs.openid.net/auth/2.0"

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v0, "openid.mode"

    const-string v2, "checkid_setup"

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string v0, "http://specs.openid.net/auth/2.0/identifier_select"

    const-string/jumbo v2, "openid.claimed_id"

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v2, "openid.identity"

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v0, "openid.ns.pape"

    const-string v2, "http://specs.openid.net/extensions/pape/1.0"

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string/jumbo v0, "use_code_response_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    const-string/jumbo v0, "openid.oa2.response_type"

    if-eqz p3, :cond_17

    .line 295
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string v2, "code"

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v2, "code_challenge"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "openid.oa2.code_challenge"

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v2, "code_challenge_method"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "openid.oa2.code_challenge_method"

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 301
    :cond_17
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v2, "token"

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :goto_9
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v0, "openid.ns.oa2"

    const-string v2, "http://www.amazon.com/ap/ext/oauth/2"

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v2, "account_status_policy"

    .line 3334
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;

    if-eqz v0, :cond_18

    .line 3339
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;->getAccountStatusPolicy()Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    move-result-object v1

    .line 3342
    :cond_18
    sget-object v0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;->DEFAULT:Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "DEFAULT"

    goto :goto_a

    :cond_19
    const-string v0, "P1"

    :goto_a
    const-string v1, "accountStatusPolicy"

    .line 306
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v0, "openid.oa2.scope"

    const-string v1, "device_auth_access"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v0, "isAccountStateFixUpFlow"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1a

    const-string p3, "0"

    .line 315
    invoke-virtual {p0, p3}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aQ(Ljava/lang/String;)V

    .line 319
    :cond_1a
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bU()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aS(Ljava/lang/String;)V

    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1b

    .line 326
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aW(Ljava/lang/String;)V

    .line 329
    :cond_1b
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->gK:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "OpenIdRequest created with reqType="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " host="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    :cond_1c
    const-string p1, "An unexpected error has occurred! Received null for URI host. This should not happen"

    .line 2459
    sget-object p2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->gK:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static aX(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 766
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 767
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 768
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 769
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->ce()Z

    .line 771
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p0, "/ap/maplanding"

    .line 777
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 779
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static aY(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 784
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 785
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 786
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 787
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->ce()Z

    .line 789
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p0, "/ap/mapcancel"

    .line 795
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 797
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p1, "%s#%s"

    .line 883
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p0, p0, [Ljava/lang/Object;

    .line 5021
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v0, p0, v1

    const-string p1, "%x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private s(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.amazon.identity.ap.pageid"

    .line 359
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aU(Ljava/lang/String;)V

    :cond_1
    const-string v0, "com.amazon.identity.ap.assoc_handle"

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 367
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "amazon.co.jp"

    .line 4045
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "amzn_device_jp"

    goto :goto_0

    :cond_2
    const-string v1, "amazon.cn"

    .line 4049
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "amzn_device_cn"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 372
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aT(Ljava/lang/String;)V

    :cond_5
    const-string v0, "com.amazon.identity.ap.clientContext"

    .line 375
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 379
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aV(Ljava/lang/String;)V

    :cond_6
    const-string v0, "com.amazon.identity.ap.additionalSignInParameters"

    .line 383
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 387
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 388
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 390
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 391
    iget-object v4, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    const-string v0, "com.amazon.identity.ap.request.parameters"

    .line 396
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 400
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 402
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 403
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 405
    iget-object v4, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, p1, v0

    const/4 v1, 0x1

    .line 413
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "Invalid value type passed in for AuthPortalOptions.KEY_REQUEST_PARAMETERS, only strings are allowed, please us Bundle.putString. Object in violation key: %s object type: %s"

    .line 411
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 414
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->gK:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string v0, "federated_auth_config"

    .line 421
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;

    if-eqz p1, :cond_a

    .line 427
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->getRelyingParty()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "relyingParty"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->getIdentityProvider()Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "identityProvider"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v0, "request"

    const-string/jumbo v1, "signin"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method


# virtual methods
.method public aQ(Ljava/lang/String;)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v1, "openid.pape.max_auth_age"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public aR(Ljava/lang/String;)V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v1, "openid.claimed_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v1, "openid.identity"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public aS(Ljava/lang/String;)V
    .locals 2

    .line 514
    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->iq:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v1, "openid.return_to"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public aT(Ljava/lang/String;)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v1, "openid.assoc_handle"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public aU(Ljava/lang/String;)V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string/jumbo v1, "pageId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public aV(Ljava/lang/String;)V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string v1, "clientContext"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public aW(Ljava/lang/String;)V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "device:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "openid.oa2.client_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 601
    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->is:Ljava/util/Map;

    return-void
.end method

.method public bQ()V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    const-string v1, "authCookies"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bR()Ljava/lang/String;
    .locals 7

    .line 608
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v2, "isCallbackFrom3pLogin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v2, "3pCallbackQuery"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 4587
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->is:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4589
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->is:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4590
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->is:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4593
    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4595
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 623
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "openid.oa2.code_challenge"

    .line 4630
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "openid.oa2.code_challenge_method"

    .line 4631
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4635
    iget-object v5, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    .line 4640
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 4641
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 4642
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4644
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4646
    iget-object v6, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4648
    iget-object v6, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 4652
    :cond_4
    sget-object v5, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->gK:Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_2

    .line 4655
    :cond_5
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4657
    iget-object v6, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 4659
    iget-object v6, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 4663
    :cond_6
    sget-object v5, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->gK:Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_2

    .line 4668
    :cond_7
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 4672
    :cond_8
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 624
    :goto_3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bS()Ljava/lang/String;
    .locals 5

    .line 706
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 710
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "%s://%s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bT()Ljava/lang/String;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->iq:Ljava/lang/String;

    return-object v0
.end method

.method public bU()Ljava/lang/String;
    .locals 4

    .line 729
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string/jumbo v1, "return_to_domain"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 739
    :goto_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 741
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v3, "ab_federated_auth"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v3, "domain_hint"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v3, "app_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 743
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_1
    const-string v2, "https"

    .line 747
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 750
    :goto_1
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->ce()Z

    .line 752
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "/ap/maplanding"

    .line 759
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 761
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bV()Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ip:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->io:Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "disableLoginPrepopulate"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->ir:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 680
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 682
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->eb:Landroid/os/Bundle;

    const-string v2, "federated_auth_config"

    .line 683
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;

    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3p_access_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
