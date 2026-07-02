.class public final Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder;
.super Ljava/lang/Object;
.source "RatingAndReviewingModelBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder;->Companion:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder$Companion;

    .line 9
    const-class v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder;->TAG:Ljava/lang/String;

    return-object v0
.end method
