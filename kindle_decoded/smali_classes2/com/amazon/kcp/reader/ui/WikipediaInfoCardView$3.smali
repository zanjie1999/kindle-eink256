.class Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$3;
.super Ljava/lang/Object;
.source "WikipediaInfoCardView.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/ObservableWebView$OnScrollChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->setGestureListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$3;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$3;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    .line 164
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$000(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 165
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Landroid/graphics/Point;

    move-result-object v1

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$102(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;Landroid/graphics/Point;)Landroid/graphics/Point;

    return-void

    .line 175
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 176
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$3;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 177
    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 179
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$200()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v4

    .line 180
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$300()I

    move-result v4

    int-to-float v4, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v1

    .line 182
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 183
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p2, v4

    if-lez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 184
    :cond_4
    :goto_2
    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$002(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;Z)Z

    .line 187
    :cond_5
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$3;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$400(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Lcom/amazon/kcp/reader/ui/ObservableWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$3;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$000(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 189
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$3;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$500(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 191
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$3;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-static {p1, v2}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$502(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;Z)Z

    const-string p1, "Scroll"

    .line 192
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
