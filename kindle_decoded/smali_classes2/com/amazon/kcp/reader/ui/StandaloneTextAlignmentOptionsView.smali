.class public Lcom/amazon/kcp/reader/ui/StandaloneTextAlignmentOptionsView;
.super Landroid/widget/LinearLayout;
.source "StandaloneTextAlignmentOptionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final METRICS_CLASS:Ljava/lang/String; = "TextAlignmentOptionsView"

.field private static final METRICS_EVENT_ALIGNMENT_JUSTIFY_CLICKED:Ljava/lang/String; = "AlignJustifyClicked"

.field private static final METRICS_EVENT_ALIGNMENT_LEFT_CLICKED:Ljava/lang/String; = "AlignLeftClicked"


# instance fields
.field private textAlignJustify:Landroid/view/View;

.field private textAlignLeft:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setTextAlignmentSelected(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneTextAlignmentOptionsView;->textAlignJustify:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 106
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->JUSTIFY:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneTextAlignmentOptionsView;->textAlignLeft:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 111
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->LEFT:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 111
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 77
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/amazon/kindle/thirdparty/R$id;->text_align_justify:I

    if-ne v1, v2, :cond_0

    .line 82
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->JUSTIFY:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    const-string v1, "AlignJustifyClicked"

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/amazon/kindle/thirdparty/R$id;->text_align_left:I

    if-ne p1, v1, :cond_1

    .line 85
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->LEFT:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    const-string v1, "AlignLeftClicked"

    goto :goto_0

    .line 88
    :cond_1
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->JUSTIFY:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    const/4 v1, 0x0

    .line 90
    :goto_0
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setTextAlignment(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/StandaloneTextAlignmentOptionsView;->setTextAlignmentSelected(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V

    if-eqz v1, :cond_2

    .line 94
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "TextAlignmentOptionsView"

    invoke-virtual {p1, v2, v1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->text_align_left:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneTextAlignmentOptionsView;->textAlignLeft:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_0
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->text_align_justify:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneTextAlignmentOptionsView;->textAlignJustify:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/StandaloneTextAlignmentOptionsView;->syncSelectedOptions()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 153
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public syncSelectedOptions()V
    .locals 1

    .line 141
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getTextAlignment()Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/StandaloneTextAlignmentOptionsView;->setTextAlignmentSelected(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V

    return-void
.end method
