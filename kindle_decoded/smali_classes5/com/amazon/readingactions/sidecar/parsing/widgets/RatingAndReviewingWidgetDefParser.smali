.class public final Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser;
.super Ljava/lang/Object;
.source "RatingAndReviewingWidgetDefParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser;->Companion:Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser$Companion;

    return-void
.end method

.method public static final parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/Map;)Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;",
            "Lcom/amazon/ea/sidecar/def/CommonData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;"
        }
    .end annotation

    sget-object v0, Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser;->Companion:Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/readingactions/sidecar/parsing/widgets/RatingAndReviewingWidgetDefParser$Companion;->parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;Lcom/amazon/ea/sidecar/def/CommonData;Ljava/util/Map;)Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;

    move-result-object p0

    return-object p0
.end method
