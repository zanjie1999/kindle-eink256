.class public Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "BookDetailWidgetDef.java"


# instance fields
.field public final book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final widgetTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    iput-object p5, p0, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;->widgetTitle:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    return-void
.end method
