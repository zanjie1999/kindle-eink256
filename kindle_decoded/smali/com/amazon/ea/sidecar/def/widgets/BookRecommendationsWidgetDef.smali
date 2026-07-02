.class public Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "BookRecommendationsWidgetDef.java"


# instance fields
.field public final panelRowTitle:Ljava/lang/String;

.field public final recommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;",
            ">;"
        }
    .end annotation
.end field

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    iput-object p5, p0, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;->title:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;->panelRowTitle:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;->recommendations:Ljava/util/List;

    return-void
.end method
