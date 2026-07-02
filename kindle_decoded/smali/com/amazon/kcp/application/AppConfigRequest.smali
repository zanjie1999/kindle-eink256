.class public Lcom/amazon/kcp/application/AppConfigRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "AppConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;,
        Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;,
        Lcom/amazon/kcp/application/AppConfigRequest$Item;
    }
.end annotation


# static fields
.field private static final IS_YJ_SUPPORTED:Ljava/lang/String; = "yj_enabled"

.field private static final TAG:Ljava/lang/String;

.field private static hasSucceeded:Z


# instance fields
.field private final items:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/application/AppConfigRequest$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final requestCompleteListener:Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/kcp/application/AppConfigRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AppConfigRequest;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/amazon/kcp/application/AppConfigRequest;->hasSucceeded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AppConfigRequest;-><init>(Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;)V
    .locals 1

    .line 85
    const-class v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/AppConfigRequest;-><init>(Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/application/AppConfigRequest$Item;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    .line 90
    invoke-direct {p0}, Lcom/amazon/kcp/application/AppConfigRequest;->createUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 91
    invoke-direct {p0}, Lcom/amazon/kcp/application/AppConfigRequest;->createResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 92
    iput-object p2, p0, Lcom/amazon/kcp/application/AppConfigRequest;->items:Ljava/util/Set;

    .line 93
    iput-object p1, p0, Lcom/amazon/kcp/application/AppConfigRequest;->requestCompleteListener:Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/kcp/application/AppConfigRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/AppConfigRequest;Lorg/json/JSONObject;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AppConfigRequest;->parseAppConfig(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 42
    sput-boolean p0, Lcom/amazon/kcp/application/AppConfigRequest;->hasSucceeded:Z

    return p0
.end method

.method private createResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 1

    .line 180
    new-instance v0, Lcom/amazon/kcp/application/AppConfigRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AppConfigRequest$1;-><init>(Lcom/amazon/kcp/application/AppConfigRequest;)V

    return-object v0
.end method

.method private createUrl()Ljava/lang/String;
    .locals 9

    const-string v0, "UTF-8"

    .line 114
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/amazon/kindle/services/authentication/TokenEncryptor;->getEncryptedDSN(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceModelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v5

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getAppConfigURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "?eid="

    .line 122
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&deviceType="

    .line 123
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&osVersion="

    .line 124
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&appVersion="

    .line 125
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&model="

    .line 126
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 132
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 131
    invoke-interface {v1, v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidDeviceInformationProvider(Landroid/content/Context;)Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "&GLRenderer="

    .line 136
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getGpuRenderer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&GLVendor="

    .line 138
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getGpuVendor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&GLVersion="

    .line 140
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getGpuVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&CPUFeatures="

    .line 142
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getCPUFeatures()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&Processor="

    .line 144
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getProcessor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&CPUArchitecture="

    .line 146
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getCPUArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&CPUInstructionSets="

    .line 148
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getCPUInstructionSets()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&Manufacturer="

    .line 150
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&Hardware="

    .line 152
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getHardware()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&Model="

    .line 154
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getDeviceModelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&Brand="

    .line 156
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&APILevel="

    .line 158
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getAndroidApiLevel()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&GLExtensions="

    .line 159
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getGpuExtensions()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception fetching CPU information from device. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    :cond_0
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DebugSettings"

    .line 170
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "ForcedAppUpdate"

    .line 171
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&forceMinSoftwareVersion="

    .line 172
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x1

    add-long/2addr v5, v0

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasSucceeded()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/amazon/kcp/application/AppConfigRequest;->hasSucceeded:Z

    return v0
.end method

.method private parseAppConfig(Lorg/json/JSONObject;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/application/AppConfigRequest;->items:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->MIN_SOFTWARE_VERSION:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AppConfigRequest;->parseMinSwVersion(Lorg/json/JSONObject;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AppConfigRequest;->items:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->AUTH_PORTALS:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AppConfigRequest;->parseAuthPortals(Lorg/json/JSONObject;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/AppConfigRequest;->items:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->FTUE_LOADING_SCREEN:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AppConfigRequest;->parseFTUELoadingScreen(Lorg/json/JSONObject;)V

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/application/AppConfigRequest;->items:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->DCP_SETTINGS:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AppConfigRequest;->parseDcpSettings(Lorg/json/JSONObject;)V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/application/AppConfigRequest;->items:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->CAPABILITIES:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AppConfigRequest;->parseIsYJSupported(Lorg/json/JSONObject;)V

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/application/AppConfigRequest;->items:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->KFA_TO_KFC_MIGRATION_NOTIFICATION_PERIOD:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AppConfigRequest;->parseKfaToKfcMigrationNotificationPeriod(Lorg/json/JSONObject;)V

    :cond_5
    return-void
.end method

.method private parseAuthPortals(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, " - "

    .line 289
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->AUTH_PORTALS:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AppConfigRequest$Item;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 295
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 296
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 299
    sget-object v8, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;->HANDLE:Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v8, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;->DOMAIN:Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object p1

    invoke-interface {p1, v2, v3, v4}, Lcom/amazon/kcp/application/IAppSettingsController;->setAuthPortalMappings(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private parseDcpSettings(Lorg/json/JSONObject;)V
    .locals 5

    .line 258
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->DCP_SETTINGS:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AppConfigRequest$Item;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 259
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 260
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 263
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v0, v2, v3}, Lcom/amazon/kcp/application/IAppSettingsController;->setDcpSettings(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    sget-object p1, Lcom/amazon/kcp/application/AppConfigRequest;->TAG:Ljava/lang/String;

    const-string v0, "No dcp settings found in app config"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private parseFTUELoadingScreen(Lorg/json/JSONObject;)V
    .locals 1

    .line 312
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->FTUE_LOADING_SCREEN:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AppConfigRequest$Item;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 313
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAppSettingsController;->setDisableFTUELoadingScreen(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private parseIsYJSupported(Lorg/json/JSONObject;)V
    .locals 2

    .line 244
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->CAPABILITIES:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AppConfigRequest$Item;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v1, "yj_enabled"

    .line 246
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 249
    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAppSettingsController;->setIsYJSupportedByBlacklist(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private parseKfaToKfcMigrationNotificationPeriod(Lorg/json/JSONObject;)V
    .locals 2

    .line 321
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->KFA_TO_KFC_MIGRATION_NOTIFICATION_PERIOD:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AppConfigRequest$Item;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieving KFAtoKFCMigrationNotificationPeriod  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-lez p1, :cond_0

    .line 324
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAppSettingsController;->setKfaToKfcMigrationNotificationPeriodInDays(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private parseMinSwVersion(Lorg/json/JSONObject;)V
    .locals 5

    .line 275
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->MIN_SOFTWARE_VERSION:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AppConfigRequest$Item;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 277
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getMinSoftwareVersion()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    .line 279
    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IAppSettingsController;->setMinSoftwareVersion(J)V

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Min software version set to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/amazon/kcp/application/AppConfigRequest;->requestCompleteListener:Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1}, Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;->onAppConfigRequestComplete()V

    :cond_0
    return v0
.end method
