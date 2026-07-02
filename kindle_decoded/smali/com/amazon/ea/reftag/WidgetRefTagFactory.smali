.class public Lcom/amazon/ea/reftag/WidgetRefTagFactory;
.super Ljava/lang/Object;
.source "WidgetRefTagFactory.java"


# instance fields
.field private layoutModelMetricsTag:Ljava/lang/String;

.field private pluginId:Ljava/lang/String;

.field private refTagSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->pluginId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->refTagSuffix:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->layoutModelMetricsTag:Ljava/lang/String;

    return-void
.end method

.method public static reftagForPositionInLayout(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%s_%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;
    .locals 7

    .line 45
    new-instance v6, Lcom/amazon/ea/reftag/RefTag;

    iget-object v1, p0, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->pluginId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->refTagSuffix:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->layoutModelMetricsTag:Ljava/lang/String;

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/reftag/RefTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
