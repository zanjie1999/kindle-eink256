.class public Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;
.super Ljava/lang/Object;
.source "TitleWidgetDef.java"


# instance fields
.field public final book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

.field public final metricsTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 11
    iput-object p2, p0, Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;->metricsTag:Ljava/lang/String;

    return-void
.end method
