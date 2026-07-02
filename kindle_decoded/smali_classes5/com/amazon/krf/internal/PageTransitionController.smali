.class public abstract Lcom/amazon/krf/internal/PageTransitionController;
.super Ljava/lang/Object;
.source "PageTransitionController.java"


# instance fields
.field private mBookInfo:Lcom/amazon/krf/platform/KRFBookInfo;

.field private mDataProvider:Lcom/amazon/krf/internal/PageTransitionDataProvider;

.field private mListener:Lcom/amazon/krf/platform/PageTransitionListener;

.field private mPagerView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/krf/internal/PageTransitionController;->mBookInfo:Lcom/amazon/krf/platform/KRFBookInfo;

    return-object v0
.end method

.method public final getDataProvider()Lcom/amazon/krf/internal/PageTransitionDataProvider;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/krf/internal/PageTransitionController;->mDataProvider:Lcom/amazon/krf/internal/PageTransitionDataProvider;

    return-object v0
.end method

.method public final getListener()Lcom/amazon/krf/platform/PageTransitionListener;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/krf/internal/PageTransitionController;->mListener:Lcom/amazon/krf/platform/PageTransitionListener;

    return-object v0
.end method

.method public final getPagerView()Landroid/view/ViewGroup;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/krf/internal/PageTransitionController;->mPagerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final goToPosition(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 47
    new-instance v0, Lcom/amazon/krf/internal/PageTransitionController$2;

    invoke-direct {v0, p0}, Lcom/amazon/krf/internal/PageTransitionController$2;-><init>(Lcom/amazon/krf/internal/PageTransitionController;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazon/krf/internal/PageTransitionController;->goToPosition(Lcom/amazon/krf/platform/Position;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public abstract goToPosition(Lcom/amazon/krf/platform/Position;Ljava/lang/Runnable;)Z
.end method

.method public abstract initialize(Landroid/content/Context;)V
.end method

.method public final navigationDirectionMatchesAnimationDirection()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazon/krf/internal/PageTransitionController;->mBookInfo:Lcom/amazon/krf/platform/KRFBookInfo;

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->getReadingDirection()Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingHorizontalRightToLeft:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/internal/PageTransitionController;->mBookInfo:Lcom/amazon/krf/platform/KRFBookInfo;

    .line 76
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->getReadingDirection()Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingVerticalRightToLeft:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final setBookInfo(Lcom/amazon/krf/platform/KRFBookInfo;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/krf/internal/PageTransitionController;->mBookInfo:Lcom/amazon/krf/platform/KRFBookInfo;

    return-void
.end method

.method public final setDataProvider(Lcom/amazon/krf/internal/PageTransitionDataProvider;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/krf/internal/PageTransitionController;->mDataProvider:Lcom/amazon/krf/internal/PageTransitionDataProvider;

    return-void
.end method

.method public final setListener(Lcom/amazon/krf/platform/PageTransitionListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/krf/internal/PageTransitionController;->mListener:Lcom/amazon/krf/platform/PageTransitionListener;

    return-void
.end method

.method public final setPageView(Lcom/amazon/krf/platform/KRFPageView;ZZ)V
    .locals 1

    .line 37
    new-instance v0, Lcom/amazon/krf/internal/PageTransitionController$1;

    invoke-direct {v0, p0}, Lcom/amazon/krf/internal/PageTransitionController$1;-><init>(Lcom/amazon/krf/internal/PageTransitionController;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/krf/internal/PageTransitionController;->setPageView(Lcom/amazon/krf/platform/KRFPageView;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public abstract setPageView(Lcom/amazon/krf/platform/KRFPageView;ZZLjava/lang/Runnable;)V
.end method

.method protected final setPagerView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/krf/internal/PageTransitionController;->mPagerView:Landroid/view/ViewGroup;

    return-void
.end method
