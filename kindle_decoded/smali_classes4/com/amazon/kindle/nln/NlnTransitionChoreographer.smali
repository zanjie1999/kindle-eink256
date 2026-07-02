.class public Lcom/amazon/kindle/nln/NlnTransitionChoreographer;
.super Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;
.source "NlnTransitionChoreographer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final animateOutFragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

.field public final destinationMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field private isNextPageTransitioning:Z

.field private isPrevPageTransitioning:Z

.field public final originMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field private pageScale:F

.field private primaryAnimatingPage:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;-><init>(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$ITransitionListener;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 38
    iput p1, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->pageScale:F

    .line 39
    iput-object p2, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->originMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 40
    iput-object p3, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->destinationMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 41
    iput-object p4, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->animateOutFragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    return-void
.end method

.method private logPerfEndState()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->destinationMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 127
    sget-object v1, Lcom/amazon/kindle/nln/NlnTransitionChoreographer$1;->$SwitchMap$com$amazon$kindle$nln$NonLinearNavigationMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 138
    sget-object v0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->TAG:Ljava/lang/String;

    const-string v1, "unknown nln mode"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->NLN_FRAGMENT_FULLPAGE_SHOW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->NLN_FRAGMENT_BEV_SHOW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    goto :goto_0

    .line 129
    :cond_2
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->NLN_FRAGMENT_PFV_SHOW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public animateOutOldFragment()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->animateOutFragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->destinationMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->animateOutForOther(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NlnTransitionChoreographer;)V

    :cond_0
    return-void
.end method

.method protected cleanupAnimation()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->cleanupAnimation()V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->isPrevPageTransitioning:Z

    .line 109
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->isNextPageTransitioning:Z

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->setPrimaryAnimatingPage(Landroid/view/View;)V

    return-void
.end method

.method public getPageScale()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->pageScale:F

    return v0
.end method

.method public getPrimaryAnimatingPage()Landroid/view/View;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->primaryAnimatingPage:Landroid/view/View;

    return-object v0
.end method

.method public isFocusPageTransitioning(I)Z
    .locals 1

    if-nez p1, :cond_0

    .line 64
    iget-boolean p1, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->isPrevPageTransitioning:Z

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 66
    iget-boolean p1, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->isNextPageTransitioning:Z

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onTransitionStart()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->onTransitionStart()V

    .line 117
    invoke-direct {p0}, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->logPerfEndState()V

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->animateOutFragment:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onTransitionStart(Lcom/amazon/kindle/nln/NlnTransitionChoreographer;)V

    :cond_0
    return-void
.end method

.method public setPageScale(F)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->pageScale:F

    return-void
.end method

.method public setPrimaryAnimatingPage(Landroid/view/View;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->primaryAnimatingPage:Landroid/view/View;

    return-void
.end method

.method public setTransitioningFocusPages(ZZ)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->isPrevPageTransitioning:Z

    .line 52
    iput-boolean p2, p0, Lcom/amazon/kindle/nln/NlnTransitionChoreographer;->isNextPageTransitioning:Z

    return-void
.end method
