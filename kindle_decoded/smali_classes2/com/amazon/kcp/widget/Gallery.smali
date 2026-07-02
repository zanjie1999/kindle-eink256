.class public Lcom/amazon/kcp/widget/Gallery;
.super Lcom/amazon/kcp/widget/Spinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/widget/Gallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

.field private itemSelectListener:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

.field private mAnimationDuration:I

.field final mCamera:Landroid/graphics/Camera;

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private final mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private final mFlingRunnable:Lcom/amazon/kcp/widget/Gallery$FlingRunnable;

.field private mFrustrum:Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsFirstScroll:Z

.field private mIsTouchDown:Z

.field private mLayoutAfterScroll:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field mSelectedChild:Landroid/view/View;

.field private mSelectionTapUp:Z

.field private mShouldCallbackDuringFling:Z

.field private mShouldStopFling:Z

.field private mSuppressSelectionChanged:Z

.field mZCull:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/kcp/widget/Gallery;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/widget/Gallery;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;-><init>(Lcom/amazon/kcp/widget/Gallery;)V

    iput-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mFlingRunnable:Lcom/amazon/kcp/widget/Gallery$FlingRunnable;

    .line 60
    new-instance v0, Lcom/amazon/kcp/widget/Gallery$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/widget/Gallery$1;-><init>(Lcom/amazon/kcp/widget/Gallery;)V

    iput-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mCamera:Landroid/graphics/Camera;

    const/16 v0, 0x190

    .line 86
    iput v0, p0, Lcom/amazon/kcp/widget/Gallery;->mAnimationDuration:I

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/amazon/kcp/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 150
    iput-boolean v0, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectionTapUp:Z

    .line 172
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/amazon/kcp/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 173
    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 175
    sget-object v1, Lcom/amazon/kindle/librarymodule/R$styleable;->CarouselView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 176
    sget p2, Lcom/amazon/kindle/librarymodule/R$styleable;->CarouselView_zCull:I

    const/16 v1, 0xbb8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/widget/Gallery;->mZCull:I

    .line 177
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->newCurveConfig()Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    .line 181
    new-instance p2, Lcom/amazon/kcp/widget/CarouselLayoutManager;

    const/4 v1, 0x0

    invoke-direct {p2, v1, p1, p0}, Lcom/amazon/kcp/widget/CarouselLayoutManager;-><init>(Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;Landroid/view/View;)V

    iput-object p2, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    .line 183
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setChildrenDrawingOrderEnabled(Z)V

    .line 184
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/widget/Gallery;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1002(Lcom/amazon/kcp/widget/Gallery;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/amazon/kcp/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/widget/Gallery;Landroid/view/View;IZ)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/widget/Gallery;->measureAndlayoutChild(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/widget/Gallery;Landroid/view/View;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/Gallery;->centerViewAt(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/widget/Gallery;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$602(Lcom/amazon/kcp/widget/Gallery;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectionTapUp:Z

    return p1
.end method

.method static synthetic access$700(Lcom/amazon/kcp/widget/Gallery;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/amazon/kcp/widget/Gallery;->mAnimationDuration:I

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/widget/Gallery;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kcp/widget/Gallery;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/amazon/kcp/widget/Gallery;->mShouldStopFling:Z

    return p0
.end method

.method static synthetic access$902(Lcom/amazon/kcp/widget/Gallery;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method private centerViewAt(Landroid/view/View;I)V
    .locals 2

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 356
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method private detachOffScreenChildren(Z)V
    .locals 9

    .line 829
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 830
    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 836
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 837
    iget-object v6, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v6, v5}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->isInFrustrum(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 842
    iget-object v6, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v6, v5}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->remove(Landroid/view/View;)V

    .line 843
    iget-object v6, p0, Lcom/amazon/kcp/widget/Spinner;->recycleBin:Lcom/amazon/kcp/widget/Spinner$RecycleBin;

    add-int v7, v1, v3

    invoke-virtual {v6, v7, v5}, Lcom/amazon/kcp/widget/Spinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ltz v2, :cond_3

    .line 849
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 850
    iget-object v5, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v5, v4}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->isInFrustrum(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 855
    iget-object v3, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->remove(Landroid/view/View;)V

    .line 856
    iget-object v3, p0, Lcom/amazon/kcp/widget/Spinner;->recycleBin:Lcom/amazon/kcp/widget/Spinner$RecycleBin;

    add-int v5, v1, v2

    invoke-virtual {v3, v5, v4}, Lcom/amazon/kcp/widget/Spinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v3, v2, -0x1

    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_1

    :cond_3
    :goto_2
    move v4, v0

    move v2, v3

    .line 861
    :cond_4
    :goto_3
    invoke-virtual {p0, v2, v4}, Landroid/widget/AdapterView;->detachViewsFromParent(II)V

    if-eqz p1, :cond_5

    .line 864
    iget p1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    :cond_5
    return-void
.end method

.method private dispatchLongPress(Landroid/view/View;I)Z
    .locals 9

    .line 714
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v6

    .line 716
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 718
    iget-object v2, p0, Lcom/amazon/kcp/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/amazon/kcp/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, v6

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 722
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, v6, v7}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 723
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 727
    invoke-virtual {p0, v8}, Landroid/widget/AdapterView;->performHapticFeedback(I)Z

    :cond_2
    return v0
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 735
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 737
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setPressed(Z)V

    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .line 741
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 742
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 744
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setPressed(Z)V

    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 4

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 364
    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 367
    :cond_0
    iput-boolean v2, p0, Lcom/amazon/kcp/widget/Gallery;->mShouldStopFling:Z

    const/4 v1, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 369
    iget-object v2, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->isInFrustrum(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    iget v2, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    sub-int v2, v1, v2

    invoke-direct {p0, v1, v2, v0, v0}, Lcom/amazon/kcp/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 371
    iput v1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 4

    .line 377
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 378
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 382
    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 384
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    .line 385
    iput-boolean v2, p0, Lcom/amazon/kcp/widget/Gallery;->mShouldStopFling:Z

    .line 387
    :goto_0
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->isInFrustrum(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    sub-int v0, v1, v0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/amazon/kcp/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 3

    .line 394
    iget-boolean v0, p0, Lcom/amazon/kcp/widget/Spinner;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner;->recycleBin:Lcom/amazon/kcp/widget/Spinner$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/widget/Spinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 398
    iget v1, p0, Lcom/amazon/kcp/widget/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/widget/Gallery;->mRightMost:I

    .line 399
    iget v1, p0, Lcom/amazon/kcp/widget/Gallery;->mLeftMost:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/widget/Gallery;->mLeftMost:I

    .line 400
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazon/kcp/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    return-object v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/cover/BadgeableCover;

    .line 408
    new-instance v0, Lcom/amazon/kcp/widget/Gallery$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/amazon/kcp/widget/Gallery$2;-><init>(Lcom/amazon/kcp/widget/Gallery;Lcom/amazon/kcp/cover/BadgeableCover;IZ)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->registerBindBadgesFinishedCallback(Lcom/amazon/kindle/callback/ICallback;)V

    .line 419
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    return-object p1
.end method

.method private measureAndlayoutChild(Landroid/view/View;IZ)V
    .locals 5

    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0}, Landroid/widget/AdapterView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 449
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 450
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 452
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 455
    :cond_1
    iget v2, p0, Lcom/amazon/kcp/widget/Spinner;->mHeightMeasureSpec:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v1, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 456
    iget v2, p0, Lcom/amazon/kcp/widget/Spinner;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 458
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 464
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 466
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v2

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eqz p3, :cond_2

    add-int/2addr v2, p2

    goto :goto_0

    :cond_2
    sub-int p3, p2, v2

    move v2, p2

    move p2, p3

    .line 478
    :goto_0
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private newCurveConfig()Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, v0, v0, v0}, Lcom/amazon/kcp/widget/Gallery;->newCurveConfig(ZII)Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    move-result-object v0

    return-object v0
.end method

.method private newCurveConfig(ZII)Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;
    .locals 8

    .line 193
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 194
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->gallery_curve_span:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v3, v1

    .line 195
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->curve_degree:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 196
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    .line 197
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->gallery_curve_density:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v5, v0

    .line 198
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->gallery_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p3, p1

    .line 207
    div-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float/2addr p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, v0

    .line 215
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$array;->carousel_coefficients:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    new-array v7, p2, [F

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_1

    .line 218
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    aput v0, v7, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    new-instance p1, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;-><init>(FFFF[F)V

    return-object p1
.end method

.method private onFinishedMovement()V
    .locals 7

    .line 881
    iget-boolean v0, p0, Lcom/amazon/kcp/widget/Gallery;->mLayoutAfterScroll:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 882
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/widget/Gallery;->onLayout(ZIIII)V

    goto :goto_0

    .line 884
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->invalidate()V

    :goto_0
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 3

    .line 869
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_2

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->getLogicalPosition(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    const/4 v2, -0x1

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 875
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->onFinishedMovement()V

    goto :goto_1

    .line 873
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/widget/Gallery;->mFlingRunnable:Lcom/amazon/kcp/widget/Gallery$FlingRunnable;

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 877
    :goto_1
    iput-boolean v1, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectionTapUp:Z

    :cond_3
    :goto_2
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1

    .line 702
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->getLogicalPosition(Landroid/view/View;)F

    move-result p1

    float-to-int p1, p1

    neg-int p1, p1

    .line 705
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mFlingRunnable:Lcom/amazon/kcp/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    const/4 p1, 0x1

    .line 706
    iput-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectionTapUp:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setSelectionToCenterChild()V
    .locals 5

    .line 889
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layoutFromLogicalPosition(F)Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    move-result-object v0

    iget v0, v0, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;->x:F

    float-to-int v0, v0

    .line 894
    iget-object v1, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt v1, v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 901
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    .line 902
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 903
    invoke-static {v4}, Lcom/amazon/android/util/UIUtils;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_2

    move v2, v3

    move v1, v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 910
    :cond_3
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    add-int/2addr v2, v0

    .line 912
    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    if-eq v2, v1, :cond_4

    .line 913
    iput v2, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    iput v2, p0, Lcom/amazon/kcp/widget/Spinner;->mNextSelectedPosition:I

    sub-int/2addr v2, v0

    .line 914
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 915
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->itemSelectListener:Lcom/amazon/kindle/callback/ICallback;

    if-eqz v0, :cond_4

    .line 916
    new-instance v1, Lcom/amazon/kindle/callback/OperationResult;

    iget v2, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    :cond_4
    return-void
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 3

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Landroid/widget/AdapterView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p4, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 429
    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Landroid/widget/AdapterView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    if-nez p2, :cond_2

    const/4 v1, 0x1

    .line 431
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 433
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/kcp/widget/Gallery;->measureAndlayoutChild(Landroid/view/View;IZ)V

    if-eqz p4, :cond_3

    .line 436
    iget-object p2, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->append(Landroid/view/View;)V

    goto :goto_1

    .line 438
    :cond_3
    iget-object p2, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->prepend(Landroid/view/View;)V

    .line 440
    :goto_1
    iget-object p2, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layout(Landroid/view/View;)Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    move-result-object p2

    iget p2, p2, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;->x:F

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/Gallery;->centerViewAt(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 349
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 350
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->CAROUSEL_LOADED:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 522
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 492
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_2
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layout(Landroid/view/View;)Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 232
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 233
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 237
    iget-object v2, p0, Lcom/amazon/kcp/widget/Gallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 238
    iget-object v2, p0, Lcom/amazon/kcp/widget/Gallery;->mCamera:Landroid/graphics/Camera;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v4, p1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layout(Landroid/view/View;)Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    move-result-object v4

    iget v4, v4, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;->y:F

    iget-object v5, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v5, p1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layout(Landroid/view/View;)Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    move-result-object p1

    iget p1, p1, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;->z:F

    invoke-virtual {v2, v3, v4, p1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 239
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    neg-int p1, v1

    int-to-float p1, p1

    neg-int v2, v0

    int-to-float v2, v2

    .line 240
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, v1

    int-to-float v0, v0

    .line 241
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 242
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    const/4 p1, 0x1

    return p1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 803
    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 804
    :goto_0
    iget v2, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return p2

    .line 809
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->getLogicalPosition(Landroid/view/View;)F

    move-result v2

    .line 811
    iget-object v3, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->getLogicalWidth(Landroid/view/View;)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    if-eqz p1, :cond_2

    neg-float p1, v1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_3

    return v0

    :cond_2
    cmpl-float p1, v2, v1

    if-lez p1, :cond_3

    return v0

    :cond_3
    return p2
.end method

.method moveNext()Z
    .locals 3

    .line 583
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 584
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/amazon/kcp/widget/Gallery;->scrollToChild(I)Z

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method movePrevious()Z
    .locals 2

    .line 574
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 575
    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/widget/Gallery;->scrollToChild(I)Z

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1029
    iput-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    .line 615
    iput-boolean v0, p0, Lcom/amazon/kcp/widget/Gallery;->mIsTouchDown:Z

    .line 616
    iget-object v1, p0, Lcom/amazon/kcp/widget/Gallery;->mFlingRunnable:Lcom/amazon/kcp/widget/Gallery$FlingRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/kcp/widget/Spinner;->pointToPosition(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/widget/Gallery;->mDownTouchPosition:I

    if-ltz p1, :cond_0

    .line 619
    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 620
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 622
    :cond_0
    iput-boolean v0, p0, Lcom/amazon/kcp/widget/Gallery;->mIsFirstScroll:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 628
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    .line 629
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LIBRARY_LOADED:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 634
    iget-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 636
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 637
    iget-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lcom/amazon/kcp/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 641
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mFlingRunnable:Lcom/amazon/kcp/widget/Gallery$FlingRunnable;

    neg-float p3, p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    return p2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x42

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 543
    sget-object v0, Lcom/amazon/kcp/widget/Gallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid key code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/widget/Gallery;->moveNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 535
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    :cond_0
    return v1

    .line 529
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/widget/Gallery;->movePrevious()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 530
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    :cond_1
    return v1

    .line 540
    :cond_2
    :pswitch_2
    iput-boolean v1, p0, Lcom/amazon/kcp/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 545
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 570
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 553
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz p1, :cond_1

    .line 554
    iget p1, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    if-lez p1, :cond_1

    .line 555
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 556
    new-instance p1, Lcom/amazon/kcp/widget/Gallery$3;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/widget/Gallery$3;-><init>(Lcom/amazon/kcp/widget/Gallery;)V

    .line 561
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p2

    int-to-long v0, p2

    .line 556
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/AdapterView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 562
    iget p1, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    iget p2, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr p1, p2

    .line 563
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    const/4 p1, 0x0

    .line 566
    iput-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mReceivedInvokeKeyDown:Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 301
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mFlingRunnable:Lcom/amazon/kcp/widget/Gallery$FlingRunnable;

    invoke-static {p1}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->access$100(Lcom/amazon/kcp/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mIsTouchDown:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 305
    iput-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mLayoutAfterScroll:Z

    .line 307
    iget p3, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    if-nez p3, :cond_1

    .line 308
    iput-boolean p1, p0, Lcom/amazon/kcp/widget/Spinner;->mDataChanged:Z

    .line 310
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 311
    invoke-virtual {p0}, Landroid/widget/AdapterView;->invalidate()V

    return-void

    .line 315
    :cond_1
    iget p4, p0, Lcom/amazon/kcp/widget/Spinner;->mNextSelectedPosition:I

    if-ltz p4, :cond_2

    sub-int/2addr p3, p2

    .line 316
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    goto :goto_0

    .line 318
    :cond_2
    iput p1, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    .line 320
    :goto_0
    iget p3, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    iget p4, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr p3, p4

    invoke-virtual {p0, p3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 322
    iget-object p3, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    iget-object p4, p0, Lcom/amazon/kcp/widget/Gallery;->mFrustrum:Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

    invoke-virtual {p3, p4}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->setFrustrum(Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;)V

    .line 323
    iget-object p3, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {p3}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->removeAllItems()V

    .line 324
    invoke-virtual {p0}, Lcom/amazon/kcp/widget/Gallery;->recycleAllViews()V

    .line 325
    invoke-virtual {p0}, Landroid/widget/AdapterView;->detachAllViewsFromParent()V

    .line 327
    iput p1, p0, Lcom/amazon/kcp/widget/Gallery;->mRightMost:I

    .line 328
    iput p1, p0, Lcom/amazon/kcp/widget/Gallery;->mLeftMost:I

    .line 330
    iget p3, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    iput p3, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    .line 331
    invoke-direct {p0, p3, p1, p1, p2}, Lcom/amazon/kcp/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 333
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->fillToGalleryRight()V

    .line 334
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->fillToGalleryLeft()V

    .line 335
    iget-object p2, p0, Lcom/amazon/kcp/widget/Spinner;->recycleBin:Lcom/amazon/kcp/widget/Spinner$RecycleBin;

    invoke-virtual {p2}, Lcom/amazon/kcp/widget/Spinner$RecycleBin;->clear()V

    .line 336
    invoke-virtual {p0}, Landroid/widget/AdapterView;->invalidate()V

    .line 338
    iget p2, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    iput p2, p0, Lcom/amazon/kcp/widget/Spinner;->mNextSelectedPosition:I

    .line 339
    iget p3, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 340
    iput-boolean p1, p0, Lcom/amazon/kcp/widget/Spinner;->mDataChanged:Z

    .line 342
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->itemSelectListener:Lcom/amazon/kindle/callback/ICallback;

    if-eqz p1, :cond_3

    .line 343
    new-instance p2, Lcom/amazon/kindle/callback/OperationResult;

    iget p3, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    :cond_3
    return-void

    .line 302
    :cond_4
    :goto_1
    iput-boolean p2, p0, Lcom/amazon/kcp/widget/Gallery;->mLayoutAfterScroll:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 647
    iget p1, p0, Lcom/amazon/kcp/widget/Gallery;->mDownTouchPosition:I

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 650
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->performHapticFeedback(I)Z

    .line 651
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v0, p0, Lcom/amazon/kcp/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/widget/Gallery;->dispatchLongPress(Landroid/view/View;I)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 260
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    if-ge v0, v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/amazon/kcp/widget/Spinner;->recycleBin:Lcom/amazon/kcp/widget/Spinner$RecycleBin;

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/widget/Spinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v2, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/widget/Spinner;->recycleBin:Lcom/amazon/kcp/widget/Spinner$RecycleBin;

    iget v3, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    invoke-virtual {v2, v3, v0}, Lcom/amazon/kcp/widget/Spinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1

    .line 267
    invoke-virtual {p0}, Landroid/widget/AdapterView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/AdapterView;->measureChild(Landroid/view/View;II)V

    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 271
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 277
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    .line 280
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 281
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 285
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 286
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 288
    invoke-static {v1, p2}, Landroid/widget/AdapterView;->resolveSize(II)I

    move-result v1

    .line 289
    invoke-static {v0, p1}, Landroid/widget/AdapterView;->resolveSize(II)I

    move-result v0

    .line 291
    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterView;->setMeasuredDimension(II)V

    .line 292
    iput p1, p0, Lcom/amazon/kcp/widget/Spinner;->mWidthMeasureSpec:I

    .line 293
    iput p2, p0, Lcom/amazon/kcp/widget/Spinner;->mHeightMeasureSpec:I

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 666
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 668
    iget-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 p4, 0x0

    if-nez p1, :cond_1

    .line 669
    iget-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mIsFirstScroll:Z

    if-eqz p1, :cond_2

    .line 672
    iget-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lcom/amazon/kcp/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 673
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/AdapterView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 676
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kcp/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz p1, :cond_2

    iput-boolean p4, p0, Lcom/amazon/kcp/widget/Gallery;->mSuppressSelectionChanged:Z

    :cond_2
    :goto_0
    float-to-int p1, p3

    mul-int/lit8 p1, p1, -0x1

    .line 679
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/widget/Gallery;->trackMotionScroll(I)V

    .line 680
    iput-boolean p4, p0, Lcom/amazon/kcp/widget/Gallery;->mIsFirstScroll:Z

    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 691
    iget p1, p0, Lcom/amazon/kcp/widget/Gallery;->mDownTouchPosition:I

    if-ltz p1, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/widget/Gallery;->mSelectionTapUp:Z

    if-eqz v0, :cond_1

    .line 692
    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/widget/Gallery;->scrollToChild(I)Z

    .line 693
    iget p1, p0, Lcom/amazon/kcp/widget/Gallery;->mDownTouchPosition:I

    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/kcp/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    const/4 p3, 0x1

    .line 249
    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/kcp/widget/Gallery;->newCurveConfig(ZII)Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->curveConfig:Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;

    .line 250
    iget-object p2, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->setCurveConfig(Lcom/amazon/kcp/widget/GalleryLayoutItem$CurveConfig;)V

    .line 251
    new-instance p1, Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result p2

    int-to-float v1, p2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result p2

    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float v4, p2

    iget p2, p0, Lcom/amazon/kcp/widget/Gallery;->mZCull:I

    int-to-float v6, p2

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;-><init>(FFFFFF)V

    iput-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mFrustrum:Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 599
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 603
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mFlingRunnable:Lcom/amazon/kcp/widget/Gallery$FlingRunnable;

    invoke-static {p1}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->access$100(Lcom/amazon/kcp/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 604
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->scrollIntoSlots()V

    .line 606
    :cond_2
    iput-boolean v1, p0, Lcom/amazon/kcp/widget/Gallery;->mIsTouchDown:Z

    .line 607
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->dispatchUnpress()V

    :cond_3
    return v0
.end method

.method recycleAllViews()V
    .locals 5

    .line 482
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 484
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 485
    iget v3, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 486
    iget-object v4, p0, Lcom/amazon/kcp/widget/Spinner;->recycleBin:Lcom/amazon/kcp/widget/Spinner$RecycleBin;

    invoke-virtual {v4, v3, v2}, Lcom/amazon/kcp/widget/Spinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1

    .line 1024
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    .line 1025
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/amazon/kindle/callback/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 655
    iput-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->itemSelectListener:Lcom/amazon/kindle/callback/ICallback;

    return-void
.end method

.method public showContextMenu()Z
    .locals 2

    .line 513
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 514
    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 515
    iget v1, p0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/widget/Gallery;->dispatchLongPress(Landroid/view/View;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method trackMotionScroll(I)V
    .locals 4

    .line 754
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 760
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/amazon/kcp/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 762
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->mFlingRunnable:Lcom/amazon/kcp/widget/Gallery$FlingRunnable;

    invoke-static {p1, v0}, Lcom/amazon/kcp/widget/Gallery$FlingRunnable;->access$500(Lcom/amazon/kcp/widget/Gallery$FlingRunnable;Z)V

    .line 763
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->onFinishedMovement()V

    .line 766
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {p1, v2}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->shiftAllItems(I)V

    const/4 p1, 0x0

    .line 767
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 768
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 769
    iget-object v3, p0, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layout(Landroid/view/View;)Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    move-result-object v3

    iget v3, v3, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;->x:F

    float-to-int v3, v3

    .line 770
    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/widget/Gallery;->centerViewAt(Landroid/view/View;I)V

    .line 775
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 778
    :cond_3
    invoke-direct {p0, v1}, Lcom/amazon/kcp/widget/Gallery;->detachOffScreenChildren(Z)V

    if-eqz v1, :cond_4

    .line 781
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->fillToGalleryRight()V

    goto :goto_2

    .line 783
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->fillToGalleryLeft()V

    .line 787
    :goto_2
    iget-object p1, p0, Lcom/amazon/kcp/widget/Spinner;->recycleBin:Lcom/amazon/kcp/widget/Spinner$RecycleBin;

    invoke-virtual {p1}, Lcom/amazon/kcp/widget/Spinner$RecycleBin;->clear()V

    .line 789
    invoke-direct {p0}, Lcom/amazon/kcp/widget/Gallery;->setSelectionToCenterChild()V

    .line 791
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/AdapterView;->onScrollChanged(IIII)V

    .line 792
    invoke-virtual {p0}, Landroid/widget/AdapterView;->invalidate()V

    return-void
.end method
