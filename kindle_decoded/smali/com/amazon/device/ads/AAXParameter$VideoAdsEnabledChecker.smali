.class Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;
.super Ljava/lang/Object;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoAdsEnabledChecker"
.end annotation


# instance fields
.field private final parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AAXParameter$ParameterData;)V
    .locals 0

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    return-void
.end method


# virtual methods
.method public isVideoAdsEnabled()Z
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTargetingOptions;->isVideoEnabledSettable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "enableVideoAds"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 710
    iget-object v2, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v2}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$500(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$500(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$500(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->parameterData:Lcom/amazon/device/ads/AAXParameter$ParameterData;

    invoke-static {v0}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTargetingOptions;->isVideoAdsEnabled()Z

    move-result v0

    return v0
.end method
