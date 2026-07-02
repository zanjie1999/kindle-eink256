.class public Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;
.super Ljava/lang/Object;
.source "KRIFBackFromFootnoteMetricTracker.java"


# instance fields
.field private docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

.field private goToFootnotesClicked:Z

.field private volatile hasExternalScreen:Z

.field private nlnAfterGoToFootnotes:Z

.field private postNavCount:I

.field private prevIntPosition:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;->hasExternalScreen:Z

    .line 29
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;->goToFootnotesClicked:Z

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;->nlnAfterGoToFootnotes:Z

    .line 47
    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;->postNavCount:I

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    return-void
.end method


# virtual methods
.method public onKRXExternalScreenEvent(Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 96
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;->isOpened()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;->hasExternalScreen:Z

    return-void
.end method

.method public onNlnModeChangeEvent(Lcom/amazon/kindle/nln/NlnModeChangeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getType()Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;->END:Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    if-eq v0, v1, :cond_0

    return-void

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;->goToFootnotesClicked:Z

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getNewMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBackFromFootnoteMetricTracker;->nlnAfterGoToFootnotes:Z

    :cond_2
    return-void
.end method
