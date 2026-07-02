.class public Lcom/amazon/kcp/reader/ui/TextColorOptionsView;
.super Landroid/widget/LinearLayout;
.source "TextColorOptionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final METRICS_EVENT_BLACK_COLOR_CLICKED:Ljava/lang/String; = "BlackColorClicked"

.field private static final METRICS_EVENT_SEPIA_COLOR_CLICKED:Ljava/lang/String; = "SepiaColorClicked"

.field private static final METRICS_EVENT_WHITE_COLOR_CLICKED:Ljava/lang/String; = "WhiteColorClicked"


# instance fields
.field private dottedColorBlack:Landroid/view/View;

.field private dottedColorSepia:Landroid/view/View;

.field private dottedColorWhite:Landroid/view/View;

.field private fontColorBlack:Landroid/view/View;

.field private fontColorSepia:Landroid/view/View;

.field private fontColorWhite:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setColorSelected(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorWhite:Landroid/view/View;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorSepia:Landroid/view/View;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorBlack:Landroid/view/View;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 153
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
    .locals 6

    .line 73
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/amazon/kindle/krl/R$id;->dotted_button_white:I

    const-string v3, "BlackColorClicked"

    const-string v4, "SepiaColorClicked"

    const-string v5, "WhiteColorClicked"

    if-ne v1, v2, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_5

    .line 80
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 81
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/amazon/kindle/krl/R$id;->font_color_white:I

    if-ne v1, v2, :cond_1

    .line 85
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 86
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    :goto_0
    move-object v3, v5

    goto :goto_2

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/amazon/kindle/krl/R$id;->dotted_button_sepia:I

    if-ne v1, v2, :cond_2

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_5

    .line 92
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 93
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/amazon/kindle/krl/R$id;->font_color_sepia:I

    if-ne v1, v2, :cond_3

    .line 97
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 98
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    :goto_1
    move-object v3, v4

    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/amazon/kindle/krl/R$id;->dotted_button_black:I

    if-ne v1, v2, :cond_4

    .line 101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_5

    .line 104
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 105
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/amazon/kindle/krl/R$id;->font_color_black:I

    if-ne p1, v1, :cond_5

    .line 109
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 110
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->setColorSelected(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 115
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "TextColorOptionsView"

    invoke-virtual {p1, v1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_6
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 55
    sget v0, Lcom/amazon/kindle/krl/R$id;->dotted_button_white:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorWhite:Landroid/view/View;

    .line 56
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v0, Lcom/amazon/kindle/krl/R$id;->font_color_white:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->fontColorWhite:Landroid/view/View;

    .line 58
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget v0, Lcom/amazon/kindle/krl/R$id;->dotted_button_sepia:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorSepia:Landroid/view/View;

    .line 61
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget v0, Lcom/amazon/kindle/krl/R$id;->font_color_sepia:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->fontColorSepia:Landroid/view/View;

    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget v0, Lcom/amazon/kindle/krl/R$id;->dotted_button_black:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->dottedColorBlack:Landroid/view/View;

    .line 66
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget v0, Lcom/amazon/kindle/krl/R$id;->font_color_black:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TextColorOptionsView;->fontColorBlack:Landroid/view/View;

    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 158
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    return p1
.end method
