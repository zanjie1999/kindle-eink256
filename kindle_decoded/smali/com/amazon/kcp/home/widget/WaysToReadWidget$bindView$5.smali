.class public final Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$5;
.super Ljava/lang/Object;
.source "WaysToReadWidget.kt"

# interfaces
.implements Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/WaysToReadWidget;->bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/WaysToReadWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/WaysToReadWidget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$5;->this$0:Lcom/amazon/kcp/home/widget/WaysToReadWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;)V
    .locals 9

    .line 138
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$5;->this$0:Lcom/amazon/kcp/home/widget/WaysToReadWidget;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->access$getSwipeMetricRecorded$p(Lcom/amazon/kcp/home/widget/WaysToReadWidget;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$5;->this$0:Lcom/amazon/kcp/home/widget/WaysToReadWidget;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->access$getFastMetrics$p(Lcom/amazon/kcp/home/widget/WaysToReadWidget;)Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    move-result-object v0

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$5;->this$0:Lcom/amazon/kcp/home/widget/WaysToReadWidget;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->getCardData()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    .line 140
    new-instance v2, Lcom/amazon/kindle/home/model/HomeAction;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    const-string v3, "SWIPE"

    const-string v4, "VIEW"

    invoke-direct {v2, v3, v4, p1}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$5;->this$0:Lcom/amazon/kcp/home/widget/WaysToReadWidget;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->getCardData()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    .line 139
    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    .line 142
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WaysToReadWidget$bindView$5;->this$0:Lcom/amazon/kcp/home/widget/WaysToReadWidget;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/widget/WaysToReadWidget;->access$setSwipeMetricRecorded$p(Lcom/amazon/kcp/home/widget/WaysToReadWidget;Z)V

    :cond_0
    return-void
.end method
