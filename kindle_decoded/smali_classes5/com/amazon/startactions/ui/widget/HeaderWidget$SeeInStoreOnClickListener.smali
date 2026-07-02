.class Lcom/amazon/startactions/ui/widget/HeaderWidget$SeeInStoreOnClickListener;
.super Ljava/lang/Object;
.source "HeaderWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/HeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeeInStoreOnClickListener"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final refTag:Lcom/amazon/ea/reftag/RefTag;

.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/HeaderWidget;Ljava/lang/String;Lcom/amazon/ea/reftag/RefTag;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$SeeInStoreOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$SeeInStoreOnClickListener;->asin:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$SeeInStoreOnClickListener;->refTag:Lcom/amazon/ea/reftag/RefTag;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 251
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$SeeInStoreOnClickListener;->asin:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$SeeInStoreOnClickListener;->refTag:Lcom/amazon/ea/reftag/RefTag;

    const-string v2, "AnyActionsHeaderWidget"

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/ea/util/StoreManager;->loadStorePage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Lcom/amazon/ea/reftag/RefTag;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$SeeInStoreOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/startactions/metrics/BookDetailActions;->CLICK_SEE_IN_STORE:Lcom/amazon/startactions/metrics/BookDetailActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 254
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/HeaderWidget$SeeInStoreOnClickListener;->this$0:Lcom/amazon/startactions/ui/widget/HeaderWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 255
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "SeeInStore"

    invoke-interface {v0, v2, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
