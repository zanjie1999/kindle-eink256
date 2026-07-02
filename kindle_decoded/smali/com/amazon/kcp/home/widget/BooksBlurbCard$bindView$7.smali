.class public final Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;
.super Ljava/lang/Object;
.source "BooksBlurbCard.kt"

# interfaces
.implements Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/BooksBlurbCard;->bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $scrollView:Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/BooksBlurbCard;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;",
            ")V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;->this$0:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;->$scrollView:Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;)V
    .locals 9

    .line 166
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;->$scrollView:Lcom/amazon/kcp/home/widget/HorizontalScrollListenerScrollView;

    const-string/jumbo v0, "scrollView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;->this$0:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    invoke-static {v0, p1}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->access$convertPixelsToDp(Lcom/amazon/kcp/home/widget/BooksBlurbCard;I)I

    move-result p1

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;->this$0:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->access$getScrollMetricRecorded$p(Lcom/amazon/kcp/home/widget/BooksBlurbCard;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x113

    if-le p1, v0, :cond_0

    .line 169
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;->this$0:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->access$getFastMetrics$p(Lcom/amazon/kcp/home/widget/BooksBlurbCard;)Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    move-result-object v0

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;->this$0:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->getCardData()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    .line 170
    new-instance v2, Lcom/amazon/kindle/home/model/HomeAction;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    const-string v3, "SCROLL"

    const-string v4, "VIEW"

    invoke-direct {v2, v3, v4, p1}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;->this$0:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->getCardData()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    .line 169
    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    .line 172
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/BooksBlurbCard$bindView$7;->this$0:Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->access$setScrollMetricRecorded$p(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Z)V

    :cond_0
    return-void
.end method
