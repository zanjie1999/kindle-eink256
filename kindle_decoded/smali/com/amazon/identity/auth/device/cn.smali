.class public final Lcom/amazon/identity/auth/device/cn;
.super Lcom/amazon/identity/auth/device/env/EnvironmentUtils;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.cn"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.com.mx"

    const-string v2, "amzn_device_mx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.co.uk"

    const-string v2, "amzn_device_uk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.ca"

    const-string v2, "amzn_device_ca"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.de"

    const-string v2, "amzn_device_de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.fr"

    const-string v2, "amzn_device_fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.it"

    const-string v2, "amzn_device_it"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.in"

    const-string v2, "amzn_device_in"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.es"

    const-string v2, "amzn_device_es"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.co.jp"

    const-string v2, "amzn_device_jp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.cn"

    const-string v2, "amzn_device_cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.com.br"

    const-string v2, "amzn_device_br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.nl"

    const-string v2, "amzn_device_nl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.com.au"

    const-string v2, "amzn_device_au"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.ru"

    const-string v2, "amzn_device_ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.com.sa"

    const-string v2, "amzn_device_sa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.ae"

    const-string v2, "amzn_device_ae"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.se"

    const-string v2, "amzn_device_se"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    const-string/jumbo v1, "www.amazon.pl"

    const-string v2, "amzn_device_pl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public ba(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object p1, Lcom/amazon/identity/auth/device/cn;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string/jumbo p1, "www.amazon.com"

    return-object p1

    :cond_0
    const-string v0, "."

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "www"

    if-eqz v0, :cond_1

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "amazon."

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "www."

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    .line 74
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input was non-empty and doesn\'t look like a valid partial domain in production: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". If you were attempting to hit devo or pre-prod, please try following the steps to switch again."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "www."

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "."

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public bc(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "api.amazon.*"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public cg()Ljava/lang/String;
    .locals 1

    const-string v0, ".amazon.com"

    return-object v0
.end method

.method public ch()Ljava/lang/String;
    .locals 1

    const-string v0, ".amazon.co.uk"

    return-object v0
.end method

.method public ci()Ljava/lang/String;
    .locals 1

    const-string v0, ".amazon.co.jp"

    return-object v0
.end method

.method public cj()Ljava/lang/String;
    .locals 1

    const-string v0, ".amazon.cn"

    return-object v0
.end method

.method public ck()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "www.amazon.com"

    return-object v0
.end method

.method public cl()Ljava/lang/String;
    .locals 1

    const-string v0, "firs-ta-g7g.amazon.com"

    return-object v0
.end method

.method public cm()Ljava/lang/String;
    .locals 1

    const-string v0, "dcape-na.amazon.com"

    return-object v0
.end method

.method public cn()Ljava/lang/String;
    .locals 1

    const-string v0, "ATVPDKIKX0DER"

    return-object v0
.end method

.method public getPandaHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object p1, Lcom/amazon/identity/auth/device/cn;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string p1, "api.amazon.com"

    return-object p1

    :cond_0
    const-string v0, "."

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "api"

    if-eqz v0, :cond_1

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "amazon."

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "api."

    if-eqz v0, :cond_2

    .line 113
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 115
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    const-string/jumbo v0, "www"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 124
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input was non-empty and doesn\'t look like a valid partial domain in production: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". If you were attempting to hit devo or pre-prod, please try following the steps to switch again."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->v(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public w(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->u(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
