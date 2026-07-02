.class Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;
.super Ljava/lang/Object;
.source "BookRecommendationsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/BookRecommendationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeeInStoreOnClickListener"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final recIndex:I

.field final synthetic this$0:Lcom/amazon/startactions/ui/BookRecommendationsActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/BookRecommendationsActivity;Ljava/lang/String;I)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;->this$0:Lcom/amazon/startactions/ui/BookRecommendationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p2, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;->asin:Ljava/lang/String;

    .line 316
    iput p3, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;->recIndex:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 321
    new-instance p1, Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    const-string v0, "ln"

    const-string/jumbo v1, "r_ln"

    invoke-direct {p1, v1, v0, v0}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;->this$0:Lcom/amazon/startactions/ui/BookRecommendationsActivity;

    iget v2, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;->recIndex:I

    .line 322
    invoke-static {v1, v2}, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->access$300(Lcom/amazon/startactions/ui/BookRecommendationsActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object p1

    .line 323
    iget-object v0, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;->asin:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    const-string v2, "BookRecommendations"

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/ea/util/StoreManager;->loadStorePage(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;Lcom/amazon/ea/reftag/RefTag;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;->this$0:Lcom/amazon/startactions/ui/BookRecommendationsActivity;

    invoke-static {p1}, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->access$400(Lcom/amazon/startactions/ui/BookRecommendationsActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 326
    iget-object v0, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;->this$0:Lcom/amazon/startactions/ui/BookRecommendationsActivity;

    .line 327
    invoke-static {v0}, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->access$500(Lcom/amazon/startactions/ui/BookRecommendationsActivity;)Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget v1, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;->recIndex:I

    const-string v2, "ViewedInStoreBookDetails"

    invoke-static {v2, v0, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 326
    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 329
    iget-object v0, p0, Lcom/amazon/startactions/ui/BookRecommendationsActivity$SeeInStoreOnClickListener;->this$0:Lcom/amazon/startactions/ui/BookRecommendationsActivity;

    invoke-static {v0}, Lcom/amazon/startactions/ui/BookRecommendationsActivity;->access$500(Lcom/amazon/startactions/ui/BookRecommendationsActivity;)Lcom/amazon/ea/sidecar/def/widgets/BookRecommendationsWidgetDef;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
