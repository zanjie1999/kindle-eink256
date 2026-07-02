.class final Lcom/amazon/kindle/map/AuthPortalInfoProvider;
.super Ljava/lang/Object;
.source "AuthPortalInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static authPortals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/amazon/kindle/map/AuthPortalInfoProvider;


# instance fields
.field private needsUpdate:Z

.field private final settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    const-class v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->instance:Lcom/amazon/kindle/map/AuthPortalInfoProvider;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->authPortals:Ljava/util/Map;

    const-string v0, "US"

    const-string v1, "amzn_kindle_for_android_us"

    const-string v2, "amazon.com"

    .line 31
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BR"

    const-string v1, "amzn_kindle_for_android_br"

    const-string v2, "amazon.com.br"

    .line 32
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MX"

    const-string v1, "amzn_kindle_for_android_mx"

    const-string v2, "amazon.com.mx"

    .line 33
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CA"

    const-string v1, "amzn_kindle_for_android_ca"

    const-string v2, "amazon.ca"

    .line 34
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DE"

    const-string v1, "amzn_kindle_for_android_de"

    const-string v2, "amazon.de"

    .line 35
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ES"

    const-string v1, "amzn_kindle_for_android_es"

    const-string v2, "amazon.es"

    .line 36
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FR"

    const-string v1, "amzn_kindle_for_android_fr"

    const-string v2, "amazon.fr"

    .line 37
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GB"

    const-string v1, "amzn_kindle_for_android_uk"

    const-string v2, "amazon.co.uk"

    .line 38
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IT"

    const-string v1, "amzn_kindle_for_android_it"

    const-string v2, "amazon.it"

    .line 39
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CN"

    const-string v1, "amzn_kindle_for_android_cn"

    const-string v2, "amazon.cn"

    .line 40
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IN"

    const-string v1, "amzn_kindle_for_android_in"

    const-string v2, "amazon.in"

    .line 41
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "JP"

    const-string v1, "amzn_kindle_for_android_jp"

    const-string v2, "amazon.co.jp"

    .line 42
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NL"

    const-string v1, "amzn_kindle_for_android_nl"

    const-string v2, "amazon.nl"

    .line 43
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->needsUpdate:Z

    .line 73
    new-instance v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/map/AuthPortalInfoProvider$1;-><init>(Lcom/amazon/kindle/map/AuthPortalInfoProvider;)V

    iput-object v0, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 84
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->registerSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kindle/map/AuthPortalInfoProvider;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->needsUpdate:Z

    return p1
.end method

.method private static addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 111
    new-instance v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/map/AuthPortalInfoProvider$1;)V

    .line 112
    sget-object p1, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->TAG:Ljava/lang/String;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v1, "Adding AuthPortal mapping: %s -> %s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object p1, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->authPortals:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getAuthPortalInfo(Ljava/lang/String;)Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;
    .locals 6

    .line 117
    iget-boolean v0, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->needsUpdate:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->readAuthPortalMappings()V

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "US"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->TAG:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "No country supplied, assuming US"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->authPortals:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;

    goto :goto_0

    .line 127
    :cond_1
    sget-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->authPortals:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;

    if-nez v0, :cond_2

    .line 129
    sget-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->TAG:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v3

    const-string v5, "No auth portal info configured for country %s, assuming US."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->authPortals:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;

    .line 136
    :cond_2
    :goto_0
    sget-object v2, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object p1, v4, v1

    const-string p1, "Returning %s for country %s."

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kindle/map/AuthPortalInfoProvider;
    .locals 1

    .line 88
    sget-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->instance:Lcom/amazon/kindle/map/AuthPortalInfoProvider;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;

    invoke-direct {v0}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;-><init>()V

    sput-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->instance:Lcom/amazon/kindle/map/AuthPortalInfoProvider;

    .line 91
    :cond_0
    sget-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->instance:Lcom/amazon/kindle/map/AuthPortalInfoProvider;

    return-object v0
.end method

.method private readAuthPortalMappings()V
    .locals 8

    .line 141
    sget-object v0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->TAG:Ljava/lang/String;

    const-string v1, "Loading AuthPortal mappings from settings controller."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getAuthPortalCountries()Ljava/util/List;

    move-result-object v1

    .line 144
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getAuthPortalHandles()Ljava/util/List;

    move-result-object v2

    .line 145
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getAuthPortalDomains()Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    const-string v3, "US"

    .line 149
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    sget-object v3, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->authPortals:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 151
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 152
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->addAuthPortalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iput-boolean v3, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->needsUpdate:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->getAuthPortalInfo(Ljava/lang/String;)Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;->access$200(Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHandle(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->getAuthPortalInfo(Ljava/lang/String;)Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;->access$100(Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
