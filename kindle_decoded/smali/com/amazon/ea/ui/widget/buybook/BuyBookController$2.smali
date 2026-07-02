.class Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;
.super Ljava/lang/Object;
.source "BuyBookController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/buybook/BuyBookController;-><init>(Lcom/amazon/ea/model/widget/buybook/BuyBookModel;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/buybook/BuyBookController;

.field final synthetic val$model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

.field final synthetic val$rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

.field final synthetic val$rsMetadata:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;Lcom/amazon/ea/model/widget/buybook/BuyBookModel;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;Ljava/util/Map;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->this$0:Lcom/amazon/ea/ui/widget/buybook/BuyBookController;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->val$model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iput-object p3, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->val$rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    iput-object p4, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->val$rsMetadata:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 111
    invoke-static {}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Loading Detail Page"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->this$0:Lcom/amazon/ea/ui/widget/buybook/BuyBookController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->access$100(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)Z

    move-result p1

    const-string v0, "ClickedSampleSeeInStore"

    invoke-static {v0, p1}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 113
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DidAnything"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 114
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 115
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->val$model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 117
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->this$0:Lcom/amazon/ea/ui/widget/buybook/BuyBookController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->access$200(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->val$model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v1, "BuyBookWidget"

    invoke-static {v1, p1, v0}, Lcom/amazon/ea/metrics/PurchaseAttributor;->trackPotentialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->val$rsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->val$rsMetadata:Ljava/util/Map;

    const-string v1, "AnyActionsBuyBookWidget"

    const-string v2, "SeeInStore"

    invoke-interface {p1, v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->this$0:Lcom/amazon/ea/ui/widget/buybook/BuyBookController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->access$200(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->val$model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 123
    invoke-virtual {v2}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getSeeInStoreBookCoverRefTagFeatureId()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {p1, v0, v3, v2, v1}, Lcom/amazon/ea/util/StoreManager;->loadDetailPage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$2;->val$model:Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/BuyBookActions;->CLICK_BOOK_COVER:Lcom/amazon/ea/metrics/BuyBookActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    return-void
.end method
