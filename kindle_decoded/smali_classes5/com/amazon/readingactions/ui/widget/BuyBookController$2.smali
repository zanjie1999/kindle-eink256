.class final Lcom/amazon/readingactions/ui/widget/BuyBookController$2;
.super Ljava/lang/Object;
.source "BuyBookController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BuyBookController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/buybook/BuyBookModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

.field final synthetic $rsMetadata:Ljava/util/HashMap;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BuyBookController;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->$rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->$rsMetadata:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 103
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getTAG$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Loading Detail Page"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$isOneTapEnabled$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Z

    move-result p1

    const-string v0, "ClickedSampleSeeInStore"

    invoke-static {v0, p1}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 105
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DidAnything"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 106
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 107
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getModel$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 109
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getRecommendation$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getModel$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v1, "BuyBookWidget"

    invoke-static {v1, p1, v0}, Lcom/amazon/ea/metrics/PurchaseAttributor;->trackPotentialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->$rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    .line 112
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->$rsMetadata:Ljava/util/HashMap;

    const-string v1, "AnyActionsBuyBookWidget"

    const-string v2, "SeeInStore"

    .line 111
    invoke-interface {p1, v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getRecommendation$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getModel$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 115
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getModel$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getSeeInStoreBookCoverRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {p1, v0, v2, v3, v1}, Lcom/amazon/ea/util/StoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BuyBookController$2;->this$0:Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BuyBookController;->access$getModel$p(Lcom/amazon/readingactions/ui/widget/BuyBookController;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/BuyBookActions;->CLICK_BOOK_COVER:Lcom/amazon/ea/metrics/BuyBookActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    return-void
.end method
