.class public abstract Lcom/amazon/identity/auth/device/env/EnvironmentUtils;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final iu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final iv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static volatile iw:Lcom/amazon/identity/auth/device/env/EnvironmentUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    .line 36
    new-instance v0, Lcom/amazon/identity/auth/device/cn;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/cn;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iw:Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    .line 38
    const-class v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->TAG:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v1, ".amazon.com"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v1, ".amazon.ca"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v1, ".amazon.com.br"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v1, ".amazon.com.mx"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v1, ".amazon.com.au"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v1, ".amazon.co.jp"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v2, ".amazon.com.sg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v2, ".amazon.sg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v1, ".amazon.cn"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v1, ".amazon.nl"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v1, ".amazon.it"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v1, ".amazon.de"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v1, ".amazon.co.uk"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v2, ".amazon.es"

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v2, ".amazon.fr"

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v2, ".amazon.in"

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v2, ".amazon.com.tr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v2, ".amazon.eg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v2, ".amazon.ae"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v2, ".amazon.sa"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v2, ".amazon.se"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    const-string v2, ".amazon.pl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;
    .locals 1

    .line 76
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iw:Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    return-object v0
.end method

.method public static cd()V
    .locals 1

    .line 85
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;->prod:Lcom/amazon/identity/auth/device/env/EnvironmentUtils$Environment;

    .line 1095
    new-instance v0, Lcom/amazon/identity/auth/device/cn;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/cn;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iw:Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    return-void
.end method

.method public static ce()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static cf()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v1, ".primevideo.com"

    .line 109
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, ".primevideo.co.uk"

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, ".primevideo.co.jp"

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, ".primevideo.de"

    .line 112
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, ".primevideo.in"

    .line 113
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public abstract ba(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract bb(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract bc(Ljava/lang/String;)Z
.end method

.method public bd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 254
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public be(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cg()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    sget-object v0, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->iv:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bf(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract cg()Ljava/lang/String;
.end method

.method public abstract ch()Ljava/lang/String;
.end method

.method public abstract ci()Ljava/lang/String;
.end method

.method public abstract cj()Ljava/lang/String;
.end method

.method public abstract ck()Ljava/lang/String;
.end method

.method public abstract cl()Ljava/lang/String;
.end method

.method public abstract cm()Ljava/lang/String;
.end method

.method public abstract cn()Ljava/lang/String;
.end method

.method public abstract getPandaHost(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/net/URL;

    const-string v1, "https"

    const/16 v2, 0x1bb

    invoke-direct {v0, v1, p1, v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected abstract t(Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public u(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .line 132
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->t(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 137
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ho;->E(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected v(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_sign_in_full_endpoint"

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract w(Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public x(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "marketplace_bundle"

    .line 284
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "marketplace_domain"

    .line 287
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    sget-object p1, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Using client passed marketplace domain root: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 295
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ho;->E(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->bf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
