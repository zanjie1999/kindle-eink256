.class Lcom/amazon/device/ads/DebugProperties;
.super Ljava/lang/Object;
.source "DebugProperties.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final instance:Lcom/amazon/device/ads/DebugProperties;


# instance fields
.field private final debugProperties:Ljava/util/Properties;

.field private final jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/amazon/device/ads/DebugProperties;

    invoke-direct {v0}, Lcom/amazon/device/ads/DebugProperties;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->instance:Lcom/amazon/device/ads/DebugProperties;

    .line 20
    const-class v0, Lcom/amazon/device/ads/DebugProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-direct {v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;-><init>()V

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/DebugProperties;-><init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    .line 80
    iput-object p1, p0, Lcom/amazon/device/ads/DebugProperties;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    .line 81
    sget-object p1, Lcom/amazon/device/ads/DebugProperties;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/DebugProperties;
    .locals 1

    .line 86
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->instance:Lcom/amazon/device/ads/DebugProperties;

    return-object v0
.end method


# virtual methods
.method public clearDebugProperties()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    return-void
.end method

.method public containsDebugProperty(Ljava/lang/String;)Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 126
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 130
    :catch_0
    iget-object v1, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "Unable to parse boolean debug property - property: %s, value: %s"

    invoke-virtual {v1, p1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public getDebugPropertyAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 105
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 109
    :catch_0
    iget-object v1, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "Unable to parse integer debug property - property: %s, value: %s"

    invoke-virtual {v1, p1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public getDebugPropertyAsJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 164
    :cond_0
    iget-object p2, p0, Lcom/amazon/device/ads/DebugProperties;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getDebugPropertyAsLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 147
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 151
    :catch_0
    iget-object v1, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "Unable to parse long debug property - property: %s, value: %s"

    invoke-virtual {v1, p1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public overwriteDebugProperties(Lorg/json/JSONObject;)V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/amazon/device/ads/DebugProperties;->clearDebugProperties()V

    .line 185
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->createMapFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    return-void
.end method
