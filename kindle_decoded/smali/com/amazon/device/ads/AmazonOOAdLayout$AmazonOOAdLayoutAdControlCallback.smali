.class Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;
.super Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;
.source "AmazonOOAdLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonOOAdLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AmazonOOAdLayoutAdControlCallback"
.end annotation


# instance fields
.field private actionCode:Lcom/amazon/device/ads/ActionCode;

.field final synthetic this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AmazonOOAdLayout;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    .line 183
    sget-object p1, Lcom/amazon/device/ads/ActionCode;->DISPLAY:Lcom/amazon/device/ads/ActionCode;

    iput-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->actionCode:Lcom/amazon/device/ads/ActionCode;

    return-void
.end method


# virtual methods
.method public onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 2

    .line 188
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->handleAdEvent(Lcom/amazon/device/ads/AdEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdEvent;->getAdEventType()Lcom/amazon/device/ads/AdEvent$AdEventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdEvent$AdEventType;->OTHER:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdEvent;->getCustomType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmazonMobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdEvent;->getParameters()Lcom/amazon/device/ads/ParameterMap;

    move-result-object p1

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/ParameterMap;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->getAdListenerExecutor()Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/AdListenerExecutor;->onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->getAdListenerExecutor()Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/AdProperties;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->getAdListenerExecutor()Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdLayout;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdReceived(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdData;)Lcom/amazon/device/ads/ActionCode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->actionCode:Lcom/amazon/device/ads/ActionCode;

    .line 210
    sget-object v1, Lcom/amazon/device/ads/AmazonOOAdLayout$1;->$SwitchMap$com$amazon$device$ads$ActionCode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 223
    invoke-super {p0, p1}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->onAdLoaded(Lcom/amazon/device/ads/AdProperties;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdLayout;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string v0, "Application handled ad render."

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object p1

    sget-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CUSTOM_RENDER_HANDLED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 219
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdLayout;->bypassAdRenderingProcess()V

    goto :goto_0

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdLayout;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string v0, "Application rejected ad."

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;

    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "Ad explicitly rejected by host application."

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdLayout;->adFailed(Lcom/amazon/device/ads/AdError;)V

    :goto_0
    return-void
.end method

.method public onAdRendered()V
    .locals 2

    .line 230
    sget-object v0, Lcom/amazon/device/ads/ActionCode;->HANDLED:Lcom/amazon/device/ads/ActionCode;

    iget-object v1, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->actionCode:Lcom/amazon/device/ads/ActionCode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdLayout$AmazonOOAdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AmazonOOAdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->adShown()V

    goto :goto_0

    .line 236
    :cond_0
    invoke-super {p0}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->onAdRendered()V

    :goto_0
    return-void
.end method
