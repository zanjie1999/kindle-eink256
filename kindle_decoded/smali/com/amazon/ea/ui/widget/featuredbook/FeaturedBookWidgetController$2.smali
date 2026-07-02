.class Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$2;
.super Ljava/lang/Object;
.source "FeaturedBookWidgetController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;-><init>(Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

.field final synthetic val$model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$2;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$2;->val$model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 87
    invoke-static {}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Loading Detail Page"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "ClickedFeaturedSeeInStoreBookCover"

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 89
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$2;->val$model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v2, v2, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 90
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "DidAnything"

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 91
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$2;->this$0:Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;->access$100(Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;)Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController$2;->val$model:Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v2, v1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 92
    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->getSeeInStoreBookCoverRefTagFeatureId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AnyActionsFeaturedBookWidget"

    .line 91
    invoke-static {p1, v0, v2, v1, v3}, Lcom/amazon/ea/util/StoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
