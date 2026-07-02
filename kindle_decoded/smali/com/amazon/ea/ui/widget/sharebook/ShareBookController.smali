.class public Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "ShareBookController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$ShareBookOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final SOCIAL_SHARING_ENTRY_POINT_END_ACTIONS_SHARING_WIDGET:Ljava/lang/String; = "END_ACTIONS_SHARING_WIDGET"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.widget.sharebook.ShareBookController"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;)Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;
    .locals 2

    .line 43
    invoke-static {}, Lcom/amazon/ea/ui/helper/ShareHelper;->isSharingSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ShareBookUnsupported"

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 45
    sget-object p0, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;->TAG:Ljava/lang/String;

    const-string v0, "ShareBookWidgetDef invalidated; share book widget is not supported."

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_1
    new-instance v0, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;-><init>(Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 74
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->endactions_share_book:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    sget p2, Lcom/amazon/kindle/ea/R$id;->recommend_header_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget p2, Lcom/amazon/kindle/ea/R$id;->recommend_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;->buttonText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v0, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$ShareBookOnClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$ShareBookOnClickListener;-><init>(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$1;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 4

    .line 62
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DisplayedShareBookWidget"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 65
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "ShareBookWidgetShareButtonClicked"

    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v2, v0

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
