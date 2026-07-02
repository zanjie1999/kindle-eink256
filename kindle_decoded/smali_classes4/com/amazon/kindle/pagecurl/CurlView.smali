.class public Lcom/amazon/kindle/pagecurl/CurlView;
.super Landroid/opengl/GLSurfaceView;
.source "CurlView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;,
        Lcom/amazon/kindle/pagecurl/CurlView$CurlViewReadyObserver;,
        Lcom/amazon/kindle/pagecurl/CurlView$SizeChangedObserver;
    }
.end annotation


# static fields
.field private static final MIN_DISTANCE_FOR_FLING:I = 0xf


# instance fields
.field private activateOverlayMode:Z

.field private backListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

.field private backgroundColor:I

.field private disableMutliTouch:Z

.field private flingAnimationDuration:J

.field private gestureDetector:Landroid/view/GestureDetector;

.field private initializationObsever:Lcom/amazon/kindle/pagecurl/CurlView$CurlViewReadyObserver;

.field private isFakeDraging:Z

.field private lastBeginFakeDragTime:J

.field private mAllowLastPageCurl:Z

.field private mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

.field private mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

.field private mCurrentImageIndex:I

.field private mEnableBitmapStretching:Z

.field private mEnableTouchPressure:Z

.field private mFlingDistance:F

.field private mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

.field private mHasBeenInitialized:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mPageBitmapHeight:I

.field private mPageBitmapWidth:I

.field private mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

.field private mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

.field private mRenderLeftPage:Z

.field private mRenderRightPage:Z

.field private mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

.field private mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

.field private mSizeChangedObserver:Lcom/amazon/kindle/pagecurl/CurlView$SizeChangedObserver;

.field private final mVelocityTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

.field private meshToRecycle:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/pagecurl/IMesh;",
            ">;"
        }
    .end annotation
.end field

.field private minMsBetweenTwoFakeDrags:J

.field private notifyReadyObserver:Z

.field private pageBackgroundColor:I

.field public segments_number:I

.field private shouldForceUpdateSizes:Z

.field private simpleGestureDetector:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private tapAnimationDuration:J

.field private textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

.field private touchEventHandler:Lcom/amazon/kindle/pagecurl/TouchEventHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 214
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x14

    .line 76
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    .line 78
    sget-object p1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderLeftPage:Z

    .line 82
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderRightPage:Z

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mAllowLastPageCurl:Z

    .line 88
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->disableMutliTouch:Z

    .line 95
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->activateOverlayMode:Z

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->meshToRecycle:Ljava/util/Vector;

    .line 108
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    .line 118
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    .line 120
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceWidth:I

    .line 121
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceHeight:I

    const-wide/16 v1, 0x12c

    .line 123
    iput-wide v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->flingAnimationDuration:J

    .line 124
    iput-wide v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->tapAnimationDuration:J

    .line 133
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableTouchPressure:Z

    .line 138
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableBitmapStretching:Z

    const-wide/16 v1, 0xc8

    .line 149
    iput-wide v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->minMsBetweenTwoFakeDrags:J

    .line 150
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->isFakeDraging:Z

    const-wide/16 v1, 0x0

    .line 151
    iput-wide v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->lastBeginFakeDragTime:J

    .line 153
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->shouldForceUpdateSizes:Z

    .line 154
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->notifyReadyObserver:Z

    .line 156
    new-instance v1, Lcom/amazon/kindle/pagecurl/CurlView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/pagecurl/CurlView$1;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;)V

    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->simpleGestureDetector:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 171
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->simpleGestureDetector:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 173
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mHasBeenInitialized:Z

    const p1, -0xe7e7e8

    .line 174
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->backgroundColor:I

    .line 175
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->pageBackgroundColor:I

    .line 215
    new-instance p1, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-direct {p1}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    .line 216
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mVelocityTrackers:Landroid/util/SparseArray;

    .line 217
    new-instance p1, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;-><init>(Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    .line 218
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "instantiating a new curl view @"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 223
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x14

    .line 76
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    .line 78
    sget-object p1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderLeftPage:Z

    .line 82
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderRightPage:Z

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mAllowLastPageCurl:Z

    .line 88
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->disableMutliTouch:Z

    .line 95
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->activateOverlayMode:Z

    .line 103
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->meshToRecycle:Ljava/util/Vector;

    .line 108
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    const/4 p2, -0x1

    .line 113
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    .line 118
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    .line 120
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceWidth:I

    .line 121
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceHeight:I

    const-wide/16 v0, 0x12c

    .line 123
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->flingAnimationDuration:J

    .line 124
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->tapAnimationDuration:J

    .line 133
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableTouchPressure:Z

    .line 138
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableBitmapStretching:Z

    const-wide/16 v0, 0xc8

    .line 149
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->minMsBetweenTwoFakeDrags:J

    .line 150
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->isFakeDraging:Z

    const-wide/16 v0, 0x0

    .line 151
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->lastBeginFakeDragTime:J

    .line 153
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->shouldForceUpdateSizes:Z

    .line 154
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->notifyReadyObserver:Z

    .line 156
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/pagecurl/CurlView$1;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;)V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->simpleGestureDetector:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 171
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->simpleGestureDetector:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 173
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mHasBeenInitialized:Z

    const p1, -0xe7e7e8

    .line 174
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->backgroundColor:I

    .line 175
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->pageBackgroundColor:I

    .line 224
    new-instance p1, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-direct {p1}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    .line 225
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mVelocityTrackers:Landroid/util/SparseArray;

    .line 226
    new-instance p1, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;-><init>(Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    .line 227
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "instantiating a new curl view @"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 232
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x14

    .line 76
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    .line 78
    sget-object p1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderLeftPage:Z

    .line 82
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderRightPage:Z

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mAllowLastPageCurl:Z

    .line 88
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->disableMutliTouch:Z

    .line 95
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->activateOverlayMode:Z

    .line 103
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->meshToRecycle:Ljava/util/Vector;

    .line 108
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    const/4 p2, -0x1

    .line 113
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    .line 118
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    .line 120
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceWidth:I

    .line 121
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceHeight:I

    const-wide/16 v0, 0x12c

    .line 123
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->flingAnimationDuration:J

    .line 124
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->tapAnimationDuration:J

    .line 133
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableTouchPressure:Z

    .line 138
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableBitmapStretching:Z

    const-wide/16 v0, 0xc8

    .line 149
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->minMsBetweenTwoFakeDrags:J

    .line 150
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->isFakeDraging:Z

    const-wide/16 v0, 0x0

    .line 151
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->lastBeginFakeDragTime:J

    .line 153
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->shouldForceUpdateSizes:Z

    .line 154
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->notifyReadyObserver:Z

    .line 156
    new-instance p3, Lcom/amazon/kindle/pagecurl/CurlView$1;

    invoke-direct {p3, p0}, Lcom/amazon/kindle/pagecurl/CurlView$1;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;)V

    iput-object p3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->simpleGestureDetector:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 171
    new-instance p3, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->simpleGestureDetector:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 173
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mHasBeenInitialized:Z

    const p1, -0xe7e7e8

    .line 174
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->backgroundColor:I

    .line 175
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->pageBackgroundColor:I

    .line 233
    new-instance p1, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-direct {p1}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    .line 234
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mVelocityTrackers:Landroid/util/SparseArray;

    .line 235
    new-instance p1, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;-><init>(Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    .line 236
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "instantiating a new curl view @"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/pagecurl/CurlView;IFFF)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/pagecurl/CurlView;->beginFakeDragInternal(IFFF)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/pagecurl/CurlView;IFFF)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/pagecurl/CurlView;->endFakeDragInternal(IFFF)V

    return-void
.end method

.method static synthetic access$1002(Lcom/amazon/kindle/pagecurl/CurlView;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->isFakeDraging:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/amazon/kindle/pagecurl/CurlView;IFFF)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/pagecurl/CurlView;->updateFakeDragInternal(IFFF)V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/kindle/pagecurl/CurlView;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    return p0
.end method

.method static synthetic access$1500(Lcom/amazon/kindle/pagecurl/CurlView;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    return p0
.end method

.method static synthetic access$1600(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/kindle/pagecurl/CurlView;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/ViewMode;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/kindle/pagecurl/CurlView;Lcom/amazon/kindle/pagecurl/ViewMode;)Lcom/amazon/kindle/pagecurl/ViewMode;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->updateBitmaps()V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->switchViewMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->releaseInternal()V

    return-void
.end method

.method private beginFakeDragInternal(IFFF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    move/from16 v11, p3

    .line 1612
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    const-string v12, " y:"

    const-string v13, " x:"

    if-eqz v2, :cond_0

    .line 1613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl View - beginFakeDrag - Processing the begin fake drag ! pointerID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1615
    :cond_0
    iget-object v2, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getCurledPageForPointerID(I)Lcom/amazon/kindle/pagecurl/CurledPageState;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1618
    iget-object v2, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mVelocityTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1620
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    .line 1621
    iget-object v3, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mVelocityTrackers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1623
    :cond_1
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    move-object v14, v2

    .line 1626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v6, 0x0

    const/4 v15, 0x0

    move-wide v2, v8

    move-wide v4, v8

    move/from16 v7, p2

    move-wide/from16 v16, v8

    move/from16 v8, p3

    move v9, v15

    .line 1627
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1628
    invoke-virtual {v14, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1629
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1631
    invoke-direct/range {p0 .. p4}, Lcom/amazon/kindle/pagecurl/CurlView;->onActionDown(IFFF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1635
    iget-object v2, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getCurledPageForPointerID(I)Lcom/amazon/kindle/pagecurl/CurledPageState;

    move-result-object v1

    if-eqz v1, :cond_4

    move-wide/from16 v2, v16

    .line 1637
    iput-wide v2, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->curlStartTime:J

    goto :goto_1

    .line 1640
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl View - beginFakeDrag - Curl not started probably because there is no previous/next page or the position is outside of the screen ! pointerID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1645
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl View - beginFakeDrag - State Already Present ! pointerID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private clearRendererMeshes()V
    .locals 1

    .line 1390
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Curl View - Clear Renderer - Clearing all the renderer meshes"

    .line 1391
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->clearAllCurlMeshes()V

    return-void
.end method

.method private computeCurlMode(Landroid/graphics/PointF;)Lcom/amazon/kindle/pagecurl/CurlStartPosition;
    .locals 4

    .line 520
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_NONE:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    .line 523
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v1

    .line 525
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v3, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v2, v3, :cond_1

    .line 528
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    .line 529
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v1

    if-ltz p1, :cond_5

    .line 531
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    goto :goto_0

    .line 533
    :cond_1
    sget-object v3, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v2, v3, :cond_5

    .line 535
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    .line 538
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->hasOngoingRightCurl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    goto :goto_0

    .line 540
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->hasOngoingLeftCurl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    goto :goto_0

    .line 545
    :cond_3
    iget p1, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, p1, v2

    if-gez v1, :cond_4

    .line 546
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    goto :goto_0

    :cond_4
    cmpl-float p1, p1, v2

    if-ltz p1, :cond_5

    .line 548
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    :cond_5
    :goto_0
    return-object v0
.end method

.method private createLeftPage()V
    .locals 3

    .line 1178
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1180
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->recycleMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1182
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->getNewMesh()Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 1186
    iget-boolean v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderLeftPage:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->activateOverlayMode:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v2, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v1, v2, :cond_1

    .line 1187
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->addLeftMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    :cond_1
    return-void
.end method

.method private createRightPage()V
    .locals 2

    .line 1192
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1194
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->recycleMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1196
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->getNewMesh()Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 1200
    iget-boolean v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderRightPage:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->activateOverlayMode:Z

    if-nez v1, :cond_1

    .line 1201
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->addRigthMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    :cond_1
    return-void
.end method

.method private endFakeDragInternal(IFFF)V
    .locals 8

    .line 1685
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    const-string v1, " y:"

    const-string v2, " x:"

    if-eqz v0, :cond_0

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl View - endFakeDrag - Processing the end fake drag ! pointerID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getCurledPageForPointerID(I)Lcom/amazon/kindle/pagecurl/CurledPageState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1690
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1691
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Curl View - endFakeDrag - No state ! pointerID:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1693
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1694
    iget-wide v0, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->curlStartTime:J

    const/4 v4, 0x1

    const/4 v7, 0x0

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1695
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mVelocityTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VelocityTracker;

    .line 1696
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1697
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1699
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/pagecurl/CurlView;->onActionUp(IFFF)Z

    .line 1700
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_2
    :goto_0
    return-void
.end method

.method private getLeftImageIdx()I
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    sget-object v1, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->computeOngoingCurl(Lcom/amazon/kindle/pagecurl/CurlStartPosition;)I

    move-result v0

    .line 591
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v2, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v1, v2, :cond_0

    .line 592
    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 593
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curl View - get left page image index - In TWO PAGE VIEW :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_0
    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 597
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curl View - get left page image index - In ONE PAGE VIEW :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method private getNewMesh()Lcom/amazon/kindle/pagecurl/IMesh;
    .locals 8

    .line 1164
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->meshToRecycle:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->meshToRecycle:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/IMesh;

    .line 1166
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/pagecurl/IMesh;->setShadowProvider(Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;)V

    .line 1167
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curl View - Get new mesh - recycling a mesh from the recycling bin @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Yeah !!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1170
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Curl View - Get new mesh - creating a new page curl mesh Beuuuh !!!"

    .line 1171
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1172
    :cond_1
    new-instance v0, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;

    iget v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    invoke-interface {v1}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->getBitmapRecycler()Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;

    move-result-object v3

    iget-boolean v4, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableBitmapStretching:Z

    iget-object v5, p0, Lcom/amazon/kindle/pagecurl/CurlView;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    iget-object v7, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/pagecurl/opengles20/transformations/curl/CurlMeshTransformation;-><init>(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapRecycler;ZLcom/amazon/kindle/pagecurl/opengles20/TextureProvider;Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getRightImageIdx()I
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    sget-object v1, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->computeOngoingCurl(Lcom/amazon/kindle/pagecurl/CurlStartPosition;)I

    move-result v0

    .line 606
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v2, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v1, v2, :cond_0

    .line 607
    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 608
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curl View - get right page image index - In TWO PAGE VIEW :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_0
    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    add-int/2addr v1, v0

    .line 612
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curl View - get right page image index - In ONE PAGE VIEW :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method private hasOngoingLeftCurl()Z
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    sget-object v1, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->computeOngoingCurl(Lcom/amazon/kindle/pagecurl/CurlStartPosition;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasOngoingRightCurl()Z
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    sget-object v1, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->computeOngoingCurl(Lcom/amazon/kindle/pagecurl/CurlStartPosition;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFling(FF)Z
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->untranslateX(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mFlingDistance:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mMinimumVelocity:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLeftPageAvailable()Z
    .locals 5

    .line 636
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    sget-object v1, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->computeOngoingCurl(Lcom/amazon/kindle/pagecurl/CurlStartPosition;)I

    move-result v0

    .line 638
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v2, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 639
    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 641
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - is left page available - In TWO PAGE VIEW :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 644
    :cond_1
    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 646
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - is left page available - In ONE PAGE VIEW :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return v3
.end method

.method private isLegalPageTurnStartPosition(Lcom/amazon/kindle/pagecurl/CurlStartPosition;Landroid/graphics/PointF;)Z
    .locals 4

    .line 455
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 456
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->isRightPageAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "CurlView - isLegalPageTurnStartPosition - illegal: right page is not available"

    .line 458
    invoke-static {p2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->hasOngoingRightCurl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getLastCurledPage()Lcom/amazon/kindle/pagecurl/CurledPageState;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p2, "CurlView - isLegalPageTurnStartPosition - lastCurl should not be null since there is an ongoing curl. BUG!!"

    .line 469
    invoke-static {p2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 470
    :cond_1
    iget-object v0, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0, p2}, Lcom/amazon/kindle/pagecurl/IMesh;->isTouchingTheMesh(Landroid/graphics/PointF;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "CurlView - isLegalPageTurnStartPosition - illegal: touching the front of a right-side page"

    .line 474
    invoke-static {p2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_2
    iget-boolean p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mAllowLastPageCurl:Z

    if-nez p2, :cond_6

    .line 477
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->getRightImageIdx()I

    move-result p2

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->getBitmapCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_6

    const-string p2, "CurlView - isLegalPageTurnStartPosition - illegal: turning the last page is not allowed"

    .line 481
    invoke-static {p2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_3
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne p1, v0, :cond_6

    .line 484
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->isLeftPageAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    const-string p2, "CurlView - isLegalPageTurnStartPosition - illegal: left page is not available"

    .line 486
    invoke-static {p2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->hasOngoingLeftCurl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 488
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/CurledPageState;

    iget-object v0, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    .line 489
    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0, p2}, Lcom/amazon/kindle/pagecurl/IMesh;->isTouchingTheMesh(Landroid/graphics/PointF;)Z

    move-result p2

    .line 490
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v3, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, v3, :cond_5

    if-nez p2, :cond_6

    const-string p2, "CurlView - isLegalPageTurnStartPosition - illegal: not touching the front of a right-sided page"

    .line 495
    invoke-static {p2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_5
    sget-object v3, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, v3, :cond_6

    if-eqz p2, :cond_6

    const-string p2, "CurlView - isLegalPageTurnStartPosition - illegal: touching the front of a left-sided page"

    .line 502
    invoke-static {p2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    :cond_6
    :goto_1
    sget-object p2, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne p1, p2, :cond_7

    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->hasOngoingLeftCurl()Z

    move-result p2

    if-nez p2, :cond_8

    :cond_7
    sget-object p2, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne p1, p2, :cond_9

    .line 509
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->hasOngoingRightCurl()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    const-string p1, "CurlView - isLegalPageTurnStartPosition - illegal: cannot curl left and right at the same time"

    .line 513
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move v2, v1

    :goto_2
    return v2
.end method

.method private isRightPageAvailable()Z
    .locals 5

    .line 619
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    sget-object v1, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->computeOngoingCurl(Lcom/amazon/kindle/pagecurl/CurlStartPosition;)I

    move-result v0

    .line 621
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v2, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 622
    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->getBitmapCount()I

    move-result v0

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_0

    const/4 v3, 0x1

    .line 624
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - is right page available - In TWO PAGE VIEW :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_1
    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->getBitmapCount()I

    move-result v0

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_2

    const/4 v3, 0x1

    .line 629
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - is right page available - In ONE PAGE VIEW :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v3
.end method

.method private onActionDown(IFFF)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 856
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Curl View - onActionDown - action down or pointer down received"

    .line 857
    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 859
    :cond_0
    iget-object v2, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getOrCreateCurledPageState(I)Lcom/amazon/kindle/pagecurl/CurledPageState;

    move-result-object v4

    .line 861
    new-instance v5, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    invoke-direct {v5}, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;-><init>()V

    .line 862
    iget-object v2, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    .line 864
    iget-object v3, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v3

    .line 865
    iget-object v7, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v7

    .line 868
    iget-object v8, v5, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual {v8, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 869
    iget-object v8, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object v12, v5, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v8, v12}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->translate(Landroid/graphics/PointF;)V

    .line 870
    iget-boolean v8, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableTouchPressure:Z

    if-eqz v8, :cond_1

    move/from16 v8, p4

    .line 871
    iput v8, v5, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPressure:F

    goto :goto_0

    :cond_1
    move/from16 v8, p4

    const/4 v12, 0x0

    .line 873
    iput v12, v5, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPressure:F

    .line 879
    :goto_0
    iget-object v12, v5, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v2, v12}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 884
    iget v12, v2, Landroid/graphics/PointF;->y:F

    iget v13, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v14, v12, v13

    if-lez v14, :cond_2

    .line 885
    iput v13, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 886
    :cond_2
    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 887
    iput v13, v2, Landroid/graphics/PointF;->y:F

    .line 891
    :cond_3
    :goto_1
    invoke-direct {v0, v2}, Lcom/amazon/kindle/pagecurl/CurlView;->computeCurlMode(Landroid/graphics/PointF;)Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    move-result-object v12

    .line 892
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CurlView - onActionDown - : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 894
    invoke-direct {v0, v12, v2}, Lcom/amazon/kindle/pagecurl/CurlView;->isLegalPageTurnStartPosition(Lcom/amazon/kindle/pagecurl/CurlStartPosition;Landroid/graphics/PointF;)Z

    move-result v13

    const/4 v14, 0x0

    if-nez v13, :cond_4

    return v14

    .line 902
    :cond_4
    sget-object v13, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_NONE:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v12, v13, :cond_5

    return v14

    .line 905
    :cond_5
    iget-object v13, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v13}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getSelfAnimatedPageIterator()Ljava/util/Iterator;

    move-result-object v13

    .line 906
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 907
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/amazon/kindle/pagecurl/CurledPageState;

    .line 914
    sget-object v9, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v12, v9, :cond_6

    iget-object v9, v15, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_LEFT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    if-eq v9, v6, :cond_7

    :cond_6
    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v12, v6, :cond_a

    iget-object v6, v15, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    sget-object v9, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_RIGHT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    if-ne v6, v9, :cond_a

    .line 917
    :cond_7
    iget-boolean v2, v0, Lcom/amazon/kindle/pagecurl/CurlView;->disableMutliTouch:Z

    if-nez v2, :cond_9

    .line 918
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl View - Compute Touch event - Self animated page curl targeted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but curl asked on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". So moving the self animated curl into the curled vector"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 924
    :cond_8
    iget-object v2, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v2, v15, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->stopAnimatingPage(Lcom/amazon/kindle/pagecurl/CurledPageState;I)V

    .line 925
    invoke-direct/range {p0 .. p4}, Lcom/amazon/kindle/pagecurl/CurlView;->onActionMove(IFFF)Z

    move-result v1

    return v1

    :cond_9
    return v14

    :cond_a
    const/4 v6, 0x2

    const/4 v9, 0x1

    goto :goto_2

    .line 931
    :cond_b
    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v12, v6, :cond_c

    .line 932
    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto :goto_3

    .line 933
    :cond_c
    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v12, v6, :cond_e

    .line 934
    iget-object v6, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v8, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v6, v8, :cond_d

    .line 935
    iget v3, v7, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto :goto_3

    .line 937
    :cond_d
    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 941
    :cond_e
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->curlStartTime:J

    .line 942
    iput-object v12, v4, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    .line 943
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v12, v1, v4}, Lcom/amazon/kindle/pagecurl/CurlView;->startCurl(Lcom/amazon/kindle/pagecurl/CurlStartPosition;Ljava/lang/Integer;Lcom/amazon/kindle/pagecurl/CurledPageState;)V

    .line 947
    iget-object v3, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    iget-object v6, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v7

    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->startUpdatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/pagecurl/CurlView;->requestRender()V

    return v2
.end method

.method private onActionMove(IFFF)Z
    .locals 7

    .line 955
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getCurledPageForPointerID(I)Lcom/amazon/kindle/pagecurl/CurledPageState;

    move-result-object v2

    const/4 p1, 0x1

    if-eqz v2, :cond_1

    .line 962
    new-instance v3, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    invoke-direct {v3}, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;-><init>()V

    .line 963
    iget-object v0, v3, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 964
    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object p3, v3, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->translate(Landroid/graphics/PointF;)V

    .line 965
    iget-boolean p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableTouchPressure:Z

    if-eqz p2, :cond_0

    .line 966
    iput p4, v3, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPressure:F

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 968
    iput p2, v3, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPressure:F

    .line 971
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v5

    iget-object p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->scrollUpdatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    .line 972
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->requestRender()V

    :cond_1
    return p1
.end method

.method private onActionUp(IFFF)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 735
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Curl View - onActionUp -  action up, pointer up or cancel"

    .line 736
    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 738
    :cond_0
    iget-object v2, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getOrCreateCurledPageState(I)Lcom/amazon/kindle/pagecurl/CurledPageState;

    move-result-object v2

    .line 741
    iget-object v3, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v3

    .line 742
    iget-object v5, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v5

    .line 744
    iget-object v7, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object v8, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v7, v8, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_9

    .line 746
    :cond_2
    :goto_1
    iget-object v7, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    .line 747
    iget-object v8, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    .line 750
    iget-object v9, v7, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 751
    iget-object v9, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object v10, v7, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v9, v10}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->translate(Landroid/graphics/PointF;)V

    .line 752
    iget-boolean v9, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableTouchPressure:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    move/from16 v9, p4

    .line 753
    iput v9, v7, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPressure:F

    goto :goto_2

    .line 755
    :cond_3
    iput v10, v7, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPressure:F

    .line 758
    :goto_2
    iget-object v9, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSource:Landroid/graphics/PointF;

    .line 759
    iget-object v11, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTarget:Landroid/graphics/PointF;

    .line 768
    iget-object v12, v7, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v9, v12}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationStartTime:J

    .line 772
    iget-object v12, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mVelocityTrackers:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    .line 773
    iget v14, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mMaximumVelocity:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 774
    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v13

    const/high16 v15, 0x40000000    # 2.0f

    cmpl-float v16, v13, v10

    if-eqz v16, :cond_4

    .line 779
    iget-object v14, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    iget-object v6, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v6, v6, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v6

    invoke-direct {v0, v13, v14}, Lcom/amazon/kindle/pagecurl/CurlView;->isFling(FF)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 780
    :cond_4
    iget-object v6, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object v14, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v6, v14, :cond_5

    if-lez v16, :cond_5

    .line 782
    invoke-virtual {v11, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 783
    iget-object v6, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v6, v4}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, v11, Landroid/graphics/PointF;->x:F

    .line 784
    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_RIGHT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    iput-object v6, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    .line 786
    iget-wide v13, v0, Lcom/amazon/kindle/pagecurl/CurlView;->flingAnimationDuration:J

    long-to-float v6, v13

    iput v6, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationDuration:F

    :goto_3
    const/4 v14, 0x1

    goto :goto_5

    .line 787
    :cond_5
    iget-object v6, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object v14, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v6, v14, :cond_6

    cmpg-float v6, v13, v10

    if-gez v6, :cond_6

    .line 789
    invoke-virtual {v11, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 790
    iget v6, v5, Landroid/graphics/RectF;->left:F

    iput v6, v11, Landroid/graphics/PointF;->x:F

    .line 791
    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_LEFT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    iput-object v6, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    .line 793
    iget-wide v13, v0, Lcom/amazon/kindle/pagecurl/CurlView;->flingAnimationDuration:J

    long-to-float v6, v13

    iput v6, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationDuration:F

    goto :goto_3

    :cond_6
    if-nez v16, :cond_a

    .line 797
    iget-object v6, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v10, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v6, v10, :cond_7

    iget-object v6, v7, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    iget v13, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v13

    div-float/2addr v10, v15

    cmpl-float v6, v6, v10

    if-gtz v6, :cond_8

    :cond_7
    iget-object v6, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v10, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v6, v10, :cond_9

    iget-object v6, v7, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_9

    .line 800
    :cond_8
    invoke-virtual {v11, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 801
    iget v6, v5, Landroid/graphics/RectF;->left:F

    iput v6, v11, Landroid/graphics/PointF;->x:F

    .line 802
    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_LEFT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    iput-object v6, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    goto :goto_4

    .line 805
    :cond_9
    invoke-virtual {v11, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 806
    iget v6, v3, Landroid/graphics/RectF;->right:F

    iput v6, v11, Landroid/graphics/PointF;->x:F

    .line 807
    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_RIGHT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    iput-object v6, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    .line 810
    :goto_4
    iget-wide v13, v0, Lcom/amazon/kindle/pagecurl/CurlView;->tapAnimationDuration:J

    long-to-float v6, v13

    iput v6, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationDuration:F

    goto :goto_3

    :cond_a
    const/4 v14, 0x0

    :goto_5
    if-nez v14, :cond_10

    .line 819
    iget-object v6, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v10, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v6, v10, :cond_b

    iget-object v6, v7, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    iget v13, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v13

    div-float/2addr v10, v15

    cmpl-float v6, v6, v10

    if-gtz v6, :cond_c

    :cond_b
    iget-object v6, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v10, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v6, v10, :cond_d

    iget-object v6, v7, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_d

    .line 822
    :cond_c
    invoke-virtual {v11, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 823
    iget-object v3, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    .line 824
    sget-object v3, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_RIGHT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    iput-object v3, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    goto :goto_8

    .line 827
    :cond_d
    invoke-virtual {v11, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 828
    iget-object v4, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-eq v4, v6, :cond_f

    iget-object v4, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v6, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v4, v6, :cond_e

    goto :goto_6

    .line 831
    :cond_e
    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    goto :goto_7

    .line 829
    :cond_f
    :goto_6
    iget v3, v5, Landroid/graphics/RectF;->left:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    .line 833
    :goto_7
    sget-object v3, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_LEFT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    iput-object v3, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    .line 835
    :goto_8
    iget-wide v3, v0, Lcom/amazon/kindle/pagecurl/CurlView;->flingAnimationDuration:J

    long-to-float v3, v3

    iput v3, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationDuration:F

    .line 837
    :cond_10
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Curl View - Compute Touch event - onTouch - Starting the animation for pointerID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " animationTargetEvent:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " animationSource:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-static {v9}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " animationTarget:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-static {v11}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " animationStartTime:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " startDragingPosition:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    .line 843
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " endDragingPositionCalculated:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    .line 844
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 838
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 847
    :cond_11
    iget-object v1, v0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->animateCurledPage(Lcom/amazon/kindle/pagecurl/CurledPageState;)V

    .line 848
    invoke-virtual {v12}, Landroid/view/VelocityTracker;->clear()V

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/pagecurl/CurlView;->requestRender()V

    goto/16 :goto_0

    :goto_9
    return v1
.end method

.method private queueEventSynchronous(Ljava/lang/Runnable;)V
    .locals 2

    .line 1536
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkNotGLThread()V

    .line 1538
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/amazon/kindle/pagecurl/CurlView$7;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/pagecurl/CurlView$7;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1546
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1550
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1554
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1552
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private recycleAllCurledPages()V
    .locals 3

    .line 1397
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Curl View - Recycle All Curled Pages - recycle all ongoing curled page vector"

    .line 1398
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1400
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1401
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/pagecurl/CurledPageState;

    .line 1402
    invoke-direct {p0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->recyclePageMeshes(Lcom/amazon/kindle/pagecurl/CurledPageState;)I

    .line 1403
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->recycle(Lcom/amazon/kindle/pagecurl/CurledPageState;)V

    goto :goto_0

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->clearCurledPageState()V

    return-void
.end method

.method private recycleMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V
    .locals 2

    .line 1424
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - recycle mesh - recycling @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1426
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/pagecurl/IMesh;->releaseBitmap()V

    .line 1427
    invoke-interface {p1}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    .line 1428
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->meshToRecycle:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private recyclePageMeshes(Lcom/amazon/kindle/pagecurl/CurledPageState;)I
    .locals 4

    .line 1409
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - Recycle Page Meshes - recycling all the curled page meshes of the page @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1412
    :goto_0
    iget-object v2, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1414
    iget-object v2, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-direct {p0, v2}, Lcom/amazon/kindle/pagecurl/CurlView;->recycleMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1415
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    if-eqz v2, :cond_1

    .line 1416
    iget-object v3, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1419
    :cond_2
    iget-object p1, p1, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    return v1
.end method

.method private releaseInternal()V
    .locals 3

    .line 1889
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CurlView - releaseInternal - -------------------------------- Processing the release of all the curl view ressources ! -------------------------------- "

    .line 1890
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 1895
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    if-eqz v0, :cond_1

    .line 1896
    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->releaseBitmap()V

    .line 1898
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    if-eqz v0, :cond_2

    .line 1899
    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->releaseBitmap()V

    .line 1902
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1903
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1904
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/pagecurl/CurledPageState;

    .line 1905
    iget-object v1, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/IMesh;

    .line 1906
    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->releaseBitmap()V

    goto :goto_0

    .line 1910
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    if-eqz v0, :cond_5

    .line 1911
    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    .line 1913
    :cond_5
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    if-eqz v0, :cond_6

    .line 1914
    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    .line 1918
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->recycleAllCurledPages()V

    .line 1919
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->clearRendererMeshes()V

    .line 1921
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->clearAll()V

    .line 1922
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->meshToRecycle:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1925
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    if-eqz v0, :cond_7

    .line 1926
    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->releaseAll()V

    .line 1929
    :cond_7
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Curl View - releaseInternal - -------------------------------- Done releasing of all the resources of the curl View ! -------------------------------- "

    .line 1930
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private setOnReadyObserver(Lcom/amazon/kindle/pagecurl/CurlView$CurlViewReadyObserver;)V
    .locals 0

    .line 2247
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->initializationObsever:Lcom/amazon/kindle/pagecurl/CurlView$CurlViewReadyObserver;

    return-void
.end method

.method private startCurl(Lcom/amazon/kindle/pagecurl/CurlStartPosition;Ljava/lang/Integer;Lcom/amazon/kindle/pagecurl/CurledPageState;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    .line 1210
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v1

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curl View - Start curl - direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pointerID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " current page img idx:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl View - Start curl - image idx on the left is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    sub-int/2addr v3, v9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on the rigth is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    .line 1214
    :goto_0
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1215
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Curl View - Start curl - Error in startCurl method !!!! We should not start a new curl with a vector of mesh already containing a mesh !!!!"

    .line 1216
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1219
    :cond_1
    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object v3, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1220
    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object v3, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1222
    sget-object v1, Lcom/amazon/kindle/pagecurl/CurlView$18;->$SwitchMap$com$amazon$kindle$pagecurl$CurlStartPosition:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v10, " on the back of the curled page"

    const-string v11, "Curl View - Start curl - Setting the image with the index "

    const-string v2, "Curl View - Start curl - [Image ID] Setting the image with the index "

    const-string v3, "Curl View - Start curl - Adding curl page into vector. Pointer ID:"

    const/4 v4, 0x0

    const-string v5, "Curl View - Start curl - adding curl snapshot into the ongoing snapshot vector"

    const/4 v12, 0x2

    if-eq v1, v9, :cond_f

    if-eq v1, v12, :cond_2

    goto/16 :goto_4

    .line 1294
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1295
    invoke-static {v5}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1298
    :cond_3
    iget-object v13, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 1299
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->getNewMesh()Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v1

    iput-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 1300
    iget-object v5, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v6, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    :goto_1
    invoke-interface {v1, v4}, Lcom/amazon/kindle/pagecurl/IMesh;->setDisplayFrontImageOnBack(Z)V

    .line 1302
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1304
    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4, v8}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->addCurledPageForPointerID(ILcom/amazon/kindle/pagecurl/CurledPageState;)V

    .line 1307
    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->backListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

    if-eqz v1, :cond_5

    .line 1308
    invoke-interface {v13}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v4

    sget-object v5, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-interface {v1, v4, v5}, Lcom/amazon/kindle/pagecurl/BackgroundViewListener;->onCurlStarted(ILcom/amazon/kindle/pagecurl/CurlStartPosition;)V

    .line 1311
    :cond_5
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1315
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->getLeftImageIdx()I

    move-result v14

    if-ltz v14, :cond_9

    .line 1317
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on the left page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1319
    :cond_7
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    iget v3, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    iget v4, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    const/4 v6, 0x0

    move v1, v14

    move-object v5, p0

    invoke-interface/range {v0 .. v6}, Lcom/amazon/kindle/pagecurl/IMesh;->setBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    .line 1320
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v1, v9}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v7, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/pagecurl/IMesh;->setRect(Landroid/graphics/RectF;I)V

    .line 1321
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    .line 1322
    iget-boolean v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderLeftPage:Z

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, v1, :cond_9

    .line 1323
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - Start curl - Adding back the LEFT mesh inside the renderer @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1325
    :cond_8
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->addLeftMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1330
    :cond_9
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->getRightImageIdx()I

    move-result v0

    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    invoke-interface {v1}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->getBitmapCount()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 1331
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Curl View - Start curl - Showing rigth page"

    .line 1332
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1333
    :cond_a
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v1, v12}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v7, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/pagecurl/IMesh;->setRect(Landroid/graphics/RectF;I)V

    .line 1334
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    .line 1335
    iget-boolean v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderRightPage:Z

    if-eqz v0, :cond_b

    .line 1336
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->addRigthMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1341
    :cond_b
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, v1, :cond_d

    add-int/lit8 v1, v14, 0x1

    if-ltz v1, :cond_d

    .line 1342
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1344
    :cond_c
    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    iget v3, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    iget v4, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    const/4 v6, 0x0

    move-object v0, v13

    move-object v5, p0

    invoke-interface/range {v0 .. v6}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    .line 1346
    :cond_d
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_ONE_PAGE:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, v1, :cond_e

    .line 1347
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v0, v12}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    invoke-interface {v13, v0, v1}, Lcom/amazon/kindle/pagecurl/IMesh;->setRect(Landroid/graphics/RectF;I)V

    goto :goto_2

    .line 1349
    :cond_e
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v0, v9}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    invoke-interface {v13, v0, v1}, Lcom/amazon/kindle/pagecurl/IMesh;->setRect(Landroid/graphics/RectF;I)V

    .line 1352
    :goto_2
    invoke-interface {v13, v9}, Lcom/amazon/kindle/pagecurl/IMesh;->setFrontVisiblity(Z)V

    .line 1353
    invoke-interface {v13, v9}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackVisiblity(Z)V

    .line 1354
    invoke-interface {v13}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    .line 1355
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-interface {v13}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->addCurlMesh(Ljava/lang/Integer;Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1356
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    iput-object v0, v8, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    goto/16 :goto_4

    .line 1228
    :cond_f
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1229
    invoke-static {v5}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1232
    :cond_10
    iget-object v13, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 1233
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->getNewMesh()Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v1

    iput-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 1234
    iget-object v5, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v6, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v5, v6, :cond_11

    goto :goto_3

    :cond_11
    const/4 v4, 0x1

    :goto_3
    invoke-interface {v1, v4}, Lcom/amazon/kindle/pagecurl/IMesh;->setDisplayFrontImageOnBack(Z)V

    .line 1236
    iget-object v1, v8, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1238
    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4, v8}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->addCurledPageForPointerID(ILcom/amazon/kindle/pagecurl/CurledPageState;)V

    .line 1241
    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->backListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

    if-eqz v1, :cond_12

    .line 1242
    invoke-interface {v13}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v4

    sget-object v5, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-interface {v1, v4, v5}, Lcom/amazon/kindle/pagecurl/BackgroundViewListener;->onCurlStarted(ILcom/amazon/kindle/pagecurl/CurlStartPosition;)V

    .line 1245
    :cond_12
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1250
    :cond_13
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->getLeftImageIdx()I

    move-result v0

    if-lez v0, :cond_15

    .line 1251
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "Curl View - Start curl - Showing left page"

    .line 1252
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1253
    :cond_14
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v1, v9}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v1

    iget v3, v7, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/pagecurl/IMesh;->setRect(Landroid/graphics/RectF;I)V

    .line 1254
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    .line 1255
    iget-boolean v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderLeftPage:Z

    if-eqz v0, :cond_15

    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, v1, :cond_15

    .line 1256
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->addLeftMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1262
    :cond_15
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->getRightImageIdx()I

    move-result v14

    .line 1263
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->getBitmapCount()I

    move-result v0

    if-ge v14, v0, :cond_17

    .line 1264
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on the right page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1266
    :cond_16
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    iget v3, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    iget v4, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    const/4 v6, 0x0

    move v1, v14

    move-object v5, p0

    invoke-interface/range {v0 .. v6}, Lcom/amazon/kindle/pagecurl/IMesh;->setBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    .line 1267
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v1, v12}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v7, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/pagecurl/IMesh;->setRect(Landroid/graphics/RectF;I)V

    .line 1268
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    .line 1269
    iget-boolean v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderRightPage:Z

    if-eqz v0, :cond_17

    .line 1270
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->addRigthMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1275
    :cond_17
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, v1, :cond_19

    add-int/lit8 v1, v14, -0x1

    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->getBitmapCount()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 1276
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1278
    :cond_18
    iget-object v2, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    iget v3, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    iget v4, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    const/4 v6, 0x0

    move-object v0, v13

    move-object v5, p0

    invoke-interface/range {v0 .. v6}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    .line 1280
    :cond_19
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v0, v12}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v7, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    invoke-interface {v13, v0, v1}, Lcom/amazon/kindle/pagecurl/IMesh;->setRect(Landroid/graphics/RectF;I)V

    .line 1282
    invoke-interface {v13, v9}, Lcom/amazon/kindle/pagecurl/IMesh;->setFrontVisiblity(Z)V

    .line 1283
    invoke-interface {v13, v9}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackVisiblity(Z)V

    .line 1284
    invoke-interface {v13}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    .line 1285
    iget-object v0, v7, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-interface {v13}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->addCurlMesh(Ljava/lang/Integer;Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1286
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    iput-object v0, v8, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    :goto_4
    return-void
.end method

.method private switchViewMode()V
    .locals 4

    .line 1079
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1080
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    if-eqz v1, :cond_1

    .line 1081
    invoke-interface {v1, v0}, Lcom/amazon/kindle/pagecurl/IMesh;->setDisplayFrontImageOnBack(Z)V

    .line 1082
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    if-eqz v1, :cond_2

    .line 1083
    invoke-interface {v1, v0}, Lcom/amazon/kindle/pagecurl/IMesh;->setDisplayFrontImageOnBack(Z)V

    .line 1085
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getCurledPageIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1086
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1087
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/CurledPageState;

    .line 1088
    iget-object v2, v2, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/pagecurl/IMesh;

    .line 1089
    invoke-interface {v3, v0}, Lcom/amazon/kindle/pagecurl/IMesh;->setDisplayFrontImageOnBack(Z)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private updateBitmaps()V
    .locals 10

    .line 1366
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    if-gtz v0, :cond_0

    goto/16 :goto_0

    .line 1370
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->getLeftImageIdx()I

    move-result v2

    .line 1371
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->getRightImageIdx()I

    move-result v4

    .line 1373
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - Update bitmaps - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->countToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LeftIdx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rightIdx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1376
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->getBitmapCount()I

    move-result v0

    if-ltz v4, :cond_2

    if-ge v4, v0, :cond_2

    .line 1378
    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v5, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    iget v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    iget v7, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    const/4 v9, 0x1

    move-object v8, p0

    invoke-interface/range {v3 .. v9}, Lcom/amazon/kindle/pagecurl/IMesh;->setBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    .line 1379
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v3

    iget v4, p0, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    invoke-interface {v1, v3, v4}, Lcom/amazon/kindle/pagecurl/IMesh;->setRect(Landroid/graphics/RectF;I)V

    .line 1380
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v1}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    :cond_2
    if-ltz v2, :cond_3

    if-ge v2, v0, :cond_3

    .line 1383
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    iget v4, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    iget v5, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    const/4 v7, 0x1

    move-object v6, p0

    invoke-interface/range {v1 .. v7}, Lcom/amazon/kindle/pagecurl/IMesh;->setBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    .line 1384
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/pagecurl/IMesh;->setRect(Landroid/graphics/RectF;I)V

    .line 1385
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateFakeDragInternal(IFFF)V
    .locals 8

    .line 1738
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    const-string v1, " y:"

    const-string v2, " x:"

    if-eqz v0, :cond_0

    .line 1739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl View - updateFakeDrag - Processing the update fake drag ! pointerID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getCurledPageForPointerID(I)Lcom/amazon/kindle/pagecurl/CurledPageState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1744
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1745
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Curl View - updateFakeDrag - No state ! pointerID:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1747
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1748
    iget-wide v0, v0, Lcom/amazon/kindle/pagecurl/CurledPageState;->curlStartTime:J

    const/4 v4, 0x2

    const/4 v7, 0x0

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1749
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mVelocityTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1750
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1752
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/pagecurl/CurlView;->onActionMove(IFFF)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public beginFakeDrag(IFFF)Z
    .locals 10

    .line 1576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1578
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->isReady()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1579
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Curl View - beginFakeDrag - WARNING !!! CurlView not ready to take into account beginFakeDrag !"

    .line 1580
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    return v3

    .line 1584
    :cond_1
    iget-wide v4, p0, Lcom/amazon/kindle/pagecurl/CurlView;->lastBeginFakeDragTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->minMsBetweenTwoFakeDrags:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_3

    .line 1585
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1586
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Curl View - beginFakeDrag - minimum interval "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->minMsBetweenTwoFakeDrags:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms not reached so ignoring that begin fake drag"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_2
    return v3

    .line 1590
    :cond_3
    iget-boolean v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->disableMutliTouch:Z

    if-eqz v2, :cond_5

    if-lez p1, :cond_5

    .line 1591
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1592
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Curl View - Begin Fake Drag - Multi touch is disabled and pointer ID is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which is not primary so discarding it"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_4
    return v3

    :cond_5
    const/4 v2, 0x1

    .line 1596
    iput-boolean v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->isFakeDraging:Z

    .line 1597
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Curl View - beginFakeDrag - Stacking a begin fake drag ! pointerID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1599
    :cond_6
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->lastBeginFakeDragTime:J

    .line 1601
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$8;

    move-object v4, v0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kindle/pagecurl/CurlView$8;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;IFFF)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    return v2
.end method

.method computeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 658
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 662
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 663
    iget-boolean v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->disableMutliTouch:Z

    const-string v3, " which is not primary so discarding it"

    if-eqz v2, :cond_2

    if-lez v0, :cond_2

    .line 664
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 665
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curl View - Compute Touch event - Multi touch is disabled and pointer ID is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_1
    return v1

    .line 669
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 671
    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mVelocityTrackers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 673
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    .line 674
    iget-object v5, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mVelocityTrackers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 676
    :cond_3
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 678
    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/CurlView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    return v5

    .line 682
    :cond_4
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 683
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curl View - Compute Touch event - Pointer count:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Pointer ID:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->countToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Me:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x6

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x5

    if-eq v2, v7, :cond_6

    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_6

    if-eq v2, v0, :cond_6

    if-eq v2, v4, :cond_6

    if-ne v2, v5, :cond_c

    .line 691
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_b

    if-eq v2, v5, :cond_a

    if-eq v2, v6, :cond_7

    if-eq v2, v4, :cond_a

    if-eq v2, v7, :cond_b

    if-eq v2, v0, :cond_a

    goto/16 :goto_2

    .line 703
    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 704
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 707
    iget-boolean v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->disableMutliTouch:Z

    if-eqz v2, :cond_8

    if-lez v0, :cond_8

    .line 708
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Curl View - Move curled page - Multi touch is disabled and pointer ID for the move is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 713
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 714
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 715
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    .line 712
    invoke-direct {p0, v0, v2, v4, v6}, Lcom/amazon/kindle/pagecurl/CurlView;->onActionMove(IFFF)Z

    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 724
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 726
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    .line 723
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->onActionUp(IFFF)Z

    goto :goto_2

    .line 695
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    .line 695
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->onActionDown(IFFF)Z

    :cond_c
    :goto_2
    return v5
.end method

.method public enableBitmapStretching(Z)V
    .locals 1

    .line 2020
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 2021
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableBitmapStretching:Z

    return-void
.end method

.method public enableLeftPageRendering(Z)V
    .locals 1

    .line 1997
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 1998
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderLeftPage:Z

    return-void
.end method

.method public enableOverlayMode(Z)V
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 2032
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->activateOverlayMode:Z

    return-void
.end method

.method public enableRightPageRendering(Z)V
    .locals 1

    .line 2009
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 2010
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderRightPage:Z

    return-void
.end method

.method public endFakeDrag(IFFF)V
    .locals 7

    .line 1659
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - endFakeDrag - Stacking a end fake drag ! pointerID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1662
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1663
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Curl View - beginFakeDrag - WARNING !!! CurlView not ready to take into account endFakeDrag !"

    .line 1664
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1668
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->disableMutliTouch:Z

    if-eqz v0, :cond_4

    if-lez p1, :cond_4

    .line 1669
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1670
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Curl View - End Fake Drag - Multi touch is disabled and pointer ID is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which is not primary so discarding it"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 1674
    :cond_4
    new-instance v6, Lcom/amazon/kindle/pagecurl/CurlView$9;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/pagecurl/CurlView$9;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;IFFF)V

    invoke-virtual {p0, v6}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBackgroundViewListener()Lcom/amazon/kindle/pagecurl/BackgroundViewListener;
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->backListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

    return-object v0
.end method

.method public getBitmapLoader()Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;
    .locals 1

    .line 2234
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 2256
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    return v0
.end method

.method public getFlingAnimationDuration()J
    .locals 2

    .line 1946
    iget-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->flingAnimationDuration:J

    return-wide v0
.end method

.method public getMinIntervalBetweenTwoBeginFakeDrag()J
    .locals 2

    .line 1969
    iget-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->minMsBetweenTwoFakeDrags:J

    return-wide v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 2288
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 2281
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceWidth:I

    return v0
.end method

.method public getTapAnimationDuration()J
    .locals 2

    .line 1962
    iget-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->tapAnimationDuration:J

    return-wide v0
.end method

.method public getViewMode()Lcom/amazon/kindle/pagecurl/ViewMode;
    .locals 1

    .line 1986
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    return-object v0
.end method

.method public hideLeftRightPage()V
    .locals 1

    .line 1780
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Curl View - hideLeftRightPage - Stacking a hide of the left/right page"

    .line 1781
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1783
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$12;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/pagecurl/CurlView$12;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;)V

    .line 1794
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public init(Lcom/amazon/kindle/pagecurl/CurlView$CurlViewReadyObserver;)V
    .locals 9

    const-string v0, "Curl View - init - Initialization of curl view started"

    .line 1102
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1104
    invoke-direct {p0, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->setOnReadyObserver(Lcom/amazon/kindle/pagecurl/CurlView$CurlViewReadyObserver;)V

    .line 1106
    :cond_0
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->CURL_VIEW_INITIALIZATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1108
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->touchEventHandler:Lcom/amazon/kindle/pagecurl/TouchEventHandler;

    if-nez p1, :cond_1

    .line 1109
    new-instance p1, Lcom/amazon/kindle/pagecurl/TouchEventHandler;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/pagecurl/TouchEventHandler;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->touchEventHandler:Lcom/amazon/kindle/pagecurl/TouchEventHandler;

    .line 1112
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mSizeChangedObserver:Lcom/amazon/kindle/pagecurl/CurlView$SizeChangedObserver;

    if-nez p1, :cond_2

    .line 1113
    new-instance p1, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/pagecurl/SizeChangedObserver;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mSizeChangedObserver:Lcom/amazon/kindle/pagecurl/CurlView$SizeChangedObserver;

    :cond_2
    const/4 p1, 0x2

    .line 1117
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 1119
    iget-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->activateOverlayMode:Z

    if-eqz p1, :cond_3

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v2, p0

    .line 1120
    invoke-virtual/range {v2 .. v8}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 1121
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v2, -0x3

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1124
    :cond_3
    new-instance p1, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;-><init>(Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    .line 1125
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1127
    iget-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->activateOverlayMode:Z

    if-eqz p1, :cond_4

    .line 1129
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    :cond_4
    const/4 p1, 0x0

    .line 1132
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1134
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1136
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1137
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mMinimumVelocity:I

    .line 1138
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mMaximumVelocity:I

    .line 1139
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41700000    # 15.0f

    mul-float v2, v2, v3

    .line 1140
    iput v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mFlingDistance:F

    .line 1143
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, -0x1

    .line 1144
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1145
    new-instance v3, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-direct {v3, v2, v4}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;-><init>(Landroid/graphics/Bitmap;Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;)V

    iput-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    .line 1147
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->CURL_VIEW_INITIALIZATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1149
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->backListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->setCurlViewBackgroundListener(Lcom/amazon/kindle/pagecurl/BackgroundViewListener;)V

    .line 1152
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->backgroundColor:I

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->setBackgroundColor(I)V

    .line 1153
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->pageBackgroundColor:I

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->setPageBackgroundColor(I)V

    .line 1155
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

    if-nez p1, :cond_5

    .line 1156
    new-instance p1, Lcom/amazon/kindle/pagecurl/opengles20/DarkShadowProvider;

    invoke-direct {p1}, Lcom/amazon/kindle/pagecurl/opengles20/DarkShadowProvider;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->setShadowProvider(Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;)V

    .line 1159
    :cond_5
    iput-boolean v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mHasBeenInitialized:Z

    return-void
.end method

.method public declared-synchronized invalidatePage(I)V
    .locals 2

    monitor-enter p0

    .line 1811
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkNotGLThread()V

    if-ltz p1, :cond_2

    .line 1813
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1816
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - invalidatePage - stacking invalidate pageID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1819
    :cond_1
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$13;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/pagecurl/CurlView$13;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;I)V

    .line 1861
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    monitor-exit p0

    return-void

    .line 1814
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isReady()Z
    .locals 1

    .line 2263
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->hasGLContext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1463
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CurlView - onAttachedToWindow"

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1464
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    return-void
.end method

.method public declared-synchronized onDetachedFromWindow()V
    .locals 1

    monitor-enter p0

    .line 1435
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CurlView - onDetachedFromWindow"

    .line 1436
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->resetGLContext()V

    .line 1442
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1443
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$5;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/pagecurl/CurlView$5;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;)V

    .line 1450
    invoke-direct {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEventSynchronous(Ljava/lang/Runnable;)V

    .line 1453
    :cond_1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 1456
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->resetGLThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDrawFrame()V
    .locals 14

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getSelfAnimatedPageIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 244
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Curl View - on Draw Frame - drawing..."

    .line 245
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 246
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/pagecurl/CurledPageState;

    if-nez v1, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 252
    iget-wide v4, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationStartTime:J

    .line 253
    iget v6, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationDuration:F

    .line 254
    iget-object v7, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    .line 255
    iget-object v8, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTarget:Landroid/graphics/PointF;

    .line 256
    iget-object v9, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSource:Landroid/graphics/PointF;

    long-to-float v2, v2

    long-to-float v3, v4

    add-float/2addr v3, v6

    const-string v6, "Curl View - on Draw Frame - Two page have been merged"

    const/4 v10, 0x2

    const/4 v11, 0x1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_16

    .line 262
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    iget-object v12, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v12, v10}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v12

    iget-object v13, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v13, v11}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual {v2, v1, v3, v12, v13}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->endUpdatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    move-result-object v2

    .line 264
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Curl View - on Draw Frame - Animation terminated and the result of the last updatePosition is "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 266
    :cond_2
    sget-object v3, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->NOT_MERGED:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    if-ne v2, v3, :cond_14

    .line 267
    sget-object v2, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_RIGHT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    const-string v3, "Curl View - Draw Frame - removing ONGOING curls mesh due to animation end"

    const-string v6, " due to animation end"

    const-string v12, "Curl View - Draw Frame - Removing curl page from vector as the animation is ended."

    if-ne v7, v2, :cond_b

    .line 269
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    invoke-static {v12}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 271
    :cond_3
    iget-object v2, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/IMesh;

    .line 274
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 275
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Curl View - Draw Frame - removing RIGHT curl mesh @"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 276
    :cond_4
    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-direct {p0, v6}, Lcom/amazon/kindle/pagecurl/CurlView;->recycleMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 277
    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object v12, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v6, v12}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 279
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 280
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 281
    :cond_5
    invoke-direct {p0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->recyclePageMeshes(Lcom/amazon/kindle/pagecurl/CurledPageState;)I

    move-result v3

    add-int/2addr v11, v3

    .line 283
    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v3, v10}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v3

    iget v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    invoke-interface {v2, v3, v6}, Lcom/amazon/kindle/pagecurl/IMesh;->setRect(Landroid/graphics/RectF;I)V

    .line 284
    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    .line 285
    iget-boolean v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderRightPage:Z

    if-eqz v3, :cond_7

    .line 286
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curl View - Draw Frame - adding RIGHT curl mesh @"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as we show the right page"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 288
    :cond_6
    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->addRigthMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 291
    :cond_7
    iput-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 293
    iget-object v2, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object v3, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_LEFT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v2, v3, :cond_a

    .line 294
    iget v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v6, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v3, v6, :cond_8

    mul-int/lit8 v3, v11, 0x2

    goto :goto_1

    :cond_8
    move v3, v11

    :goto_1
    sub-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    .line 295
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v3, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v2, v3, :cond_9

    .line 296
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageRight:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->invertBackFrontBitmap()V

    .line 297
    :cond_9
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl View - Draw Frame - decrementing the current index to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 301
    :cond_a
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->backListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

    if-eqz v2, :cond_15

    .line 302
    iget v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    iget-object v6, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-interface {v2, v3, v6, v7, v11}, Lcom/amazon/kindle/pagecurl/BackgroundViewListener;->onCurlEnded(ILcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/CurlTargetPosition;I)V

    goto/16 :goto_3

    .line 304
    :cond_b
    sget-object v2, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_LEFT:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    if-ne v7, v2, :cond_15

    .line 306
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 307
    invoke-static {v12}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 308
    :cond_c
    iget-object v2, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v10

    sub-int/2addr v10, v11

    invoke-virtual {v2, v10}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/IMesh;

    .line 311
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 312
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Curl View - Draw Frame - removing LEFT curl mesh @"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 313
    :cond_d
    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-direct {p0, v6}, Lcom/amazon/kindle/pagecurl/CurlView;->recycleMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 314
    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    iget-object v10, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-virtual {v6, v10}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 316
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 317
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 318
    :cond_e
    invoke-direct {p0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->recyclePageMeshes(Lcom/amazon/kindle/pagecurl/CurledPageState;)I

    move-result v3

    add-int/2addr v3, v11

    .line 320
    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v6, v11}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v6

    iget v10, p0, Lcom/amazon/kindle/pagecurl/CurlView;->segments_number:I

    invoke-interface {v2, v6, v10}, Lcom/amazon/kindle/pagecurl/IMesh;->setRect(Landroid/graphics/RectF;I)V

    .line 321
    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->reset()V

    .line 322
    iget-boolean v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderLeftPage:Z

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v10, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v6, v10, :cond_10

    .line 323
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Curl View - Draw Frame - adding LEFT curl mesh @"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " as we show the left page"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 325
    :cond_f
    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v6, v2}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->addLeftMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 328
    :cond_10
    iput-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    .line 330
    iget-object v2, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    sget-object v6, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_RIGHT:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    if-ne v2, v6, :cond_13

    .line 331
    iget v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v10, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v6, v10, :cond_11

    mul-int/lit8 v6, v3, 0x2

    goto :goto_2

    :cond_11
    move v6, v3

    :goto_2
    add-int/2addr v2, v6

    iput v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    .line 332
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    sget-object v6, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v2, v6, :cond_12

    .line 333
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageLeft:Lcom/amazon/kindle/pagecurl/IMesh;

    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->invertBackFrontBitmap()V

    .line 334
    :cond_12
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curl View - Draw Frame - incrementing the current index to:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 339
    :cond_13
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->backListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

    if-eqz v2, :cond_15

    .line 340
    iget v6, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurrentImageIndex:I

    iget-object v10, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-interface {v2, v6, v10, v7, v3}, Lcom/amazon/kindle/pagecurl/BackgroundViewListener;->onCurlEnded(ILcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/CurlTargetPosition;I)V

    goto :goto_3

    .line 346
    :cond_14
    invoke-direct {p0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->recyclePageMeshes(Lcom/amazon/kindle/pagecurl/CurledPageState;)I

    .line 347
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 348
    invoke-static {v6}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 350
    :cond_15
    :goto_3
    sget-object v2, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_NONE:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    iput-object v2, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    .line 353
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 355
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curl View - Draw Frame - terminating the animation animationTargetEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " animationSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-static {v9}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " animationTarget:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {v8}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " animationStartTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " startDragingPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    .line 361
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " endDragingPositionCalculated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    .line 362
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 364
    :cond_16
    iget-object v2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mCurledPage:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mViewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    iget-object v4, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v4, v10}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderer:Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    invoke-virtual {v5, v11}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->getPageRect(I)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->animationUpdatePosition(Lcom/amazon/kindle/pagecurl/CurledPageState;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    move-result-object v2

    .line 365
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Curl View - on Draw Frame - Result of updatePosition is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 368
    :cond_17
    sget-object v3, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->MERGED:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    if-ne v2, v3, :cond_19

    .line 369
    invoke-direct {p0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->recyclePageMeshes(Lcom/amazon/kindle/pagecurl/CurledPageState;)I

    .line 370
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 371
    invoke-static {v6}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 372
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 375
    :cond_19
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->requestRender()V

    goto/16 :goto_0

    :cond_1a
    return-void
.end method

.method public onPageSizeChanged(II)V
    .locals 2

    .line 381
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapWidth:I

    .line 382
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mPageBitmapHeight:I

    .line 383
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - On page size changed - width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onPause()V
    .locals 1

    monitor-enter p0

    .line 1472
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CurlView - onPause"

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1475
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$6;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/pagecurl/CurlView$6;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;)V

    .line 1482
    invoke-direct {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEventSynchronous(Ljava/lang/Runnable;)V

    .line 1485
    :cond_1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 1488
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->resetGLContext()V

    .line 1490
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->resetGLThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1491
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .line 1498
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CurlView - onResume"

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1500
    iput-boolean v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->shouldForceUpdateSizes:Z

    .line 1503
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 2

    .line 389
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - On surface changed - width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThread()V

    .line 393
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkHasGLContext()V

    .line 397
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceWidth:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceHeight:I

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->shouldForceUpdateSizes:Z

    if-eqz v0, :cond_3

    .line 398
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->shouldForceUpdateSizes:Z

    .line 399
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceWidth:I

    .line 400
    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView;->surfaceHeight:I

    .line 402
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mSizeChangedObserver:Lcom/amazon/kindle/pagecurl/CurlView$SizeChangedObserver;

    if-eqz v0, :cond_2

    .line 403
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/pagecurl/CurlView$SizeChangedObserver;->onSizeChanged(II)V

    .line 406
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->releaseInternal()V

    .line 409
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->textureProvider:Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;->releaseAll()V

    .line 412
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->updateBitmaps()V

    .line 414
    iget-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->notifyReadyObserver:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->initializationObsever:Lcom/amazon/kindle/pagecurl/CurlView$CurlViewReadyObserver;

    if-eqz p1, :cond_4

    .line 415
    iput-boolean v1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->notifyReadyObserver:Z

    .line 416
    invoke-interface {p1}, Lcom/amazon/kindle/pagecurl/CurlView$CurlViewReadyObserver;->onReady()V

    :cond_4
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 1

    .line 422
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Curl View - On surface created - Releasing all the page and recreating new one then notifying the initialization Observer"

    .line 423
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->setGLThread()V

    .line 427
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->setGLContext()V

    .line 429
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->releaseInternal()V

    .line 430
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->createLeftPage()V

    .line 431
    invoke-direct {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->createRightPage()V

    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->notifyReadyObserver:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 438
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->touchEventHandler:Lcom/amazon/kindle/pagecurl/TouchEventHandler;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/pagecurl/TouchEventHandler;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    .line 1525
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurlView - queueEvent - r@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1528
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadSet()V

    .line 1530
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1531
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 1873
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1874
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$14;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/pagecurl/CurlView$14;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;)V

    .line 1882
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CurlView - release - Stacking a release of all the ressource of the curl View !"

    .line 1883
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1884
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 1511
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CurlView - requestRender"

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadSet()V

    .line 1515
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1516
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_1
    return-void
.end method

.method public setAllowLastPageCurl(Z)V
    .locals 1

    .line 2185
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 2186
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mAllowLastPageCurl:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 2197
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->backgroundColor:I

    .line 2203
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->isGLThreadSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2204
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$17;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/pagecurl/CurlView$17;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;I)V

    .line 2211
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundViewListener(Lcom/amazon/kindle/pagecurl/BackgroundViewListener;)V
    .locals 1

    .line 2052
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 2053
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mHasBeenInitialized:Z

    if-nez v0, :cond_0

    .line 2056
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->backListener:Lcom/amazon/kindle/pagecurl/BackgroundViewListener;

    return-void

    .line 2054
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BackgroundViewListener must be set before initializing CurlView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBitmapLoader(Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;)V
    .locals 1

    .line 2223
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 2224
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mHasBeenInitialized:Z

    if-nez v0, :cond_0

    .line 2227
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    return-void

    .line 2225
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "TouchEventHandler must be set before initializing CurlView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentIndex(I)V
    .locals 3

    .line 1010
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/pagecurl/CurlView$3;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;I)V

    .line 1044
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->release()V

    .line 1046
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curl View - setCurrentIndex Bis - Stacking the set current index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bitmapLoader"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mBitmaploader:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1049
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCurrentIndexBis(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 999
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->setCurrentIndex(I)V

    return-void
.end method

.method public setDisableMultiTouch(Z)V
    .locals 1

    .line 2173
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 2174
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->disableMutliTouch:Z

    return-void
.end method

.method public setEnableTouchPressure(Z)V
    .locals 1

    .line 2094
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 2095
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mEnableTouchPressure:Z

    return-void
.end method

.method public setFlingAnimationDuration(J)V
    .locals 1

    .line 1938
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 1939
    iput-wide p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->flingAnimationDuration:J

    return-void
.end method

.method public setMargins(FFFF)V
    .locals 7

    .line 2103
    new-instance v6, Lcom/amazon/kindle/pagecurl/CurlView$15;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/pagecurl/CurlView$15;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;FFFF)V

    .line 2109
    invoke-virtual {p0, v6}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMinIntervalBetweenTwoBeginFakeDrag(J)V
    .locals 1

    .line 1978
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 1979
    iput-wide p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->minMsBetweenTwoFakeDrags:J

    return-void
.end method

.method public setPageBackgroundColor(I)V
    .locals 1

    .line 2119
    iput p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->pageBackgroundColor:I

    .line 2125
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->hasGLContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2126
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$16;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/pagecurl/CurlView$16;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;I)V

    .line 2134
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setRenderLeftPage(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2148
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 2149
    iput-boolean p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mRenderLeftPage:Z

    return-void
.end method

.method public setShadowProvider(Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;)V
    .locals 0

    .line 2295
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mShadowProvider:Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;

    return-void
.end method

.method public setSizeChangedObserver(Lcom/amazon/kindle/pagecurl/CurlView$SizeChangedObserver;)V
    .locals 1

    .line 2162
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 2163
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mSizeChangedObserver:Lcom/amazon/kindle/pagecurl/CurlView$SizeChangedObserver;

    return-void
.end method

.method public setTapAnimationDuration(J)V
    .locals 1

    .line 1954
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 1955
    iput-wide p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->tapAnimationDuration:J

    return-void
.end method

.method public setTouchEventHandler(Lcom/amazon/kindle/pagecurl/TouchEventHandler;)V
    .locals 1

    .line 2077
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mGLThreadChecker:Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/utils/GLThreadChecker;->checkGLThreadNotSet()V

    .line 2078
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->mHasBeenInitialized:Z

    if-nez v0, :cond_0

    .line 2081
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView;->touchEventHandler:Lcom/amazon/kindle/pagecurl/TouchEventHandler;

    return-void

    .line 2079
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "TouchEventHandler must be set before initializing CurlView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewMode(Lcom/amazon/kindle/pagecurl/ViewMode;)V
    .locals 1

    .line 1059
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/pagecurl/CurlView$4;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;Lcom/amazon/kindle/pagecurl/ViewMode;)V

    .line 1075
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateFakeDrag(IFFF)V
    .locals 7

    .line 1713
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - updateFakeDrag - Stacking a update fake drag ! pointerID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1716
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/CurlView;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1717
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Curl View - beginFakeDrag - WARNING !!! CurlView not ready to take into account updateFakeDrag !"

    .line 1718
    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1722
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kindle/pagecurl/CurlView;->disableMutliTouch:Z

    if-eqz v0, :cond_4

    if-lez p1, :cond_4

    .line 1723
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1724
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Curl View - Update Fake Drag - Multi touch is disabled and pointer ID is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which is not primary so discarding it"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 1728
    :cond_4
    new-instance v6, Lcom/amazon/kindle/pagecurl/CurlView$10;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/pagecurl/CurlView$10;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;IFFF)V

    invoke-virtual {p0, v6}, Lcom/amazon/kindle/pagecurl/CurlView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method
