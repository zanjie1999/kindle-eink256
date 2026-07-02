.class Lcom/amazon/device/ads/AAXParameter$VideoOptionsParameter;
.super Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoOptionsParameter"
.end annotation


# static fields
.field private static final MAXIMUM_DURATION_DEFAULT:I = 0x7530

.field private static final MINIMUM_DURATION_DEFAULT:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "video"

    const-string v1, "debug.videoOptions"

    .line 652
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 0

    .line 645
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$VideoOptionsParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;
    .locals 4

    .line 660
    new-instance v0, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;-><init>(Lcom/amazon/device/ads/AAXParameter$ParameterData;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->isVideoAdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 666
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "minVideoAdDuration"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 668
    new-instance v1, Lcom/amazon/device/ads/Parsers$IntegerParser;

    invoke-direct {v1}, Lcom/amazon/device/ads/Parsers$IntegerParser;-><init>()V

    .line 669
    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setDefaultValue(I)Lcom/amazon/device/ads/Parsers$IntegerParser;

    .line 670
    invoke-static {}, Lcom/amazon/device/ads/AAXParameter;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    const-string v3, "The minVideoAdDuration advanced option could not be parsed properly."

    .line 671
    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogMessage(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    .line 672
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Parsers$IntegerParser;->parse(Ljava/lang/String;)I

    move-result v3

    :cond_0
    const-string/jumbo v1, "minAdDuration"

    .line 674
    invoke-static {v0, v1, v3}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 677
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "maxVideoAdDuration"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x7530

    if-eqz v1, :cond_1

    .line 679
    new-instance v1, Lcom/amazon/device/ads/Parsers$IntegerParser;

    invoke-direct {v1}, Lcom/amazon/device/ads/Parsers$IntegerParser;-><init>()V

    .line 680
    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setDefaultValue(I)Lcom/amazon/device/ads/Parsers$IntegerParser;

    .line 681
    invoke-static {}, Lcom/amazon/device/ads/AAXParameter;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    const-string v3, "The maxVideoAdDuration advanced option could not be parsed properly."

    .line 682
    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogMessage(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    .line 683
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/Parsers$IntegerParser;->parse(Ljava/lang/String;)I

    move-result v3

    :cond_1
    const-string/jumbo p1, "maxAdDuration"

    .line 685
    invoke-static {v0, p1, v3}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
