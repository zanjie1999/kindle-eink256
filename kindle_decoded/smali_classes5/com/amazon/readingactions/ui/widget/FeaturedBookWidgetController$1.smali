.class final Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$1;
.super Ljava/lang/Object;
.source "FeaturedBookWidgetController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 64
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getTAG$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Loading Detail Page"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "ClickedFeaturedLearnMore"

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 66
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getModel$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 67
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "DidAnything"

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 68
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getRecommendation$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getModel$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController$1;->this$0:Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;->access$getModel$p(Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;)Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->getLearnMoreRefTagFeatureId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnyActionsFeaturedBookWidget"

    .line 68
    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/ea/util/StoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
