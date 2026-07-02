.class Lcom/amazon/weblab/mobile/service/ServiceRequest;
.super Ljava/lang/Object;
.source "ServiceRequest.java"


# static fields
.field private static final ACCEPT_KEY:Ljava/lang/String; = "accept"

.field private static final ANDROID_FAILED_PACKAGE_NAME:Ljava/lang/String; = "ANDROID_FAILED_PACKAGE_NAME"

.field private static final APP_ID_PARAM:Ljava/lang/String; = "app-id"

.field private static final APP_NAME_MAX_SIZE:I = 0x32

.field private static final APP_NAME_TOO_LONG_SUFFIX:Ljava/lang/String; = "..."

.field private static final APP_VERSION_PARAM:Ljava/lang/String; = "app-version"

.field private static final CLIENT_ID_KEY:Ljava/lang/String; = "x-client-id"

.field private static final DIRECTED_ID_PARAM:Ljava/lang/String; = "directed-id"

.field private static final HOST_APPLICATION_PARAM:Ljava/lang/String; = "host-app"

.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final LIBRARY_ID_PARAM:Ljava/lang/String; = "library-id"

.field private static final MARKETPLACE_ID_PARAM:Ljava/lang/String; = "marketplace-id"

.field private static final OS_PARAM:Ljava/lang/String; = "os"

.field private static final OS_VERSION_PARAM:Ljava/lang/String; = "os-version"

.field private static final PACKAGE_NAME_MAX_SIZE:I = 0x32

.field private static final SESSION_ID_PARAM:Ljava/lang/String; = "session-id"

.field private static final STAGE_PARAMETER_NAME:Ljava/lang/String; = "stage"


# instance fields
.field private mAppVersion:Ljava/lang/String;

.field private mClientAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mClientIdentifier:Ljava/lang/String;

.field private mDirectedId:Ljava/lang/String;

.field private mDomainParameterValue:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

.field private mMarketplaceId:Ljava/lang/String;

.field private mOS:Ljava/lang/String;

.field private mOSVersion:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;

.field private mXClientId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    .line 77
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 81
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getOSName()Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getClientAttributes()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/model/SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mSessionId:Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/model/SessionInfo;->getMarketplaceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mMarketplaceId:Ljava/lang/String;

    .line 99
    invoke-virtual {p3}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->getDirectedId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mDirectedId:Ljava/lang/String;

    .line 100
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getApplicationName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mXClientId:Ljava/lang/String;

    .line 101
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getApplicationVersion()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mAppVersion:Ljava/lang/String;

    .line 102
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getOSName()Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mOS:Ljava/lang/String;

    .line 103
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getOSVersion()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mOSVersion:Ljava/lang/String;

    .line 104
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getClientAttributes()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mClientAttributes:Ljava/util/Map;

    .line 105
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mClientIdentifier:Ljava/lang/String;

    .line 106
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getDomain()Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mDomainParameterValue:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client attributes can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OS version can\'t be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OS can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "App version can\'t be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "App name can\'t be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attributes can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "info can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getHostAppName()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 179
    :try_start_0
    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/ApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "ServiceRequestPackageHostAppEmpty"

    const-string v2, "Empty String"

    .line 182
    iget-object v3, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mClientIdentifier:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-object v0

    .line 186
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mClientIdentifier:Ljava/lang/String;

    const-string v3, "ServiceRequestHostAppException"

    invoke-static {v3, v1, v2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 4

    .line 163
    :try_start_0
    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/ApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const-string v0, "ANDROID_FAILED_PACKAGE_NAME"

    return-object v0
.end method


# virtual methods
.method appendParamToUrl(Landroid/net/Uri$Builder;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mSessionId:Ljava/lang/String;

    const-string/jumbo v1, "session-id"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mMarketplaceId:Ljava/lang/String;

    const-string v1, "marketplace-id"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mDirectedId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mDirectedId:Ljava/lang/String;

    const-string v1, "directed-id"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mAppVersion:Ljava/lang/String;

    const-string v1, "app-version"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mOS:Ljava/lang/String;

    const-string/jumbo v1, "os"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 140
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mOSVersion:Ljava/lang/String;

    const-string/jumbo v1, "os-version"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 141
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/service/ServiceRequest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app-id"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "library-id"

    const-string v1, "1"

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 143
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/service/ServiceRequest;->getHostAppName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "host-app"

    .line 145
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mClientAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mDomainParameterValue:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->PROD:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    if-eq v0, v1, :cond_3

    .line 157
    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->getDomainValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stage"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    return-void
.end method

.method constructPayload()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method getHttpHeaders()Ljava/util/Map;
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

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "accept"

    const-string v2, "application/json"

    .line 117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/ServiceRequest;->mXClientId:Ljava/lang/String;

    const-string/jumbo v2, "x-client-id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
