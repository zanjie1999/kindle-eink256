.class public final Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator;
.super Ljava/lang/Object;
.source "RatingReviewsBookInfoViewConfigurator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator$Companion;

    return-void
.end method

.method public static final configure(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;Landroid/widget/LinearLayout;Landroid/widget/RatingBar;Landroid/widget/TextView;Landroid/content/res/Resources;Landroid/view/View$OnClickListener;)V
    .locals 7

    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/readingactions/ui/widget/reviews/RatingReviewsBookInfoViewConfigurator$Companion;->configure(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;Landroid/widget/LinearLayout;Landroid/widget/RatingBar;Landroid/widget/TextView;Landroid/content/res/Resources;Landroid/view/View$OnClickListener;)V

    return-void
.end method
