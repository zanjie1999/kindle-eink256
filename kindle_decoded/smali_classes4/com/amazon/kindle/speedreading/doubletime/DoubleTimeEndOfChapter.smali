.class public Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;
.super Landroid/app/Dialog;
.source "DoubleTimeEndOfChapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;
    }
.end annotation


# static fields
.field private static final AVG_READING_SPEED:I = 0xfa


# instance fields
.field private context:Landroid/content/Context;

.field private controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

.field private endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private metricsHandler:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

.field private nextEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private nextStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private savedWpm:I

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)V
    .locals 1

    .line 52
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->savedWpm:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->metricsHandler:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    .line 55
    iput-object p6, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 56
    iput-object p7, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 57
    iput-object p8, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->nextStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 58
    iput-object p9, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->nextEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 59
    iput-object p4, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    .line 60
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 65
    sget p2, Lcom/amazon/kindle/speedreading/R$layout;->dt_end_of_chapter:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 67
    iput-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0, p3, p5, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->updateColors(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;Landroid/view/View;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->updateEoc(Landroid/view/View;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->updateNextEoc(Landroid/view/View;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->setButtonListeners(Landroid/view/View;)V

    .line 78
    iput-object p10, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->metricsHandler:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    .line 79
    invoke-virtual {p10}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportEndOfChapterDialogShown()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->dismissDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->metricsHandler:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->savedWpm:I

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->nextStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->nextEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    return-object p0
.end method

.method private dismissDialog()V
    .locals 1

    .line 196
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->pauseDoubleTime()V

    return-void
.end method

.method private setButtonListeners(Landroid/view/View;)V
    .locals 1

    .line 156
    sget p1, Lcom/amazon/kindle/speedreading/R$id;->dt_eoc_dismiss:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 157
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget p1, Lcom/amazon/kindle/speedreading/R$id;->dt_eoc_continue:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 166
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$2;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget p1, Lcom/amazon/kindle/speedreading/R$id;->dt_eoc_share_button:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 176
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$3;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateEoc(Landroid/view/View;)V
    .locals 11

    .line 89
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->startPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->endPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->summarizeStatisticsBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;

    move-result-object v1

    .line 92
    iget-wide v2, v1, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->timeSpent:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    .line 93
    div-long v6, v2, v4

    long-to-int v7, v6

    .line 94
    rem-long v4, v2, v4

    long-to-int v5, v4

    const-wide/16 v8, 0x0

    cmp-long v4, v2, v8

    if-nez v4, :cond_0

    .line 99
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->controlPanel:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {v2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->getCurrentWordsPerMin()I

    move-result v2

    goto :goto_0

    .line 103
    :cond_0
    iget v4, v1, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->wordCount:I

    int-to-float v4, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 106
    :goto_0
    iput v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->savedWpm:I

    .line 108
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics;->clearSession()V

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/speedreading/R$plurals;->dt_eoc_words:I

    iget v1, v1, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeStatistics$SessionStatistic;->wordCount:I

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/speedreading/R$plurals;->dt_eoc_minutes:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-virtual {v1, v3, v7, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-nez v7, :cond_1

    move-object v1, v3

    .line 118
    :cond_1
    iget-object v6, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/speedreading/R$plurals;->dt_eoc_seconds:I

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v6

    .line 124
    :goto_1
    iget-object v5, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/speedreading/R$string;->dt_eoc_speed_message:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v9

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget v1, Lcom/amazon/kindle/speedreading/R$id;->dt_eoc_stat_line:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 129
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 130
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;->allowsSharing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 134
    sget p1, Lcom/amazon/kindle/speedreading/R$id;->dt_eoc_share_button:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private updateNextEoc(Landroid/view/View;)V
    .locals 3

    .line 147
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$EndOfChapterTask;-><init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 148
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeEndOfChapter;->dismissDialog()V

    .line 191
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public updateColors(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;Landroid/view/View;)V
    .locals 1

    .line 212
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 220
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 222
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 226
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 214
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 229
    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
