.class public Lcom/amazon/kindle/yj/ui/ContentMissingView;
.super Landroid/widget/LinearLayout;
.source "ContentMissingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contentMissingEvent:Lcom/amazon/kindle/yj/events/ContentMissingEvent;

.field private context:Landroid/content/Context;

.field private errorIcon:Landroid/widget/ImageView;

.field private volatile isDownloadComplete:Z

.field private progressBarHorizontal:Landroid/widget/ProgressBar;

.field private progressBarSpinner:Landroid/widget/ProgressBar;

.field private progressStatus:I

.field private progressUpdateListener:Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;

.field private retryButton:Landroid/widget/Button;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->isDownloadComplete:Z

    .line 61
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/amazon/kindle/yj/ui/ContentMissingView;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->changeViewVisibility(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/amazon/kindle/yj/ui/ContentMissingView;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->isDownloadComplete:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/amazon/kindle/yj/ui/ContentMissingView;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->updateDownloadProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->progressBarSpinner:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->progressBarHorizontal:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->errorIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/Button;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->retryButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/yj/ui/ContentMissingView;IIIII)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->setVisibility(IIIII)V

    return-void
.end method

.method private changeViewVisibility(I)V
    .locals 1

    .line 182
    new-instance v0, Lcom/amazon/kindle/yj/ui/ContentMissingView$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/yj/ui/ContentMissingView$3;-><init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setVisibility(IIIII)V
    .locals 8

    .line 75
    :try_start_0
    new-instance v7, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;-><init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;IIIII)V

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    sget-object p2, Lcom/amazon/kindle/yj/ui/ContentMissingView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exception setting progress "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private updateDownloadProgress(I)V
    .locals 3

    .line 105
    :try_start_0
    new-instance v0, Lcom/amazon/kindle/yj/ui/ContentMissingView$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/yj/ui/ContentMissingView$2;-><init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    sget-object v0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception setting progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method deregisterProgressUpdateListener(Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->progressUpdateListener:Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;->deregisterProgressUpdateListener(Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 124
    sget v0, Lcom/amazon/kindle/krl/R$id;->progressive_download_progressbar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->progressBarSpinner:Landroid/widget/ProgressBar;

    .line 125
    sget v0, Lcom/amazon/kindle/krl/R$id;->progressive_download_progressbar_horizontal:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->progressBarHorizontal:Landroid/widget/ProgressBar;

    .line 126
    sget v0, Lcom/amazon/kindle/krl/R$id;->progressive_download_progress_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->textView:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/amazon/kindle/krl/R$id;->progressive_download_error_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->errorIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->progressStatus:I

    .line 130
    sget v0, Lcom/amazon/kindle/krl/R$id;->progressive_download_pageasset_unavailable_download_retry_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->retryButton:Landroid/widget/Button;

    .line 131
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onNlnModeChanged(Lcom/amazon/kindle/nln/NlnModeChangeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 248
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getNewMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;->END:Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getType()Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-boolean p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->isDownloadComplete:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 251
    invoke-direct {p0, p1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->changeViewVisibility(I)V

    goto :goto_0

    .line 253
    :cond_0
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getNewMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;->START:Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getType()Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 254
    invoke-direct {p0, p1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->changeViewVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method registerProgressUpdateListener(Lcom/amazon/kindle/yj/tracker/IAssetGroupProgressTracker;)V
    .locals 2

    .line 148
    new-instance v0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;-><init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;Lcom/amazon/kindle/yj/ui/ContentMissingView$1;)V

    iput-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->progressUpdateListener:Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;

    if-eqz p1, :cond_0

    .line 150
    invoke-interface {p1, v0}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;->registerProgressUpdateListener(Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;)V

    :cond_0
    return-void
.end method

.method public reportOneTapProgressiveDownloadMetrics()V
    .locals 5

    .line 263
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->contentMissingEvent:Lcom/amazon/kindle/yj/events/ContentMissingEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/yj/events/ContentMissingEvent;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v1

    .line 269
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x0

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v3

    const-string/jumbo v3, "oneTapProgressiveDownloadViewEnd"

    .line 268
    invoke-virtual {v1, v3, v0, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-void
.end method

.method public resetView()V
    .locals 6

    .line 141
    sget v4, Lcom/amazon/kindle/krl/R$string;->download_waiting:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->setVisibility(IIIII)V

    return-void
.end method

.method protected setContentMissingEvent(Lcom/amazon/kindle/yj/events/ContentMissingEvent;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->contentMissingEvent:Lcom/amazon/kindle/yj/events/ContentMissingEvent;

    return-void
.end method

.method public setRetryListener(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView;->retryButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 232
    new-instance v1, Lcom/amazon/kindle/yj/ui/ContentMissingView$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/yj/ui/ContentMissingView$4;-><init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public subscribeToNavigationEvents()V
    .locals 1

    .line 174
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public unsubscribeFromNavigationEvents()V
    .locals 1

    .line 167
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method
