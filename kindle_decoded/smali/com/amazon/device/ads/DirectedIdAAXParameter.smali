.class Lcom/amazon/device/ads/DirectedIdAAXParameter;
.super Lcom/amazon/device/ads/AAXParameterGroupParameter;
.source "AAXParameterGroupParameter.java"


# instance fields
.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final directedIdRetriever:Lcom/amazon/device/ads/DirectedIdRetriever;


# direct methods
.method constructor <init>()V
    .locals 7

    .line 126
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v2

    .line 127
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v3

    const-class v4, Lcom/amazon/device/ads/DirectedIdRetriever;

    const-string v5, "directedIdRetriever"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Lcom/amazon/device/ads/Settings;->getObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/ads/DirectedIdRetriever;

    .line 126
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/device/ads/DirectedIdAAXParameter;-><init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/DirectedIdRetriever;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/DirectedIdRetriever;)V
    .locals 2

    const-string v0, "directedId"

    const-string v1, "debug.directedId"

    .line 133
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/amazon/device/ads/AAXParameterGroupParameter;-><init>(Lcom/amazon/device/ads/DebugProperties;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 134
    iput-object p3, p0, Lcom/amazon/device/ads/DirectedIdAAXParameter;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 135
    iput-object p4, p0, Lcom/amazon/device/ads/DirectedIdAAXParameter;->directedIdRetriever:Lcom/amazon/device/ads/DirectedIdRetriever;

    return-void
.end method


# virtual methods
.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/amazon/device/ads/DirectedIdAAXParameter;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->WHITELISTED_CUSTOMER:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/Configuration;->getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/device/ads/DirectedIdAAXParameter;->directedIdRetriever:Lcom/amazon/device/ads/DirectedIdRetriever;

    if-eqz p1, :cond_0

    .line 143
    invoke-interface {p1}, Lcom/amazon/device/ads/DirectedIdRetriever;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
