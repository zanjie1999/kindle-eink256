.class public Lcom/amazon/device/ads/Configuration$ConfigOption;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigOption"
.end annotation


# static fields
.field public static final AAX_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final AD_PREF_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final AD_RESOURCE_PATH:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final BASE_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final IDENTIFY_USER_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final IDENTIFY_USER_SESSION_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final MADS_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final SIS_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final VIEWABLE_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final VIEWABLE_JAVASCRIPT_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final VIEWABLE_JS_VERSION_CONFIG:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final WHITELISTED_CUSTOMER:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final configOptions:[Lcom/amazon/device/ads/Configuration$ConfigOption;


# instance fields
.field private final allowEmpty:Z

.field private final dataType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final responseKey:Ljava/lang/String;

.field private final settingsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 72
    const-class v0, Ljava/lang/Long;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v4, "config-aaxHostname"

    const-string v5, "aaxHostname"

    invoke-direct {v3, v4, v2, v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->AAX_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 74
    new-instance v3, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v4, "config-adResourcePath"

    const-string v5, "adResourcePath"

    invoke-direct {v3, v4, v2, v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->AD_RESOURCE_PATH:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 76
    new-instance v3, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v4, "config-sisURL"

    const-string/jumbo v5, "sisURL"

    invoke-direct {v3, v4, v2, v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 78
    new-instance v3, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v4, "config-adPrefURL"

    const-string v5, "adPrefURL"

    invoke-direct {v3, v4, v2, v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->AD_PREF_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 80
    new-instance v3, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/4 v4, 0x1

    const-string v5, "config-madsHostname"

    const-string/jumbo v6, "madsHostname"

    invoke-direct {v3, v5, v2, v6, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    sput-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->MADS_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 82
    new-instance v3, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v5, "config-sisDomain"

    const-string/jumbo v6, "sisDomain"

    invoke-direct {v3, v5, v2, v6}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 84
    new-instance v3, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v5, "config-sendGeo"

    const-string/jumbo v6, "sendGeo"

    invoke-direct {v3, v5, v1, v6}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 86
    new-instance v3, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v5, "config-truncateLatLon"

    const-string/jumbo v6, "truncateLatLon"

    invoke-direct {v3, v5, v1, v6}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 88
    new-instance v3, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v5, "config-whitelistedCustomer"

    const-string/jumbo v6, "whitelistedCustomer"

    invoke-direct {v3, v5, v1, v6}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->WHITELISTED_CUSTOMER:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 90
    new-instance v1, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v3, "config-identifyUserInterval"

    const-string v5, "identifyUserInterval"

    invoke-direct {v1, v3, v0, v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->IDENTIFY_USER_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 92
    new-instance v1, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v3, "config-identifyUserSessionIdInterval"

    const-string v5, "identifyUserSessionIdInterval"

    invoke-direct {v1, v3, v0, v5, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->IDENTIFY_USER_SESSION_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 94
    new-instance v1, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v3, "config-viewableJavascriptCDNURL"

    const-string/jumbo v5, "viewableJavascriptCDNURL"

    invoke-direct {v1, v3, v2, v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JAVASCRIPT_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 96
    new-instance v1, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-class v3, Ljava/lang/Integer;

    const-string v5, "config-viewableJSVersionConfig"

    const-string/jumbo v6, "viewableJSVersion"

    invoke-direct {v1, v5, v3, v6}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JS_VERSION_CONFIG:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 98
    new-instance v1, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v3, "config-viewableInterval"

    const-string/jumbo v5, "viewableInterval"

    invoke-direct {v1, v3, v0, v5, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    sput-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 100
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-class v1, Lorg/json/JSONObject;

    const-string v3, "config-debugProperties"

    const-string v5, "debugProperties"

    invoke-direct {v0, v3, v1, v5, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 102
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-baseURL"

    const-string v3, "baseURL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->BASE_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 104
    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->AAX_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->AD_RESOURCE_PATH:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->AD_PREF_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->MADS_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->WHITELISTED_CUSTOMER:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->IDENTIFY_USER_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->IDENTIFY_USER_SESSION_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JAVASCRIPT_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JS_VERSION_CONFIG:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->configOptions:[Lcom/amazon/device/ads/Configuration$ConfigOption;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->settingsName:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->responseKey:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->dataType:Ljava/lang/Class;

    .line 143
    iput-boolean p4, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->allowEmpty:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSettingsName()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->settingsName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getAllowEmpty()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->allowEmpty:Z

    return v0
.end method

.method getDataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->dataType:Ljava/lang/Class;

    return-object v0
.end method

.method getResponseKey()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->responseKey:Ljava/lang/String;

    return-object v0
.end method
