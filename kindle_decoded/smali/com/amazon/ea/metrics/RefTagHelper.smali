.class public Lcom/amazon/ea/metrics/RefTagHelper;
.super Ljava/lang/Object;
.source "RefTagHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "_"

.field private static layoutModelMetricsTag:Ljava/lang/String; = null

.field private static refTagSuffix:Ljava/lang/String; = "d"

.field private static widgetIdToRefTagPlacementId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/metrics/RefTagHelper;->widgetIdToRefTagPlacementId:Ljava/util/Map;

    const-string v0, "d"

    .line 34
    sput-object v0, Lcom/amazon/ea/metrics/RefTagHelper;->layoutModelMetricsTag:Ljava/lang/String;

    return-void
.end method

.method public static getLayoutModelMetricsTag()Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Lcom/amazon/ea/metrics/RefTagHelper;->layoutModelMetricsTag:Ljava/lang/String;

    return-object v0
.end method

.method public static getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "widgetID is required"

    .line 75
    invoke-static {p0, v0}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "featureID is required"

    .line 76
    invoke-static {p1, v0}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 79
    sget-object v0, Lcom/amazon/ea/metrics/RefTagHelper;->widgetIdToRefTagPlacementId:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/amazon/ea/metrics/RefTagHelper;->widgetIdToRefTagPlacementId:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "d"

    :goto_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "r_ea"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 83
    sget-object v2, Lcom/amazon/ea/metrics/RefTagHelper;->layoutModelMetricsTag:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p1, v0, p0

    const/4 p0, 0x4

    sget-object p1, Lcom/amazon/ea/metrics/RefTagHelper;->refTagSuffix:Ljava/lang/String;

    aput-object p1, v0, p0

    const-string p0, "%s_%s_%s_%s_%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRefTagSuffix()Ljava/lang/String;
    .locals 1

    .line 125
    sget-object v0, Lcom/amazon/ea/metrics/RefTagHelper;->refTagSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public static getRefTagWithAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "widgetID is required"

    .line 99
    invoke-static {p0, v0}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "featureID is required"

    .line 100
    invoke-static {p1, v0}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "actionID is required"

    .line 101
    invoke-static {p2, v0}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/amazon/ea/metrics/RefTagHelper;->widgetIdToRefTagPlacementId:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "d"

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r_ea_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/ea/metrics/RefTagHelper;->layoutModelMetricsTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/amazon/ea/metrics/RefTagHelper;->refTagSuffix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReftagForChromeAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "featureId is required"

    .line 46
    invoke-static {p0, v0}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "actionId is required"

    .line 47
    invoke-static {p1, v0}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r_ea_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/amazon/ea/metrics/RefTagHelper;->refTagSuffix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWidgetPlacementRefTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lcom/amazon/ea/metrics/RefTagHelper;->widgetIdToRefTagPlacementId:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static initWithSidecarAndLayout(Lcom/amazon/ea/sidecar/def/Sidecar;Lcom/amazon/ea/model/layout/LayoutModel;)V
    .locals 1

    const-string v0, "Layout model is required"

    .line 146
    invoke-static {p1, v0}, Lcom/amazon/ea/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p1, Lcom/amazon/ea/model/layout/LayoutModel;->metricsTag:Ljava/lang/String;

    sput-object v0, Lcom/amazon/ea/metrics/RefTagHelper;->layoutModelMetricsTag:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/amazon/ea/metrics/RefTagHelper;->widgetIdToRefTagPlacementId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 149
    sget-object v0, Lcom/amazon/ea/metrics/RefTagHelper;->widgetIdToRefTagPlacementId:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/ea/model/layout/LayoutModel;->getWidgetIdToRefTagPlacementId()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-nez p0, :cond_0

    const-string p0, "d"

    goto :goto_0

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/Sidecar;->commonData:Lcom/amazon/ea/sidecar/def/CommonData;

    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/CommonData;->refTagSuffix:Ljava/lang/String;

    :goto_0
    sput-object p0, Lcom/amazon/ea/metrics/RefTagHelper;->refTagSuffix:Ljava/lang/String;

    return-void
.end method
