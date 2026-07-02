.class final Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$1;
.super Ljava/lang/Object;
.source "BookGridController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $rec:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$1;->$rec:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iput p3, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$1;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 322
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$1;->$rec:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    const-string/jumbo v1, "rec.asin"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$1;->$index:I

    invoke-static {p1, v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$loadShareSheet(Lcom/amazon/readingactions/ui/widget/BookGridController;Ljava/lang/String;I)V

    return-void
.end method
