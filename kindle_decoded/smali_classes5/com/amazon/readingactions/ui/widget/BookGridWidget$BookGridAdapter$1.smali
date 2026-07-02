.class Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$1;
.super Ljava/lang/Object;
.source "BookGridWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;

.field final synthetic val$index:I

.field final synthetic val$rec:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;I)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$1;->this$1:Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$1;->val$rec:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iput p3, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 341
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$1;->this$1:Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$1;->val$rec:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridWidget$BookGridAdapter$1;->val$index:I

    invoke-static {p1, v0, v1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->access$300(Lcom/amazon/readingactions/ui/widget/BookGridWidget;Ljava/lang/String;I)V

    return-void
.end method
