.class public Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "BookDetailWidgetDef.java"


# instance fields
.field public final book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

.field public final bseTitle:Ljava/lang/String;

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final seriesPositionData:Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

.field public final widgetTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    iput-object p5, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->widgetTitle:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->bseTitle:Ljava/lang/String;

    .line 46
    iput-object p8, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->seriesPositionData:Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    .line 47
    iput-object p9, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    return-void
.end method
