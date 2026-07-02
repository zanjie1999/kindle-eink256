.class Lcom/amazon/readingactions/ui/widget/BookDetailWidget$1;
.super Ljava/lang/Object;
.source "BookDetailWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BookDetailWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BookDetailWidget;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 56
    sget-object p1, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->TAG:Ljava/lang/String;

    const-string v0, "Loading Detail Page"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "DidAnything"

    .line 58
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 59
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ViewedInStoreBookDetails"

    invoke-static {v2, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 60
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object v0, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    .line 61
    invoke-virtual {v2}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    iget-object v3, v3, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v3, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object p1

    const-string v2, "AnyActionsBookDetailWidget"

    .line 60
    invoke-static {v0, v1, p1, v2}, Lcom/amazon/ea/util/StoreManager;->loadStorePage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Lcom/amazon/ea/reftag/RefTag;Ljava/lang/String;)Z

    return-void
.end method
