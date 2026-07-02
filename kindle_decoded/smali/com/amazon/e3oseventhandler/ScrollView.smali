.class public Lcom/amazon/e3oseventhandler/ScrollView;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Lcom/amazon/e3oseventhandler/Paginator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_SCROLL_RATIO:F = 0.7f

.field private static final TARGETAPI:I = 0x13


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mFlingDone:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mLastOnDownEvent:Landroid/view/MotionEvent;

.field private mLongPress:Z

.field private mMainView:Landroid/view/View;

.field private mScrollFilter:Landroid/view/View$OnTouchListener;

.field private mScrollRatio:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f333333    # 0.7f

    .line 55
    iput v0, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mScrollRatio:F

    .line 59
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mMainView:Landroid/view/View;

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/ScrollView;->isSupported(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/ScrollView;->createScrollViewTouchHandler()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/ScrollView;->setFilter(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/e3oseventhandler/ScrollView;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/e3oseventhandler/ScrollView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mFlingDone:Z

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/e3oseventhandler/ScrollView;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mFlingDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/e3oseventhandler/ScrollView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mLongPress:Z

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/e3oseventhandler/ScrollView;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/e3oseventhandler/ScrollView;)Landroid/view/GestureDetector;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/e3oseventhandler/ScrollView;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mScrollRatio:F

    return p0
.end method

.method private createScrollViewTouchHandler()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mMainView:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    .line 106
    new-instance v1, Lcom/amazon/e3oseventhandler/ScrollView$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/e3oseventhandler/ScrollView$2;-><init>(Lcom/amazon/e3oseventhandler/ScrollView;Landroid/widget/ScrollView;)V

    .line 186
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public doPagination(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mScrollFilter:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/amazon/e3oseventhandler/ScrollView;->getScrollPercent(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 196
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mScrollRatio:F

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mScrollFilter:Landroid/view/View$OnTouchListener;

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mMainView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getScrollPercent(Landroid/view/View;)F
    .locals 4

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "E3OS_SCROLL_CONTROL"

    const-string v3, "id"

    .line 211
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSupported(Landroid/view/View;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 206
    :cond_0
    instance-of p1, p1, Landroid/widget/ScrollView;

    return p1
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setFilter(Landroid/view/View;)Z
    .locals 0

    .line 69
    new-instance p1, Lcom/amazon/e3oseventhandler/ScrollView$1;

    invoke-direct {p1, p0}, Lcom/amazon/e3oseventhandler/ScrollView$1;-><init>(Lcom/amazon/e3oseventhandler/ScrollView;)V

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView;->mScrollFilter:Landroid/view/View$OnTouchListener;

    const/4 p1, 0x1

    return p1
.end method
