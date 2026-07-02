.class public Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "HeaderWidgetDef.java"


# instance fields
.field public final book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final showShareButton:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    iput-object p5, p0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 38
    iput-boolean p8, p0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;->showShareButton:Z

    return-void
.end method
