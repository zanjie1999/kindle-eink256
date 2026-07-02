.class Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$2;
.super Ljava/lang/Object;
.source "StandaloneShareHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

.field final synthetic val$shareType:Lcom/amazon/kcp/reader/IShareHelper$ShareType;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$2;->this$0:Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

    iput-object p2, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$2;->val$shareType:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 608
    iget-object p1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$2;->this$0:Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

    iget-object p1, p1, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;->mSocialView:Landroid/widget/RelativeLayout;

    const v0, 0x7f090b24

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 609
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 610
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    if-ge v0, p1, :cond_0

    .line 611
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    invoke-static {}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$2;->val$shareType:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cancel"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "KAR_SOCIAL_SHARE"

    .line 611
    invoke-virtual {p1, v2, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 613
    iget-object p1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow$2;->this$0:Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return v1
.end method
