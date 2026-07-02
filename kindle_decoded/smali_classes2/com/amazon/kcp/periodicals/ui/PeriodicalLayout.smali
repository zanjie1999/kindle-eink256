.class public abstract Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
.super Lcom/amazon/kcp/reader/ui/ReaderLayout;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/ModeChangeListener;
.implements Lcom/amazon/android/docviewer/IPeriodicalNavigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;,
        Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;,
        Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;,
        Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;,
        Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY_IMAGESLOAD:I = 0x15e

.field private static final DEFAULT_DELAY_IMAGESLOAD_DURING_INIT:I = 0x3e8

.field private static final GRIDVIEW_ANIMATION_DURATION:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adjustedHeaderBarColorAfterInflate:Z

.field private bookmarkListClosedEvent:Lcom/amazon/foundation/IIntCallback;

.field private bookmarkListOpenedEvent:Lcom/amazon/foundation/ICallback;

.field protected closeButton:Landroid/view/View;

.field private currentPageInArticle:I

.field protected forceTapToTextTutorial:Z

.field protected gridViewToolbar:Landroid/widget/RelativeLayout;

.field private mActionBarVisibilityEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

.field protected mAnimationsProvider:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

.field protected mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

.field protected mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

.field private mCurlViewBitmapLoader:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

.field private mGridViewController:Lcom/amazon/nwstd/gridview/GridViewController;

.field private mIsFirstDraw:Z

.field private mIsFirstOnLayout:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

.field private final mOnInitialDrawListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

.field private mPageNumberCalcEventCallable:Lcom/amazon/foundation/internal/IObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mReplicaAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private mReplicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

.field private final mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

.field protected mTextViewCloseAnimation:Landroid/view/animation/Animation;

.field private mTextViewGestureHandler:Lcom/amazon/nwstd/gestures/TextViewGestureHandler;

.field private mThumbnailBeingUsedCallback:Lcom/amazon/foundation/ICallback;

.field m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

.field private m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

.field protected m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

.field protected m_tapToTextTutorial:Landroid/app/AlertDialog;

.field protected m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

.field protected m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

.field protected final overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;

.field periodicalNavigatorDelegator:Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;

.field private postInitTimer:I

.field protected replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

.field private totalPagesInArticle:I

.field private touchEventEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    const-class v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 178
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    .line 180
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->gridViewToolbar:Landroid/widget/RelativeLayout;

    .line 200
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mReplicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    const/4 p2, 0x1

    .line 203
    iput-boolean p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mIsFirstOnLayout:Z

    .line 204
    iput-boolean p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mIsFirstDraw:Z

    .line 206
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    .line 216
    iput-boolean p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->touchEventEnabled:Z

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->forceTapToTextTutorial:Z

    .line 220
    iput v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->postInitTimer:I

    .line 223
    new-instance v1, Lcom/amazon/nwstd/utils/RunnableHandler;

    invoke-direct {v1}, Lcom/amazon/nwstd/utils/RunnableHandler;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    .line 229
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->adjustedHeaderBarColorAfterInflate:Z

    .line 252
    new-instance v1, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mReplicaAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 268
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;

    .line 273
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mAnimationsProvider:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    .line 276
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    .line 283
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mTextViewGestureHandler:Lcom/amazon/nwstd/gestures/TextViewGestureHandler;

    .line 290
    iput p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->totalPagesInArticle:I

    .line 291
    iput p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->currentPageInArticle:I

    .line 301
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mOnInitialDrawListeners:Ljava/util/HashSet;

    .line 304
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mActionBarVisibilityEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 334
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->pageNumberCalcEventCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mPageNumberCalcEventCallable:Lcom/amazon/foundation/internal/IObjectCallback;

    .line 335
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Ljava/util/HashSet;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mOnInitialDrawListeners:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->currentPageInArticle:I

    return p0
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->totalPagesInArticle:I

    return p0
.end method

.method static synthetic access$1300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initTask_LoadTocExtras()V

    return-void
.end method

.method static synthetic access$1400(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initTask_triggerSidePanelCreation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initTask_enableTextViewVisibility()V

    return-void
.end method

.method static synthetic access$1600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->postInitTimer:I

    return p0
.end method

.method static synthetic access$1602(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;I)I
    .locals 0

    .line 157
    iput p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->postInitTimer:I

    return p1
.end method

.method static synthetic access$1700(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)I
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getLocationSeekerPositionEstimate()I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kindle/pagecurl/CurlView;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;II)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updatePageCurl(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Z)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showAndResumeCurlView(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->hideAndPauseCurlView()V

    return-void
.end method

.method static synthetic access$2400(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Z
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInPortraitOrientation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->hideImageView()V

    return-void
.end method

.method static synthetic access$2600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/nwstd/utils/RunnableHandler;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)F
    .locals 0

    .line 157
    iget p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mLastTouchX:F

    return p0
.end method

.method static synthetic access$2800(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)F
    .locals 0

    .line 157
    iget p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mLastTouchY:F

    return p0
.end method

.method static synthetic access$2900(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->refreshCloseButtonVisibility()V

    return-void
.end method

.method static synthetic access$3000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->hideTextView()V

    return-void
.end method

.method static synthetic access$3100(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCurlViewBitmapLoader:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)F
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getScreenHeight()F

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)F
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getScreenWidth()F

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)I
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getVisibleOverlays()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/android/docviewer/KindleTOCLocator;Lcom/amazon/android/docviewer/ITOCItem;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updatePageNumberInArticleValuesForLocationSeeker(Lcom/amazon/android/docviewer/KindleTOCLocator;Lcom/amazon/android/docviewer/ITOCItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    return-object p0
.end method

.method private applyDebugSettingsChanges()V
    .locals 3

    .line 2706
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2709
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getModifiedSettings()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;->Show_Content:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2710
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v1, :cond_0

    .line 2711
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->invalidateChildren()V

    .line 2713
    :cond_0
    sget-object v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;->Show_Content:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->consumeModifiedSettingFlag(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings$Settings;)V

    :cond_1
    return-void
.end method

.method private dismissTapToTextTutorial()V
    .locals 1

    .line 1431
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_tapToTextTutorial:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1432
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private findCurrentPageItem(Lcom/amazon/android/docviewer/mapper/PageIndex;)Lcom/amazon/nwstd/toc/IReplicaPageItem;
    .locals 3

    .line 449
    sget-object v0, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->CURRENT_PAGE:Lcom/amazon/android/docviewer/mapper/PageIndex;

    if-ne p1, v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getActivePageIndexes()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 454
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 456
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageAtPosition(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageAtPosition(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getLocationSeekerPositionEstimate()I
    .locals 6

    .line 3364
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getTotalPages()I

    move-result v0

    .line 3365
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getBookEndPosition()I

    move-result v1

    .line 3366
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getCurrentItem()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v0

    div-double/2addr v2, v4

    int-to-double v0, v1

    mul-double v2, v2, v0

    double-to-int v0, v2

    return v0
.end method

.method private getScreenHeight()F
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 749
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 751
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 752
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    return v0
.end method

.method private getScreenWidth()F
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 761
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 763
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 764
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    return v0
.end method

.method private guessRealScreenSize(Landroid/graphics/Point;)V
    .locals 3

    .line 2245
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 2248
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 2249
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 2252
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2253
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2254
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 2255
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 2259
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2260
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 2261
    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 2262
    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_1
    return-void
.end method

.method private hideAndPauseCurlView()V
    .locals 2

    .line 2651
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-eqz v0, :cond_0

    .line 2652
    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->onPause()V

    .line 2653
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideImageView()V
    .locals 2

    .line 2626
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2627
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 2630
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getChromeBarView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateHeaderActionBarTitleColor(Landroid/view/View;)V

    return-void
.end method

.method private hideTextView()V
    .locals 2

    .line 2602
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2603
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 2606
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getChromeBarView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateHeaderActionBarTitleColor(Landroid/view/View;)V

    return-void
.end method

.method private inflateCloseButtonIfNeeded()V
    .locals 2

    .line 1743
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1744
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_close_button_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1745
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    .line 1746
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateCloseButtonImageViewDrawable()V

    .line 1747
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$9;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$9;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1755
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateCloseButtonPosition()V

    return-void
.end method

.method private initTask_CurlView()V
    .locals 9

    .line 2428
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2429
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "The curl view has already been instantied !"

    invoke-static {v0, v3}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 2433
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-nez v0, :cond_2

    return-void

    .line 2437
    :cond_2
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->curl_view_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2438
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/pagecurl/CurlView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    .line 2440
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getGestureDetector()Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    move-result-object v0

    .line 2441
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewPageCurlEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2442
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0, v3}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->setCurlView(Lcom/amazon/kindle/pagecurl/CurlView;)V

    .line 2444
    :cond_3
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/pagecurl/CurlView;->enableOverlayMode(Z)V

    .line 2445
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/pagecurl/CurlView;->enableLeftPageRendering(Z)V

    .line 2446
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/pagecurl/CurlView;->enableRightPageRendering(Z)V

    .line 2447
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->setAllowLastPageCurl(Z)V

    .line 2448
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->setBackgroundViewListener(Lcom/amazon/kindle/pagecurl/BackgroundViewListener;)V

    .line 2449
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/pagecurl/CurlView;->enableBitmapStretching(Z)V

    .line 2450
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/pagecurl/CurlView;->setDisableMultiTouch(Z)V

    .line 2452
    new-instance v0, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    iget-object v4, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    iget-object v5, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    iget-object v6, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getUpsellController()Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v8, v1, Landroid/content/res/Configuration;->orientation:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;Lcom/amazon/nwstd/model/replica/BitmapProvider;Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;Lcom/amazon/nwstd/upsell/UpsellController;I)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCurlViewBitmapLoader:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    .line 2453
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->setBitmapLoader(Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;)V

    .line 2454
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$16;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$16;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->setSizeChangedObserver(Lcom/amazon/kindle/pagecurl/CurlView$SizeChangedObserver;)V

    .line 2482
    new-instance v0, Lcom/amazon/nwstd/ui/CurlViewTouchEventHandler;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/ui/CurlViewTouchEventHandler;-><init>(Lcom/amazon/kindle/pagecurl/CurlView;)V

    .line 2483
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->setTouchEventHandler(Lcom/amazon/kindle/pagecurl/TouchEventHandler;)V

    .line 2487
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCurlViewBitmapLoader:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->getBitmapCount()I

    .line 2493
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$17;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$17;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->init(Lcom/amazon/kindle/pagecurl/CurlView$CurlViewReadyObserver;)V

    .line 2505
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$18;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setActivatePageCurlCallback(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    return-void
.end method

.method private initTask_LoadTocExtras()V
    .locals 3

    .line 2351
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    if-eqz v0, :cond_0

    .line 2358
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    .line 2362
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadReplicaPages()V

    .line 2365
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadCrossReplicaLinks()V

    .line 2366
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->loadArticleBlocks()V

    .line 2369
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance v2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$14;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$14;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;)V

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/utils/RunnableHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private initTask_enableTextViewVisibility()V
    .locals 2

    .line 1946
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$12;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$12;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/utils/RunnableHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initTask_triggerSidePanelCreation()V
    .locals 2

    .line 2390
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$15;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$15;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/utils/RunnableHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initializeBitmapProviderCacheSize()V
    .locals 6

    .line 2209
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    if-nez v0, :cond_0

    return-void

    .line 2218
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 2219
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getTotalMemory()J

    move-result-wide v1

    const-wide/32 v3, 0x80000

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 2220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$integer;->bitmap_cache_size_memory_LE512:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 2221
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$integer;->bitmap_pool_size_memory_LE512:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    goto :goto_1

    .line 2222
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 2223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$integer;->bitmap_cache_size_memory_LE1024:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 2224
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$integer;->bitmap_pool_size_memory_LE1024:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 2226
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$integer;->bitmap_cache_size_memory_GT1024:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 2227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$integer;->bitmap_pool_size_memory_GT1024:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 2230
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v2, v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->setCacheMaxSize(I)V

    .line 2231
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->setPoolMaxSize(I)V

    return-void
.end method

.method private initializeUpsellController()V
    .locals 9

    .line 2180
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getUpsellController()Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2182
    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->upsell_banner_view_stub:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2184
    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/UpsellController;->initializeBanner(Landroid/view/ViewStub;)V

    .line 2186
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    if-eqz v1, :cond_0

    .line 2187
    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/UpsellController;->initializeBannerFrequencyList(I)V

    .line 2189
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/UpsellController;->onOrientationChanged(Z)V

    .line 2191
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2192
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v1

    .line 2193
    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-virtual {v0, v3}, Lcom/amazon/nwstd/upsell/UpsellController;->getFrequencyList(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;)[D

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2194
    array-length v4, v3

    if-eqz v4, :cond_3

    .line 2195
    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-wide v5, v3, v2

    .line 2196
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    int-to-double v7, v7

    mul-double v7, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v6, v5

    .line 2197
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/nwstd/toc/IArticleTOCItem;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazon/nwstd/upsell/UpsellController;->setChromeBnnerFrequencyListInTextMode(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private isCurlViewVisible()Z
    .locals 1

    .line 2590
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInPortraitOrientation()Z
    .locals 3

    .line 981
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOnLastPageOfArticle()Z
    .locals 4

    .line 3350
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3351
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3352
    iget v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->currentPageInArticle:I

    iget v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->totalPagesInArticle:I

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3354
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getSeekPosition()I

    move-result v0

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getMaxPossibleSeekPosition()I

    move-result v3

    add-int/2addr v3, v2

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private postInit()V
    .locals 2

    const/4 v0, 0x0

    .line 1916
    iput v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->postInitTimer:I

    .line 1917
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$11;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$11;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/utils/RunnableHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshCloseButtonVisibility()V
    .locals 4

    .line 1459
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    const/16 v2, 0x8

    if-ne v0, v1, :cond_2

    .line 1460
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1461
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1463
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 1464
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateCloseButtonIfNeeded()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1468
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1469
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1471
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1472
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private registerTextViewGestureHandlerIfNeeded()V
    .locals 3

    .line 1421
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mTextViewGestureHandler:Lcom/amazon/nwstd/gestures/TextViewGestureHandler;

    if-nez v0, :cond_0

    .line 1422
    new-instance v0, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getGestureHandlerFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getService()Lcom/amazon/kcp/reader/gestures/GestureService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;-><init>(Lcom/amazon/kcp/reader/gestures/GestureService;Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mTextViewGestureHandler:Lcom/amazon/nwstd/gestures/TextViewGestureHandler;

    .line 1425
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getGestureHandlerFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mTextViewGestureHandler:Lcom/amazon/nwstd/gestures/TextViewGestureHandler;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1426
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getGestureHandlerFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mTextViewGestureHandler:Lcom/amazon/nwstd/gestures/TextViewGestureHandler;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->addHandler(Lcom/amazon/kindle/krx/gesture/IGestureHandler;)Z

    :cond_1
    return-void
.end method

.method private replicaViewInitialize()V
    .locals 18

    move-object/from16 v0, p0

    .line 2084
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 2085
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2086
    invoke-direct {v0, v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->guessRealScreenSize(Landroid/graphics/Point;)V

    .line 2088
    new-instance v3, Lcom/amazon/nwstd/model/replica/BitmapProvider;

    new-instance v4, Lcom/amazon/android/docviewer/TOCReplicaList;

    invoke-direct {v4, v1}, Lcom/amazon/android/docviewer/TOCReplicaList;-><init>(Lcom/amazon/nwstd/toc/IPeriodicalTOC;)V

    invoke-direct {v3, v4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;-><init>(Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;)V

    iput-object v3, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 2090
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getUpsellController()Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object v15

    .line 2091
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2092
    new-instance v3, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;

    iget-object v4, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result v4

    invoke-virtual {v15}, Lcom/amazon/nwstd/upsell/UpsellController;->getFullPageFrequency()[D

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/amazon/android/docviewer/mapper/UpsellViewPagerPositionToPageIndexMapper;-><init>(I[D)V

    iput-object v3, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    goto :goto_0

    .line 2094
    :cond_0
    new-instance v3, Lcom/amazon/android/docviewer/mapper/SimpleViewPagerPositionToPageIndexMapper;

    iget-object v4, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/amazon/android/docviewer/mapper/SimpleViewPagerPositionToPageIndexMapper;-><init>(I)V

    iput-object v3, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    .line 2098
    :goto_0
    new-instance v6, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;

    iget-object v3, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    iget-object v4, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v5, v4, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->textContainerInteractionCallBack:Lcom/amazon/foundation/IIntCallback;

    iget-object v4, v4, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->crossReplicaLinkCallBack:Lcom/amazon/foundation/IIntCallback;

    invoke-direct {v6, v1, v3, v5, v4}, Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;-><init>(Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;Lcom/amazon/foundation/IIntCallback;Lcom/amazon/foundation/IIntCallback;)V

    .line 2100
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->getReaderScreenOrientation(Landroid/content/Context;)I

    .line 2101
    new-instance v1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    iget-object v5, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 2102
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getBookmarkManager()Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    move-result-object v7

    iget-object v8, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v9, v3, Landroid/content/res/Configuration;->orientation:I

    .line 2103
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewPageCurlEnabled()Z

    move-result v3

    const/16 v17, 0x1

    xor-int/lit8 v10, v3, 0x1

    const/16 v11, 0x3e8

    iget v12, v2, Landroid/graphics/Point;->x:I

    iget v13, v2, Landroid/graphics/Point;->y:I

    iget-object v14, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mMapper:Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;

    .line 2104
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getMetricsHelper()Lcom/amazon/nwstd/metrics/IMetricsHelper;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;Lcom/amazon/nwstd/model/replica/InteractiveAreaProvider;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;IZIIILcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;Lcom/amazon/nwstd/upsell/UpsellController;Lcom/amazon/nwstd/metrics/IMetricsHelper;)V

    .line 2108
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v2, v3, :cond_1

    .line 2109
    sget-object v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setInitialDisplayImageQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    .line 2112
    :cond_1
    new-instance v2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;

    invoke-direct {v2, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$NewReplicaPageReachedListener;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setNewPageReachedListener(Lcom/amazon/nwstd/replica/INewPageReachedListener;)V

    .line 2114
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2115
    iget-object v2, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v3, "The replica view has already been instantiated !"

    invoke-static {v2, v3}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 2119
    :cond_3
    sget v2, Lcom/amazon/kindle/newsstand/core/R$id;->replica_view_stub:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 2120
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    iput-object v2, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    .line 2123
    new-instance v10, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$13;

    invoke-direct {v10, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$13;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    .line 2148
    iget-object v7, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    iget-object v2, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 2149
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getNavigationHistoryManager()Lcom/amazon/android/docviewer/NavigationHistoryManager;

    move-result-object v11

    iget-object v2, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 2150
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getOrientationChangeEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v12

    move-object v9, v1

    .line 2148
    invoke-virtual/range {v7 .. v12}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->initialize(Landroid/content/Context;Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;Lcom/amazon/android/docviewer/IOverlayController;Lcom/amazon/android/docviewer/INavigationHistoryManager;Lcom/amazon/foundation/IIntEventProvider;)V

    .line 2154
    iget-object v2, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    if-nez v2, :cond_4

    .line 2155
    iget-object v2, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v2, v2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->orientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    iput-object v2, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    .line 2157
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getOrientationChangeEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v2, v3}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 2160
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setReplicaViewNavigator(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;)V

    .line 2162
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v2

    .line 2163
    iget-object v3, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v3, v0, v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->setUp(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/kindle/model/content/LocalBookState;)V

    .line 2167
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getNavigationHistoryManager()Lcom/amazon/android/docviewer/NavigationHistoryManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setNavigationHistoryManager(Lcom/amazon/android/docviewer/INavigationHistoryManager;)V

    .line 2170
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewPageCurlEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->shouldCenterWhenOnePage(Z)V

    .line 2173
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initializeBitmapProviderCacheSize()V

    return-void
.end method

.method private setVisiblePeriodicalOverlays(IZ)V
    .locals 8

    .line 1633
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    .line 1634
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;

    invoke-static {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;->access$1200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$OverlaysVisibility;)Lcom/amazon/foundation/internal/IntEventProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 1636
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getUpsellController()Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object v1

    .line 1637
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_c

    .line 1640
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1641
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 1646
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v5

    sget-object v6, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    const/16 v7, 0x80

    if-ne v5, v6, :cond_7

    if-eqz v0, :cond_7

    and-int/lit16 v5, p1, 0x80

    if-ne v5, v7, :cond_7

    .line 1647
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getFirstArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    .line 1648
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageForFragmentPosition(Ljava/lang/Integer;)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v2

    .line 1651
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/UpsellController;->getChromeBannerConfiguredArticleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    .line 1652
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/UpsellController;->getChromeBannerConfiguredArticleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1653
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isOnLastPageOfArticle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1654
    :cond_2
    invoke-direct {p0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showUpsellBanner(Lcom/amazon/nwstd/upsell/UpsellController;)V

    goto/16 :goto_2

    .line 1657
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/UpsellController;->getChromeBannerFrequency()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    .line 1658
    invoke-interface {v2}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->isCurrentPageConfuigerdForUpsellChrome(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1659
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isOnLastPageOfArticle()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1660
    :cond_5
    invoke-direct {p0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showUpsellBanner(Lcom/amazon/nwstd/upsell/UpsellController;)V

    goto :goto_2

    .line 1662
    :cond_6
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/UpsellController;->hideBanner()V

    goto :goto_2

    .line 1665
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v4

    sget-object v5, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v4, v5, :cond_b

    if-eqz v0, :cond_b

    and-int/lit16 v0, p1, 0x80

    if-ne v0, v7, :cond_b

    if-eqz v2, :cond_a

    .line 1667
    invoke-static {v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->isUpsellPage(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->isCurrentPageConfuigerdForUpsellChrome(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1668
    :cond_8
    invoke-static {v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->isUpsellPage(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_9

    .line 1669
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->isCurrentPageConfuigerdForUpsellChrome(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 1672
    :cond_9
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/UpsellController;->hideBanner()V

    goto :goto_2

    .line 1670
    :cond_a
    :goto_1
    invoke-direct {p0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showUpsellBanner(Lcom/amazon/nwstd/upsell/UpsellController;)V

    goto :goto_2

    .line 1675
    :cond_b
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/UpsellController;->hideBanner()V

    .line 1680
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    if-eqz v0, :cond_11

    const/16 v1, 0x40

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_10

    .line 1682
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->isUpsellPage(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1683
    :cond_e
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->setBookmarkableListVisible(Z)V

    goto :goto_3

    .line 1685
    :cond_f
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    invoke-interface {p1, v3}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->setBookmarkableListVisible(Z)V

    .line 1687
    :goto_3
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    invoke-interface {p1, v3}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->show(Z)Z

    goto :goto_4

    .line 1690
    :cond_10
    invoke-interface {v0, p2}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->hide(Z)Z

    :cond_11
    :goto_4
    return-void
.end method

.method private showAndResumeCurlView(Z)V
    .locals 2

    .line 2658
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2659
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 2660
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->onResume()V

    if-eqz p1, :cond_0

    .line 2661
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1}, Lcom/amazon/kindle/pagecurl/CurlView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2662
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updatePageCurl(II)V

    :cond_0
    return-void
.end method

.method private showTextView()V
    .locals 2

    .line 2611
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isImageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->updateImageViewSessionDuration()V

    .line 2616
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->applyDLCIfApplicable()V

    .line 2618
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2619
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2622
    :cond_1
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getChromeBarView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateHeaderActionBarTitleColor(Landroid/view/View;)V

    return-void
.end method

.method private showUpsellBanner(Lcom/amazon/nwstd/upsell/UpsellController;)V
    .locals 1

    .line 3266
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3267
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/UpsellController;->showBanner()V

    :cond_0
    return-void
.end method

.method private updatePageCurl(II)V
    .locals 5

    .line 2411
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 2412
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2416
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2417
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/amazon/nwstd/replica/IReplicaPage;->computeMargins(II)Landroid/graphics/RectF;

    move-result-object p1

    .line 2418
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget v3, p1, Landroid/graphics/RectF;->top:F

    int-to-float v0, v0

    div-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, v0

    invoke-virtual {p2, v2, v3, v4, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->setMargins(FFFF)V

    .line 2420
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getCurrentItem()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getDisplayedPositionFromViewPagerPosition(I)I

    move-result p1

    .line 2421
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->setCurrentIndex(I)V

    return-void
.end method

.method private updatePageNumberInArticleValuesForLocationSeeker(Lcom/amazon/android/docviewer/KindleTOCLocator;Lcom/amazon/android/docviewer/ITOCItem;)V
    .locals 3

    .line 2783
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v0, :cond_1

    .line 2784
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPageNumberForPosition(Lcom/amazon/android/docviewer/ITOCItem;I)I

    move-result v0

    .line 2785
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 2787
    invoke-virtual {p1, p2, v1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPageNumberMap(Lcom/amazon/android/docviewer/ITOCItem;Z)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2789
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2790
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->totalPagesInArticle:I

    .line 2791
    iput v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->currentPageInArticle:I

    goto :goto_0

    .line 2793
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setMaxPossibleSeekPosition(I)V

    .line 2794
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private waitForViewpagerInit()V
    .locals 2

    .line 2268
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2270
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->waitForInit()V

    .line 2274
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Default:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setInitialDisplayImageQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    .line 2277
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewPageCurlEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x15e

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setDelayToLoadImages(I)V

    return-void
.end method


# virtual methods
.method public addOnInitialDrawListener(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3289
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mOnInitialDrawListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public closeGridView()V
    .locals 2

    .line 2005
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2006
    invoke-interface {v0, v1}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 2008
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateGridViewToolbarVisibility(Z)V

    :cond_0
    return-void
.end method

.method public closeTextView(Z)V
    .locals 3

    .line 1443
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageForFragmentPosition(Ljava/lang/Integer;)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1446
    new-instance v2, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    invoke-virtual {p0, v2, v1, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V

    goto :goto_0

    .line 1449
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openImageView(ZZ)V

    .line 1451
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->refreshCloseButtonVisibility()V

    return-void
.end method

.method public curlViewMoveToPage(I)V
    .locals 1

    .line 3221
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3222
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->setCurrentIndex(I)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1272
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mOnInitialDrawListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1274
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    invoke-virtual {v0}, Lcom/amazon/nwstd/utils/RunnableHandler;->removeCallbacks()V

    .line 1276
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->destroy()V

    .line 1278
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCurlViewBitmapLoader:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    if-eqz v0, :cond_1

    .line 1281
    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;->close()V

    .line 1282
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCurlViewBitmapLoader:Lcom/amazon/nwstd/model/replica/CurlViewBitmapLoader;

    .line 1285
    :cond_1
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    .line 1286
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    if-eqz v0, :cond_2

    .line 1287
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->getThumbnailBeingUsedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mThumbnailBeingUsedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v2}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 1288
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mThumbnailBeingUsedCallback:Lcom/amazon/foundation/ICallback;

    .line 1289
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    .line 1292
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    if-eqz v0, :cond_3

    .line 1293
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    .line 1296
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1297
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->close()V

    .line 1298
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 1301
    :cond_4
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    .line 1302
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_5

    .line 1303
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setActivatePageCurlCallback(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 1304
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPageNumberCalcEventProvider()Lcom/amazon/foundation/internal/ObjectEventProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mPageNumberCalcEventCallable:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-virtual {v0, v2}, Lcom/amazon/foundation/internal/ObjectEventProvider;->unregister(Lcom/amazon/foundation/internal/IObjectCallback;)Z

    .line 1306
    :cond_5
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mPageNumberCalcEventCallable:Lcom/amazon/foundation/internal/IObjectCallback;

    .line 1307
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    if-eqz v0, :cond_8

    .line 1308
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->bookmarkListOpenedEvent:Lcom/amazon/foundation/ICallback;

    if-eqz v2, :cond_6

    .line 1309
    invoke-interface {v0}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->getBookmarkListOpenedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->bookmarkListOpenedEvent:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v2}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 1310
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->bookmarkListOpenedEvent:Lcom/amazon/foundation/ICallback;

    .line 1312
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->bookmarkListClosedEvent:Lcom/amazon/foundation/IIntCallback;

    if-eqz v0, :cond_7

    .line 1313
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    invoke-interface {v0}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->getBookmarkListClosedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->bookmarkListClosedEvent:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v2}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 1314
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->bookmarkListClosedEvent:Lcom/amazon/foundation/IIntCallback;

    .line 1316
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    invoke-interface {v0}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->destroy()V

    .line 1317
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    .line 1320
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    if-eqz v0, :cond_9

    .line 1321
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getOrientationChangeEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v2}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 1322
    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    .line 1324
    :cond_9
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->dismissTapToTextTutorial()V

    .line 1326
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->destroy()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 3328
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    .line 3329
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3330
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 3334
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-eq v0, v2, :cond_2

    .line 3335
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_2
    if-nez v1, :cond_3

    .line 3338
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mLastTouchX:F

    .line 2692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mLastTouchY:F

    .line 2694
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->touchEventEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    .line 2695
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getGestureDetector()Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isPointerActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mTextViewGestureHandler:Lcom/amazon/nwstd/gestures/TextViewGestureHandler;

    .line 2696
    invoke-virtual {v0}, Lcom/amazon/nwstd/gestures/TextViewGestureHandler;->isPointerActive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 2697
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doesArticleFragmentNotExistAtCurrentPage()Z
    .locals 2

    .line 443
    sget-object v0, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->CURRENT_PAGE:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->findCurrentPageItem(Lcom/amazon/android/docviewer/mapper/PageIndex;)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 444
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 943
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mIsFirstDraw:Z

    if-eqz v0, :cond_1

    .line 946
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->postInit()V

    .line 948
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->waitForViewpagerInit()V

    :cond_0
    const/4 v0, 0x0

    .line 952
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mIsFirstDraw:Z

    .line 955
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected enableTouchEvent(Z)V
    .locals 0

    .line 2672
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->touchEventEnabled:Z

    return-void
.end method

.method public flashOverlays()V
    .locals 2

    .line 1620
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isThumbnailGridViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isBookmarkListOpened()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1622
    invoke-virtual {p0, v0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const-wide/16 v0, 0xdac

    .line 1623
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysAfterDelay(J)V

    :cond_0
    return-void
.end method

.method public getActivePageIndexes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3228
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object v0

    .line 3229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 3231
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentReplicaPageIndexes()Ljava/util/Collection;

    move-result-object v0

    .line 3232
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 3233
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getActiveReplicaPageIndexes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/android/docviewer/mapper/PageIndex;",
            ">;"
        }
    .end annotation

    .line 3243
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3245
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentReplicaPageIndexes()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 3247
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBitmapProvider()Lcom/amazon/nwstd/model/replica/BitmapProvider;
    .locals 1

    .line 2347
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    return-object v0
.end method

.method protected getChromeBarView(Z)Landroid/view/View;
    .locals 1

    .line 3305
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getChromeBarView(Z)Landroid/view/View;

    move-result-object p1

    .line 3306
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->adjustedHeaderBarColorAfterInflate:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3308
    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->adjustedHeaderBarColorAfterInflate:Z

    .line 3309
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateHeaderActionBarTitleColor(Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public getChromeColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentArticleID()Ljava/lang/String;
    .locals 4

    .line 2760
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewActive()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 2761
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageForFragmentPosition(Ljava/lang/Integer;)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2764
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getPageIdentifier()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 2767
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getFirstArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    .line 2768
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 2769
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2770
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2774
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v0, :cond_2

    .line 2775
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method protected getDisplayableSeekPosition()I
    .locals 3

    .line 1128
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getDisplayableSeekPosition()I

    move-result v0

    return v0

    .line 1133
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    .line 1135
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getLastArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    .line 1136
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v2

    .line 1134
    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPageNumberForPosition(Lcom/amazon/android/docviewer/ITOCItem;I)I

    move-result v0

    return v0
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    return-object v0
.end method

.method public getGridViewController()Lcom/amazon/nwstd/gridview/GridViewController;
    .locals 1

    .line 3251
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mGridViewController:Lcom/amazon/nwstd/gridview/GridViewController;

    return-object v0
.end method

.method protected getLocationBarOverlayAnimator(IZ)Landroid/animation/Animator;
    .locals 5

    .line 1149
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_9

    .line 1150
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    const/4 v2, 0x4

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x20

    .line 1151
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldChangeOverlayVisibility(II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1153
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz p1, :cond_0

    .line 1154
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1157
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_periodical_layout_thumbnail_scrubber_enabled:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1159
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 1160
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateReplicaNavBarFragment()V

    .line 1162
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz p1, :cond_1

    .line 1163
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->updateSelectedPage(I)V

    .line 1167
    :cond_1
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 1168
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_3

    sget v0, Lcom/amazon/kindle/newsstand/core/R$integer;->location_seeker_show_animation_duration:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/amazon/kindle/newsstand/core/R$integer;->hide_animation_duration:I

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1169
    :cond_4
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    xor-int/lit8 v0, p1, 0x1

    int-to-long v3, v1

    invoke-static {p2, v0, v3, v4}, Lcom/amazon/kcp/animation/AnimatorFactory;->createUpSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p2

    .line 1170
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2, p1}, Lcom/amazon/kcp/animation/AnimatorUtils;->createVisibilityChangeListener(Landroid/view/View;ZZ)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    goto :goto_2

    .line 1174
    :cond_6
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    .line 1175
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateLocationSeeker()V

    .line 1178
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    if-eqz v0, :cond_8

    .line 1179
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getLocationBarOverlayAnimator(IZ)Landroid/animation/Animator;

    move-result-object p2

    goto :goto_2

    .line 1185
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getLocationBarOverlayAnimator(IZ)Landroid/animation/Animator;

    move-result-object p2

    :goto_2
    return-object p2
.end method

.method protected getLocationSeekbarListener()Lcom/amazon/kcp/reader/ui/ReaderLayout$ReaderLocationSeekbarListener;
    .locals 2

    .line 1438
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;)V

    return-object v0
.end method

.method public getNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;
    .locals 1

    .line 2718
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;

    move-result-object v0

    return-object v0
.end method

.method protected getReaderLocationContainerResource()I
    .locals 3

    .line 1774
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderLocationContainerResource()I

    move-result v0

    .line 1775
    sget-object v1, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->locationSeekerProviders:Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1778
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1779
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1780
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1781
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1782
    sget v2, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_location_container:I

    if-ne v0, v2, :cond_0

    .line 1783
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected getReaderViewForInit()Landroid/view/View;
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    if-nez v0, :cond_1

    .line 354
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->text_view_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 355
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    .line 357
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot inflate the text view !"

    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    return-object v0
.end method

.method public getReadingPercentage()D
    .locals 5

    .line 2733
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewActive()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 2734
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageForFragmentPosition(Ljava/lang/Integer;)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2735
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2736
    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v2}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapCount()I

    move-result v2

    :goto_0
    int-to-double v2, v2

    div-double/2addr v0, v2

    move-wide v1, v0

    goto :goto_1

    .line 2739
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getFirstArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    .line 2740
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 2741
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2742
    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-double v0, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 2746
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2747
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    .line 2748
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getReadingPercentage(Lcom/amazon/android/docviewer/mapper/PageIndex;)D

    move-result-wide v1

    :cond_2
    :goto_1
    return-wide v1
.end method

.method public getReplicaMagnifierController()Lcom/amazon/nwstd/ui/ReplicaMagnifierController;
    .locals 1

    .line 3216
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mReplicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    return-object v0
.end method

.method public getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;
    .locals 1

    .line 2723
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v0, :cond_0

    .line 2724
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getReplicaViewNavigator()Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    return-object v0
.end method

.method protected getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 2812
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    if-eqz v0, :cond_0

    .line 2814
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-eqz v0, :cond_0

    .line 2816
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->book_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;
    .locals 1

    .line 1529
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 1531
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    return-object v0
.end method

.method public handleOverlaysOnMenuOptionSelected()V
    .locals 2

    .line 2570
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getVisibleOverlays()I

    move-result v0

    and-int/lit16 v0, v0, -0x81

    const/4 v1, 0x1

    .line 2573
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    return-void
.end method

.method public handleOverlaysOnSearchRequested()V
    .locals 1

    .line 2557
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->handleOverlaysOnSearchRequested()V

    const/4 v0, 0x1

    .line 2560
    invoke-virtual {p0, v0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    .line 2564
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    return-void
.end method

.method public hideBookmarkList()V
    .locals 2

    .line 2024
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getVisibleOverlays()I

    move-result v0

    and-int/lit8 v0, v0, -0x41

    or-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    .line 2029
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    return-void
.end method

.method public hideLocationSeeker()V
    .locals 2

    .line 3315
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3316
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideViewOptions()V
    .locals 1

    .line 2016
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->hideAllViewOptionOverlays()Z

    return-void
.end method

.method protected inflateBookmarkList()Z
    .locals 4

    .line 2302
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2313
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_popup_bookmark_list_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2315
    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_bookmark_list_stub:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 2317
    sget v2, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_popup_bookmark:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 2318
    sget v2, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_popup_bookmark:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto :goto_0

    .line 2320
    :cond_1
    sget v2, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_bookmark_frag:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 2321
    sget v2, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_bookmark_frag:I

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 2323
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2326
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_popup_bookmark:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    goto :goto_1

    .line 2328
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_bookmark_frag:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    .line 2331
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getBookmarkManager()Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    move-result-object v0

    .line 2332
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v1

    .line 2333
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 2334
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ReaderActivity;->getOrientationChangeEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v3

    invoke-interface {v2, v0, p0, v1, v3}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->initialize(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;Lcom/amazon/nwstd/docviewer/INewsstandNavigator;Lcom/amazon/nwstd/docviewer/IContentInformationProvider;Lcom/amazon/foundation/IIntEventProvider;)V

    .line 2336
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->bookmarkListOpenCallback:Lcom/amazon/foundation/ICallback;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->bookmarkListOpenedEvent:Lcom/amazon/foundation/ICallback;

    .line 2337
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    invoke-interface {v0}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->getBookmarkListOpenedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->bookmarkListOpenedEvent:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 2339
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->bookmarkListCloseCallback:Lcom/amazon/foundation/IIntCallback;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->bookmarkListClosedEvent:Lcom/amazon/foundation/IIntCallback;

    .line 2340
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    invoke-interface {v0}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->getBookmarkListClosedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->bookmarkListClosedEvent:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public inflateGridViewIfNeeded()V
    .locals 9

    .line 771
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    if-nez v0, :cond_0

    .line 772
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->thumbnail_grid_view_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 773
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    .line 776
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->initSystemWindowsInsets(Landroid/graphics/Rect;)V

    .line 778
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getScreenHeight()F

    move-result v1

    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getScreenWidth()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->computeThumbnailGridViewImageDimension(FF)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v7

    .line 780
    new-instance v0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    iget-object v6, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    .line 781
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getBookmarkManager()Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;Lcom/amazon/nwstd/model/replica/BitmapProvider;Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;)V

    .line 782
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->activateAsyncLoad(Lcom/amazon/nwstd/model/replica/BitmapProvider;)V

    .line 783
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->setOrientation(I)V

    .line 784
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    new-instance v2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$3;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$3;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-interface {v1, v2}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 796
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    invoke-interface {v1, v0}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->setAdapter(Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;)V

    .line 797
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    invoke-interface {v0}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->updateLayout()V

    :cond_0
    return-void
.end method

.method protected inflateGridViewToolbar()V
    .locals 5

    .line 1888
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->gridViewToolbar:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 1889
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_gridview_toolbar_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1890
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->gridViewToolbar:Landroid/widget/RelativeLayout;

    .line 1891
    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->exit_bev:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1892
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$10;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$10;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1899
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    .line 1900
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v2

    .line 1901
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    .line 1902
    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1903
    :goto_0
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1904
    sget v1, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_pageflip_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 1906
    :cond_1
    sget v1, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_pageflip:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected inflateLocationSeeker()V
    .locals 7

    .line 1811
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isImageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1812
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 1816
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->periodicalNavigatorDelegator:Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;

    if-nez v0, :cond_3

    .line 1817
    new-instance v0, Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->periodicalNavigatorDelegator:Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;

    .line 1820
    :cond_3
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->inflateLocationSeeker()V

    .line 1822
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v0, :cond_c

    .line 1823
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getVisibleOverlays()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 1824
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1827
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isImageViewVisible()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1830
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->seekbar_with_left_and_right_decorations:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1832
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1836
    :cond_5
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->krx_location_control:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1838
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1842
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getLocationSeekerPositionEstimate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekPosition(I)V

    goto/16 :goto_1

    .line 1845
    :cond_7
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->seekbar_with_left_and_right_decorations:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1847
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1851
    :cond_8
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->location_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v3, 0x0

    .line 1853
    :goto_0
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 1854
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1855
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    sget v6, Lcom/amazon/kindle/newsstand/core/R$id;->above_decorator:I

    if-eq v5, v6, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    sget v6, Lcom/amazon/kindle/newsstand/core/R$id;->seeker_bar_animatable:I

    if-eq v5, v6, :cond_9

    .line 1856
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1861
    :cond_a
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    .line 1862
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getLastArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updatePageNumberInArticleValuesForLocationSeeker(Lcom/amazon/android/docviewer/KindleTOCLocator;Lcom/amazon/android/docviewer/ITOCItem;)V

    .line 1864
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    instance-of v1, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    if-eqz v1, :cond_c

    .line 1865
    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;

    .line 1867
    new-instance v1, Lcom/amazon/nwstd/ui/PeriodicalOverlaysDelegator;

    invoke-direct {v1, p0}, Lcom/amazon/nwstd/ui/PeriodicalOverlaysDelegator;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->setOverlaysDelegator(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;)V

    .line 1868
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->periodicalNavigatorDelegator:Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->setNavigatorDelegator(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;)V

    .line 1870
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1871
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v1

    sget-object v3, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v1, v3, :cond_b

    const/4 v2, 0x1

    :cond_b
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1872
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getSecondaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setTextColor(I)V

    .line 1878
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateTTSBarColor()V

    return-void
.end method

.method protected inflateLocationSeekerDecoration()V
    .locals 2

    .line 1883
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->stub_location_seeker_decoration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1884
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    return-void
.end method

.method inflateReplicaNavBarFragment()V
    .locals 3

    .line 2281
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_periodical_layout_thumbnail_scrubber_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2285
    :cond_0
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->replica_nav_bar_frag_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2286
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2288
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_replica_frag:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    if-eqz v0, :cond_1

    .line 2292
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v1, v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->thumbnailAfterUseCallback:Lcom/amazon/foundation/ICallback;

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mThumbnailBeingUsedCallback:Lcom/amazon/foundation/ICallback;

    .line 2293
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->getThumbnailBeingUsedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mThumbnailBeingUsedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 2294
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v0, v1, p0, v2}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->init(Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;Lcom/amazon/android/docviewer/IPeriodicalNavigator;Lcom/amazon/nwstd/model/replica/BitmapProvider;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 1

    .line 341
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 342
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 345
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/newsstand/core/R$anim;->close_button_anim:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mTextViewCloseAnimation:Landroid/view/animation/Animation;

    .line 347
    new-instance p1, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    invoke-direct {p1, p0}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mReplicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    return-void
.end method

.method protected initializeAccessibility()V
    .locals 2

    .line 968
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getViewAccessibilityInitializer()Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer$ViewType;->READER_LAYOUT:Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer$ViewType;

    invoke-interface {v0, p0, v1}, Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;->initializeForAccessibility(Landroid/view/View;Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer$ViewType;)V

    .line 969
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initializeAccessibility()V

    return-void
.end method

.method public isBookmarkListOpened()Z
    .locals 1

    .line 1981
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mBookmarkController:Lcom/amazon/nwstd/bookmark/IBookmarkListController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/nwstd/bookmark/IBookmarkListController;->isBookmarkListOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isImageViewVisible()Z
    .locals 1

    .line 2586
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInGridView()Z
    .locals 2

    .line 1998
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1999
    invoke-interface {v0}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isInLandscapeOrientation()Z
    .locals 2

    .line 995
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNeutronPhase1Enabled()Z
    .locals 2

    .line 3345
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3346
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isPageNumberOnCurrentReplicaView(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->SHOW_IMAGEVIEW_WITHOUT_NAVIGATING:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInLandscapeOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getViewPagerPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;)I

    move-result p1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    .line 735
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    const/4 v1, 0x1

    goto :goto_0

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInPortraitOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method protected isPageViewsTransitionAnimationStillRunning()Z
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isImageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isTextViewActive()Z
    .locals 1

    .line 2578
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result v0

    return v0
.end method

.method public isTextViewVisible()Z
    .locals 1

    .line 2582
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isThumbnailGridViewVisible()Z
    .locals 1

    .line 2594
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchEventEnabled()Z
    .locals 1

    .line 2679
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->touchEventEnabled:Z

    return v0
.end method

.method public isViewOptionsOpened()Z
    .locals 1

    .line 1989
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    return v0
.end method

.method protected layoutLocationSeeker()V
    .locals 6

    .line 1094
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v0, :cond_1

    .line 1098
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 1099
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1102
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1103
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1106
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->periodical_min_location_container_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v1, v2}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    .line 1109
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getUpsellController()Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object v1

    .line 1110
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1111
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/upsell/UpsellController;->setBannerBottomMargin(I)V

    .line 1112
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/UpsellController;->getUpsellBannerView()Lcom/amazon/nwstd/upsell/UpsellBannerView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1113
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1114
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->getInflatedLayout()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1115
    invoke-virtual {v1}, Lcom/amazon/nwstd/upsell/UpsellBannerView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1116
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 1117
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 1119
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_1
    return-void
.end method

.method public navigateToBookmark(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V
    .locals 2

    .line 3258
    new-instance v0, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/bookmarks/IBookmark;->getIndex()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V

    return-void
.end method

.method public onActivityCreated()V
    .locals 2

    .line 2046
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    if-eqz v0, :cond_2

    .line 2048
    new-instance v0, Lcom/amazon/nwstd/gridview/GridViewController;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/gridview/GridViewController;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mGridViewController:Lcom/amazon/nwstd/gridview/GridViewController;

    .line 2050
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPageNumberCalcEventProvider()Lcom/amazon/foundation/internal/ObjectEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mPageNumberCalcEventCallable:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/ObjectEventProvider;->register(Lcom/amazon/foundation/internal/IObjectCallback;)Z

    .line 2055
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->magnified_content_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2058
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2060
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaViewInitialize()V

    .line 2063
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_0

    .line 2065
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mReplicaAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 2066
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showImageView()V

    goto :goto_0

    .line 2068
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showTextView()V

    goto :goto_0

    .line 2072
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showTextView()V

    .line 2076
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->refreshCloseButtonVisibility()V

    .line 2079
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initializeUpsellController()V

    return-void
.end method

.method public onActivityPaused()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1346
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1347
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->pause()V

    .line 1349
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->onPause()V

    .line 1352
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getBookmarkManager()Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1353
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getBookmarkManager()Lcom/amazon/android/docviewer/bookmarks/ReplicaBookmarkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->saveBookmarks()V

    .line 1356
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->dismissTapToTextTutorial()V

    .line 1361
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isImageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1362
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->updateImageViewSessionDuration()V

    goto :goto_0

    .line 1363
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1364
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->updateTextViewSessionDuration()V

    .line 1368
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mActionBarVisibilityEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->removeLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    .line 1370
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onActivityPaused()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1722
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1724
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateCloseButtonPosition()V

    .line 1725
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mReplicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    if-eqz p1, :cond_0

    .line 1726
    invoke-virtual {p1}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->removeMagnification()V

    :cond_0
    return-void
.end method

.method public onDocViewerInitialDraw()V
    .locals 0

    .line 961
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onDocViewerInitialDraw()V

    .line 962
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initializeAccessibility()V

    return-void
.end method

.method public onDocViewerModeChanged(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V
    .locals 4

    .line 1193
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->onModeChanged()V

    .line 1194
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p1

    .line 1195
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v0, :cond_2

    .line 1196
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1203
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1204
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onDestroy()V

    .line 1205
    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    .line 1206
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateLocationSeeker()V

    .line 1208
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1213
    :cond_2
    :goto_1
    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne p1, v0, :cond_3

    .line 1217
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->refreshCloseButtonVisibility()V

    .line 1219
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaBarFrag:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    if-eqz p1, :cond_3

    .line 1220
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->showSelectedPage()V

    .line 1226
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 1231
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionView()Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1233
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    .line 1243
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$6;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/nwstd/utils/RunnableHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 3274
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3276
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getUpsellController()Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object v0

    .line 3277
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3278
    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/upsell/UpsellController;->populateUpsellBannerAccessibilityNodeInfoIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1017
    invoke-super/range {p0 .. p5}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onLayout(ZIIII)V

    .line 1021
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne p1, v0, :cond_1

    .line 1022
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->layoutLocationSeeker()V

    .line 1025
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 1027
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 1028
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    .line 1029
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1030
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_2

    .line 1032
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-lez v1, :cond_2

    .line 1033
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1034
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1035
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1036
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1037
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1044
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getUpsellController()Lcom/amazon/nwstd/upsell/UpsellController;

    move-result-object p1

    .line 1045
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->isUpsellEnabled(Lcom/amazon/nwstd/upsell/UpsellController;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/upsell/UpsellController;->setBannerBottomMargin(I)V

    .line 1051
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initializeAccessibleSelectionLayout()V

    .line 1053
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1055
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mReplicaMagnifierController:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    if-eqz v0, :cond_3

    .line 1056
    iget-object v5, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->onLayout(IIIILcom/amazon/android/docviewer/viewpager/ReplicaViewPager;)V

    .line 1059
    :cond_3
    iget-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mIsFirstOnLayout:Z

    if-eqz p1, :cond_8

    .line 1060
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p1

    sget-object p2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    const/4 p3, 0x0

    if-ne p1, p2, :cond_7

    .line 1062
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p4, 0x1

    goto :goto_1

    :cond_4
    const/4 p4, 0x0

    .line 1063
    :goto_1
    invoke-static {p4}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-eqz p1, :cond_5

    .line 1064
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    .line 1065
    :goto_3
    invoke-static {p2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-eqz p1, :cond_7

    .line 1067
    new-instance p2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$5;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$5;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/nwstd/replica/IReplicaPage;)V

    .line 1082
    invoke-interface {p1, p2}, Lcom/amazon/nwstd/replica/IReplicaPage;->addPostDrawListener(Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;)V

    .line 1086
    :cond_7
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->initTask_CurlView()V

    .line 1088
    iput-boolean p3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mIsFirstOnLayout:Z

    :cond_8
    return-void
.end method

.method public onPageFlowChanged()V
    .locals 1

    .line 1267
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->clearPageCountCache()V

    return-void
.end method

.method public openGridView(Z)V
    .locals 2

    .line 839
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateGridViewIfNeeded()V

    .line 840
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateGridViewToolbar()V

    goto :goto_0

    .line 845
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateGridViewLayout()V

    :goto_0
    const/4 v0, 0x1

    .line 847
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateGridViewToolbarVisibility(Z)V

    .line 851
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object v0

    .line 852
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 854
    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->updateInvisibleItemQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->setCurrentPage(I)V

    .line 859
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateOverlaysOnOpenGridView(Z)V

    .line 862
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateActionBarItems()V

    .line 865
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$4;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/utils/RunnableHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openImageView(ZZ)V
    .locals 1

    .line 610
    sget-object v0, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->SHOW_IMAGEVIEW_WITHOUT_NAVIGATING:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V

    return-void
.end method

.method public openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V
    .locals 5

    .line 619
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->closeSoftKeyboard(Landroid/view/View;)V

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isPageViewsTransitionAnimationStillRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 635
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 637
    invoke-virtual {p0, v1, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextView(ZZ)V

    return-void

    :cond_2
    if-eqz p2, :cond_4

    .line 646
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p2

    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-eq p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isPageNumberOnCurrentReplicaView(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 649
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->trackCurrentPosition()V

    .line 652
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p2

    sget-object v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-virtual {p2, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setViewMode(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V

    .line 656
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mReplicaAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 661
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz p2, :cond_5

    const/4 v0, 0x4

    .line 662
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 665
    :cond_5
    invoke-virtual {p0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 667
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isImageViewVisible()Z

    move-result p2

    if-nez p2, :cond_d

    .line 671
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 673
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mTextViewCloseAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 674
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isThumbnailGridViewVisible()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 676
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mAnimationsProvider:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    invoke-virtual {p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->createCloseGridViewAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    goto :goto_0

    :cond_7
    move-object p2, v0

    :goto_0
    if-eqz p3, :cond_8

    if-eqz p2, :cond_8

    .line 683
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    long-to-int v4, v3

    add-int/lit8 v4, v4, 0x32

    invoke-virtual {v2, v4}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setDelayToLoadImages(I)V

    .line 686
    :cond_8
    sget-object v2, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->SHOW_IMAGEVIEW_WITHOUT_NAVIGATING:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p1, v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 687
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v2, p1, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->moveToPage(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    .line 690
    :cond_9
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showImageView()V

    .line 691
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->enableTouchEvent(Z)V

    if-eqz p3, :cond_c

    .line 695
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 697
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    iget-object p3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object p3, p3, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->closeTextViewAnimationEndCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {p1, p2, v0, p3}, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;->startAnimation(Landroid/view/animation/Animation;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;)V

    goto :goto_1

    .line 698
    :cond_a
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isThumbnailGridViewVisible()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 702
    iget-object p3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    .line 703
    iput-boolean p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->forceTapToTextTutorial:Z

    .line 706
    :cond_b
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 710
    :cond_c
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mCallbackCentral:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->closeTextViewAnimationEndCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 711
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeGridView()V

    goto :goto_1

    .line 714
    :cond_d
    sget-object p2, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->SHOW_IMAGEVIEW_WITHOUT_NAVIGATING:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 715
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p2, p1, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->moveToPage(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    .line 716
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getViewPagerPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;)I

    move-result p1

    .line 717
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getDisplayedPositionFromViewPagerPosition(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->curlViewMoveToPage(I)V

    .line 720
    :cond_e
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateHeaderActionBarItems()V

    return-void
.end method

.method protected openTextView(Z)V
    .locals 2

    .line 568
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 572
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object v0

    .line 573
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 575
    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->updateInvisibleItemQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewPageCurlEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isCurlViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->hideAndPauseCurlView()V

    :cond_1
    if-eqz p1, :cond_2

    .line 585
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getModeNavigation()Lcom/amazon/android/docviewer/mobi/MobiDocFragment;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocFragment;->cancelPendingPrerendering()V

    .line 587
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->resume()V

    .line 588
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showTextView()V

    .line 591
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->TAP_TO_TEXT_INIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {p1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 593
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_textView:Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mAnimationsProvider:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$AnimationsProvider;->createOpenTextViewAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 595
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->hideImageView()V

    .line 596
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->resume()V

    .line 597
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->showTextView()V

    .line 600
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->refreshCloseButtonVisibility()V

    .line 601
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateCloseButtonPosition()V

    .line 603
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->setupCustomButtons()V

    :cond_3
    :goto_0
    return-void
.end method

.method public openTextView(ZZ)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 404
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextViewAt(IZZLcom/amazon/android/docviewer/mobi/PeriodicalsBookSearchResult;)V

    return-void
.end method

.method public openTextViewAt(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextViewAt(IZZLcom/amazon/android/docviewer/mobi/PeriodicalsBookSearchResult;)V

    return-void
.end method

.method public openTextViewAt(IZZLcom/amazon/android/docviewer/mobi/PeriodicalsBookSearchResult;)V
    .locals 3

    .line 481
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isPageViewsTransitionAnimationStillRunning()Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeGridView()V

    :cond_1
    if-eqz p2, :cond_2

    .line 493
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->trackCurrentPosition()V

    .line 496
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object p2

    sget-object p4, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    const/4 v0, 0x0

    if-eq p2, p4, :cond_3

    .line 498
    invoke-virtual {p0, v0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 501
    :cond_3
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p2

    .line 502
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p4

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-virtual {p4, v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->setViewMode(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V

    .line 506
    iget-object p4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->accessibilityDelegate:Lcom/amazon/kcp/reader/accessibility/ReaderLayoutAccessibilityDelegate;

    invoke-static {p0, p4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    if-eqz p3, :cond_4

    .line 510
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->enableTouchEvent(Z)V

    :cond_4
    const/4 p4, -0x1

    if-eq p1, p4, :cond_8

    .line 516
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p4

    invoke-virtual {p4}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p4

    .line 517
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p4, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const-string v2, "KindleDocView should not be null !"

    .line 518
    invoke-static {v1, v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_6
    if-eqz p4, :cond_7

    .line 522
    invoke-virtual {p4}, Lcom/amazon/android/docviewer/KindleDocView;->refresh()V

    .line 532
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p4

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$2;

    invoke-direct {v1, p0, p3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$2;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Z)V

    invoke-virtual {p4, v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->registerPageRenderedCallback(Lcom/amazon/foundation/ICallback;)V

    .line 544
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->navigateToPosition(IZ)V

    goto :goto_1

    .line 548
    :cond_8
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextView(Z)V

    .line 552
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    .line 553
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p2

    if-eq p2, p1, :cond_9

    .line 554
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 555
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateHeaderActionBarItems()V

    :cond_9
    return-void
.end method

.method public openTextViewForReplicaPageToggleViewMode(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V
    .locals 3

    .line 426
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->findCurrentPageItem(Lcom/amazon/android/docviewer/mapper/PageIndex;)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 427
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-eqz p1, :cond_2

    .line 429
    invoke-interface {p1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 434
    :cond_1
    invoke-interface {p1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextViewAt(IZZ)V

    goto :goto_2

    .line 432
    :cond_2
    :goto_1
    sget-object p1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->TAG:Ljava/lang/String;

    const/4 p2, 0x2

    const-string v0, "No text article fragments on this page, so we do not transition to text view"

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1331
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pause()V

    .line 1333
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isImageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->releaseTextView()V

    :cond_0
    return-void
.end method

.method public quitGridView()V
    .locals 3

    .line 906
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 907
    invoke-virtual {p0, v0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openImageView(ZZ)V

    .line 908
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->setVisibility(I)V

    .line 910
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateGridViewToolbarVisibility(Z)V

    .line 912
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public refreshActionBar()V
    .locals 3

    .line 818
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->PERIODICAL_LAYOUT_REFRESH_ACTION_BAR:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 819
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    .line 822
    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/android/menu/CustomActionMenuController;->refreshCustomButtonsAsMenuItems(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 826
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 828
    invoke-static {}, Lcom/amazon/nwstd/utils/NewtronUtils;->isNewtronNotebookAdditionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/nwstd/utils/NewtronUtils;->isNewtronTOCEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ReplicaReadingModeSwitch"

    .line 831
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->refreshCommandBarIcon(Ljava/lang/String;)V

    .line 835
    :cond_1
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->PERIODICAL_LAYOUT_REFRESH_ACTION_BAR:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    return-void
.end method

.method protected refreshChromes(Z)V
    .locals 0

    .line 2205
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->updateCustomButtons()V

    return-void
.end method

.method public removeOnInitialDrawListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 3299
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mOnInitialDrawListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportOpenArticleInImageViewFromTOCMetrics()V
    .locals 2

    .line 2827
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v0, :cond_0

    .line 2828
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2829
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2830
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2831
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewAdapter()Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    .line 2832
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$19;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$19;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    .line 2849
    invoke-interface {v0, v1}, Lcom/amazon/nwstd/replica/IReplicaPage;->addPostDrawListener(Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;)V

    :cond_0
    return-void
.end method

.method public reportOpenArticleInTextViewFromTOCMetrics()V
    .locals 2

    .line 2858
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$20;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$20;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->registerPageRenderedCallback(Lcom/amazon/foundation/ICallback;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 1376
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->resume()V

    const/4 v0, 0x1

    .line 1378
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->enableTouchEvent(Z)V

    .line 1381
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->registerTextViewGestureHandlerIfNeeded()V

    .line 1383
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1387
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->applyDebugSettingsChanges()V

    .line 1391
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-nez v0, :cond_0

    .line 1392
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaViewInitialize()V

    goto :goto_0

    .line 1395
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->setOrientation(I)V

    .line 1398
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1399
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateOverlaysOnOpenGridView(Z)V

    .line 1402
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewPageCurlEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_curlView:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->onResume()V

    .line 1406
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_bitmapProvider:Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->resume()V

    .line 1408
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->refreshCloseButtonVisibility()V

    .line 1412
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mActionBarVisibilityEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->registerLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    return-void
.end method

.method public setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 1

    .line 379
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 381
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getSecondaryTextColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setTextColor(I)V

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateCloseButtonImageViewDrawable()V

    :cond_1
    const/4 p1, 0x0

    .line 389
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getChromeBarView(Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->updateHeaderActionBarTitleColor(Landroid/view/View;)V

    return-void
.end method

.method public setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 2

    .line 367
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "PeriodicalLayout.setDocViewer docViewer should be null at this point"

    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 374
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method

.method public setGridViewOverlaysVisible()V
    .locals 2

    .line 1540
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    .line 1544
    :goto_0
    invoke-super {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setVisibleOverlays(IZ)Z

    return-void
.end method

.method public setOnMenuOpenedOverlays()V
    .locals 2

    .line 2539
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getVisibleOverlays()I

    move-result v0

    const/4 v1, 0x1

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x8

    .line 2542
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    return-void
.end method

.method public setVisibleOverlays(IZ)Z
    .locals 1

    .line 1698
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setVisibleOverlays(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisiblePeriodicalOverlays(IZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVisibleOverlays(IZZ)Z
    .locals 0

    .line 1712
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setVisibleOverlays(IZZ)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1713
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisiblePeriodicalOverlays(IZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setupPeriodicalCustomButtons(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V
    .locals 0

    return-void
.end method

.method public showBookmarkList()V
    .locals 2

    .line 2033
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->inflateBookmarkList()Z

    .line 2036
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getVisibleOverlays()I

    move-result v0

    or-int/lit8 v0, v0, 0x40

    and-int/lit16 v0, v0, -0x81

    const/4 v1, 0x1

    .line 2040
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    return-void
.end method

.method protected showImageView()V
    .locals 2

    .line 2636
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->setOrientation(I)V

    .line 2638
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2640
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->updateTextViewSessionDuration()V

    .line 2643
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->applyDLCIfApplicable()V

    .line 2645
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2646
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showTapToTextTutorial()V
    .locals 7

    .line 1556
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->forceTapToTextTutorial:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isImageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isPageViewsTransitionAnimationStillRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isImageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v0, :cond_2

    .line 1557
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isAnimationStillRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 1561
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    .line 1562
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v1

    .line 1563
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageAtPosition(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v2

    const/4 v3, 0x0

    .line 1566
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    .line 1569
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageAtPosition(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v3

    :cond_3
    if-eqz v2, :cond_4

    .line 1574
    invoke-interface {v2}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v2}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result v0

    if-gtz v0, :cond_6

    :cond_4
    if-eqz v3, :cond_5

    .line 1575
    invoke-interface {v3}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v3}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    .line 1578
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->shouldShowTapToTextTuto()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v6, :cond_7

    .line 1581
    invoke-static {p0}, Lcom/amazon/nwstd/utils/NewsstandAlertDialogUtils;->createTapToTextTutorialDialog(Landroid/view/View;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_tapToTextTutorial:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 1585
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$7;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$7;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1594
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_tapToTextTutorial:Landroid/app/AlertDialog;

    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$8;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$8;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1602
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_tapToTextTutorial:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1603
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_tapToTextTutorial:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1606
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->tap_to_text_dialog_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1607
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->tap_to_text_ok_vertical_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1608
    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1609
    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    .line 1612
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->incrementTapToTextTutoViews()V

    :cond_7
    return-void
.end method

.method public toggleGridView(Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;)V
    .locals 1

    .line 922
    iget-boolean v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->touchEventEnabled:Z

    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->quitGridView()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 926
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->refreshChromes(Z)V

    .line 927
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->mGridViewController:Lcom/amazon/nwstd/gridview/GridViewController;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/gridview/GridViewController;->openGridView(Lcom/amazon/nwstd/gridview/GridViewController$OpenGridViewOrigin;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected trackCurrentPosition()V
    .locals 2

    .line 1002
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getNavigationHistoryManager()Lcom/amazon/android/docviewer/NavigationHistoryManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/NavigationHistoryManager;->addTextViewHistoryPoint(I)V

    goto :goto_0

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    if-eqz v0, :cond_1

    .line 1009
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getNavigationHistoryManager()Lcom/amazon/android/docviewer/NavigationHistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_replicaViewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/NavigationHistoryManager;->addImageViewHistoryPoint(Lcom/amazon/android/docviewer/mapper/PageIndex;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateActionBarItems()V
    .locals 0

    return-void
.end method

.method protected updateCloseButtonImageViewDrawable()V
    .locals 2

    .line 1763
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1764
    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1765
    sget v1, Lcom/amazon/kindle/newsstand/core/R$drawable;->periodical_close_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method protected updateCloseButtonPosition()V
    .locals 3

    .line 1796
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1797
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 1798
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1799
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1801
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$dimen;->softkey_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1803
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1804
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->closeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public updateGridViewLayout()V
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    if-eqz v0, :cond_0

    .line 807
    invoke-static {}, Lcom/amazon/android/util/UIUtils;->getActionBarHeight()I

    move-result v0

    .line 812
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->m_thumbnailGridView:Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;

    invoke-interface {v1, v0}, Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;->setTopMargin(I)V

    :cond_0
    return-void
.end method

.method protected updateGridViewToolbarVisibility(Z)V
    .locals 1

    .line 880
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 882
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->gridViewToolbar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 883
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public abstract updateHeaderActionBarItems()V
.end method

.method protected abstract updateHeaderActionBarTitleColor(Landroid/view/View;)V
.end method

.method protected updateOverlaysOnOpenGridView(Z)V
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    .line 898
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    return-void
.end method

.method protected abstract updateTTSBarColor()V
.end method
