.class public final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "BookOpenActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$Companion;

.field private static final DOWNLOAD_ERROR_ACTIVITY_REQUEST_CODE:I

.field public static final EXTRA_OPENING_BOOK_ID:Ljava/lang/String; = "OpeningBookId"

.field public static final TRANSITION_NAME:Ljava/lang/String; = "splash_screen_transition"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final announceDownloadProgressRunnable:Ljava/lang/Runnable;

.field private backPressed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final beginFadeInAnimation:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public bookId:Ljava/lang/String;

.field public bookIdObject:Lcom/amazon/kindle/model/content/IBookID;

.field public bookOpenBackButton:Landroid/view/View;

.field private final contentOpenMetricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

.field private currentDriver:Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;

.field private final delayHandler:Landroid/os/Handler;

.field private downloadTracker:Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;

.field private failureDetails:Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;

.field private isPaused:Z

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field public lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

.field private final mrprLatch:Ljava/util/concurrent/CountDownLatch;

.field private nonCoverGroup:Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;

.field private final progressBarInterpolator$delegate:Lkotlin/Lazy;

.field private final progressUpdateAnimationDurationMs:J

.field private final tracker:Lcom/amazon/kindle/krx/content/bookopen/BookOpenTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->Companion:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$Companion;

    const/16 v0, 0x3ea

    .line 89
    sput v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->DOWNLOAD_ERROR_ACTIVITY_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->mrprLatch:Ljava/util/concurrent/CountDownLatch;

    .line 109
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 110
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->contentOpenMetricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    .line 111
    const-class v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenTracker;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenTracker;

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->tracker:Lcom/amazon/kindle/krx/content/bookopen/BookOpenTracker;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->delayHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->backPressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$announceDownloadProgressRunnable$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$announceDownloadProgressRunnable$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->announceDownloadProgressRunnable:Ljava/lang/Runnable;

    .line 123
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$progressBarInterpolator$2;->INSTANCE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$progressBarInterpolator$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->progressBarInterpolator$delegate:Lkotlin/Lazy;

    .line 131
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->getProgressBarUpdateAnimationMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->progressUpdateAnimationDurationMs:J

    .line 221
    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->beginFadeInAnimation:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$downloadProgressPercentage(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)I
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->downloadProgressPercentage()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$downloadingNonOpenable(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;Lcom/amazon/kindle/model/content/ContentState;)Z
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->downloadingNonOpenable(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getContentOpenMetricsManager$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->contentOpenMetricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    return-object p0
.end method

.method public static final synthetic access$getDOWNLOAD_ERROR_ACTIVITY_REQUEST_CODE$cp()I
    .locals 1

    .line 80
    sget v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->DOWNLOAD_ERROR_ACTIVITY_REQUEST_CODE:I

    return v0
.end method

.method public static final synthetic access$getDelayHandler$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Landroid/os/Handler;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->delayHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getLibraryService$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method

.method public static final synthetic access$getNonCoverGroup$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->nonCoverGroup:Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "nonCoverGroup"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getProgressBarInterpolator$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getProgressBarInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProgressUpdateAnimationDurationMs$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->progressUpdateAnimationDurationMs:J

    return-wide v0
.end method

.method public static final synthetic access$setNonCoverGroup$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->nonCoverGroup:Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;

    return-void
.end method

.method private final downloadProgressPercentage()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->downloadTracker:Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->getPercentageProgress$krxsdk_release()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final downloadingNonOpenable(Lcom/amazon/kindle/model/content/ContentState;)Z
    .locals 1

    .line 134
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static synthetic getBookId$krxsdk_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBookIdObject$krxsdk_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBookOpenBackButton$krxsdk_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCurrentDriver$krxsdk_release$annotations()V
    .locals 0

    return-void
.end method

.method public static final getDOWNLOAD_ERROR_ACTIVITY_REQUEST_CODE()I
    .locals 1

    sget v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->DOWNLOAD_ERROR_ACTIVITY_REQUEST_CODE:I

    return v0
.end method

.method public static synthetic getDownloadTracker$krxsdk_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLifecycle$krxsdk_release$annotations()V
    .locals 0

    return-void
.end method

.method private final getProgressBarInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->progressBarInterpolator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private final handleValidationActivityResult(ILandroid/content/Intent;)V
    .locals 3

    .line 501
    iget-object p2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->failureDetails:Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;

    .line 502
    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$handleValidationActivityResult$resultHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$handleValidationActivityResult$resultHandler$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 505
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    .line 506
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    goto/16 :goto_2

    .line 507
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->getPositiveResultCode()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    goto/16 :goto_2

    .line 508
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->getPositiveResultCode()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 509
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restarting "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$handleValidationActivityResult$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$handleValidationActivityResult$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    goto :goto_2

    :cond_4
    const-string p1, "lifecycle"

    .line 509
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 512
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->getNegativeResultCode()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    goto :goto_2

    .line 513
    :cond_6
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->getNegativeResultCode()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_8

    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " matches negative value, cleaning up book open."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 515
    :cond_8
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failure for unknown reason."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :goto_2
    iput-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->failureDetails:Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;

    .line 519
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final spanIfNeeded()V
    .locals 9

    .line 188
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 189
    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->book_open_empty_content:I

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "emptyContent"

    if-nez v0, :cond_0

    .line 192
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 195
    :cond_0
    sget v3, Lcom/amazon/kindle/krxsdk/R$id;->book_open_constraint_layout:I

    invoke-virtual {p0, v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 196
    sget v4, Lcom/amazon/kindle/krxsdk/R$id;->book_open_linear_layout:I

    invoke-virtual {p0, v4}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 198
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, -0x1

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 199
    invoke-static {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isVertical(Landroid/graphics/Rect;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isHorizontal(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v5, v7, v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-string v6, "mainContent"

    .line 200
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "parentLinearLayout"

    .line 201
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isVertical(Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 202
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final announceLoadingBookAndDownloadProgress$krxsdk_release()V
    .locals 4

    .line 595
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/amazon/kindle/krl/R$string;->speak_OneTap_SplashScreen_loading_book:I

    invoke-static {v0, v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAccessibilityHelperKt;->announceForAccessibility(Landroid/view/Window;I)V

    .line 598
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->delayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->announceDownloadProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final changeBackButtonString$krxsdk_release()V
    .locals 5

    .line 619
    sget v0, Lcom/amazon/kindle/krxsdk/R$id;->close_book_text:I

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const-string v2, "bookId"

    if-nez v0, :cond_1

    .line 621
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No TextView for Close Book Text for book with ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 624
    :cond_1
    sget v0, Lcom/amazon/kindle/krxsdk/R$id;->book_open_back_button_chevron:I

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    .line 626
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No LinearLayout for OneTap back button chevron for book with ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method public final completeState$krxsdk_release()V
    .locals 4

    .line 465
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Completion of state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    const-string v2, "lifecycle"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->nextStep()V

    .line 468
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    if-ne v0, v1, :cond_0

    .line 469
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->READER_OPEN:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    if-ne v0, v1, :cond_2

    .line 475
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->OPEN_ANIMATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createEndEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 477
    invoke-virtual {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 479
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->executeNextStep$krxsdk_release()V

    return-void

    .line 474
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 468
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 466
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    const-string v0, "bookId"

    .line 465
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final displaySplashScreen$krxsdk_release()V
    .locals 5

    .line 380
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    const-string v2, "bookId"

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    const-string v4, "libraryService"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "libraryService.getConten\u2026Service.userId) ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    const-string v4, "content.state"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->downloadingNonOpenable(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 384
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting up download view for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->Companion:Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookIdObject:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$displaySplashScreen$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$displaySplashScreen$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    .line 386
    new-instance v3, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$displaySplashScreen$2;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$displaySplashScreen$2;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    new-instance v4, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$displaySplashScreen$3;

    invoke-direct {v4, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$displaySplashScreen$3;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    .line 385
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker$Companion;->create$krxsdk_release(Lcom/amazon/kindle/model/content/IBookID;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->downloadTracker:Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;

    .line 387
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->downloadTracker:Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->getPercentageProgress$krxsdk_release()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->onProgressUpdate$krxsdk_release(I)V

    .line 393
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->announceLoadingBookAndDownloadProgress$krxsdk_release()V

    .line 395
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->setupExtendedLoadingText$krxsdk_release()V

    goto :goto_2

    :cond_1
    const-string v0, "bookIdObject"

    .line 385
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 384
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 397
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 398
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->shouldHoldOneTapSplashUntilCoverTapped()Z

    move-result v0

    if-nez v0, :cond_5

    .line 399
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Book: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is local, posting delayed completion."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->openReaderOnceMinDisplayTimeElapsed$krxsdk_release()V

    goto :goto_1

    .line 399
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 404
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/amazon/kindle/krl/R$string;->speak_OneTap_SplashScreen_opening_book:I

    invoke-static {v0, v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAccessibilityHelperKt;->announceForAccessibility(Landroid/view/Window;I)V

    goto :goto_2

    .line 406
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->handleDownloadInFailureState$krxsdk_release()V

    :cond_7
    :goto_2
    return-void

    .line 380
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final executeNextStep$krxsdk_release()V
    .locals 2

    .line 277
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$executeNextStep$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$executeNextStep$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final getBackPressed$krxsdk_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->backPressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final getBeginFadeInAnimation$krxsdk_release()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->beginFadeInAnimation:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getBookId$krxsdk_release()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookIdObject$krxsdk_release()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookIdObject:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookIdObject"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookOpenBackButton$krxsdk_release()Landroid/view/View;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookOpenBackButton:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookOpenBackButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCurrentDriver$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->currentDriver:Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;

    return-object v0
.end method

.method public final getDownloadTracker$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->downloadTracker:Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;

    return-object v0
.end method

.method public final getLifecycle$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "lifecycle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final handleDownloadInFailureState$krxsdk_release()V
    .locals 8

    .line 527
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    const-string v2, "lifecycle"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->failureDetailsForBook(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;

    move-result-object v0

    const-string v1, "bookId"

    if-nez v0, :cond_1

    .line 529
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download failure reported for book: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " without details."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void

    .line 529
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 533
    :cond_1
    iget-object v4, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getPattern()Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;->getFailureHandler()Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler;

    invoke-direct {v4}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler;-><init>()V

    .line 534
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download failure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " reported for book: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v7, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    const-string v5, "lifecycle.book.bookId"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krxsdk/R$id;->book_open_cover_image:I

    invoke-virtual {p0, v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-interface {v4, v1, v2, v0, v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;->handleFailure(Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;Landroid/view/View;)V

    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 534
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 533
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 527
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method protected handleThemeChange()V
    .locals 0

    return-void
.end method

.method public final handleValidationFailure$krxsdk_release(Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;)V
    .locals 5

    const-string v0, "details"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validation failure for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->getFailureReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->contentOpenMetricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookIdObject:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x0

    .line 545
    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 546
    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v3

    .line 544
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->removeMetrics(Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 547
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 548
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void

    .line 552
    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->failureDetails:Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;

    .line 553
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->getRequestCode()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x3f2

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    const-string p1, "bookIdObject"

    .line 544
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 483
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 486
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->failureDetails:Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;->getRequestCode()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_2

    :goto_1
    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_3

    .line 487
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    .line 488
    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->handleValidationActivityResult(ILandroid/content/Intent;)V

    .line 490
    :cond_3
    sget p3, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->DOWNLOAD_ERROR_ACTIVITY_REQUEST_CODE:I

    if-ne p1, p3, :cond_4

    const/16 p1, 0x3eb

    if-ne p2, p1, :cond_4

    .line 491
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Intercepted activity result for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/amazon/kcp/library/download/error/DownloadErrorActivity;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    :cond_4
    return-void
.end method

.method public final onAnnotationsManagerEvent(Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->getBookId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->getEventType()Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->ANNOTATIONS_SIDECAR_PROCESSED:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->getEventType()Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->ANNOTATIONS_SIDECAR_REQUEST_WILL_NOT_COMPLETE:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 635
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->mrprLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void

    :cond_2
    const-string p1, "bookId"

    .line 633
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onBackPressed()V
    .locals 7

    .line 560
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware back button used to cancel open for book: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/amazon/kindle/krl/R$string;->speak_OneTap_SplashScreen_book_closed:I

    invoke-static {v0, v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAccessibilityHelperKt;->announceForAccessibility(Landroid/view/Window;I)V

    .line 563
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    .line 564
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->backPressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 565
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    const-string v1, "lifecycle"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getOpenEventTimes()Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->setOpenCanceledTimestamp(Ljava/lang/Long;)V

    .line 566
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;->HARDWARE_BACK_BUTTON:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    iget-object v5, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getClientId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getOpenEventTimes()Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    move-result-object v1

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;->emitOpenCanceledMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 565
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 568
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->backPressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 569
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void

    :cond_5
    const-string v0, "bookId"

    .line 560
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 180
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->spanIfNeeded()V

    return-void
.end method

.method public final onContentOpenable$krxsdk_release()V
    .locals 7

    .line 441
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->shouldHoldOneTapSplashUntilCoverTapped()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v3, "libraryService"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getShouldAwaitMRPR()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 450
    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->mrprLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 452
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity waited "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms for sidecar processing"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->contentOpenMetricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    .line 454
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookIdObject:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x0

    .line 455
    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v3

    const-string v3, "oneTapMRPRAwaitComplete"

    .line 453
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    goto :goto_1

    :cond_2
    const-string v0, "bookIdObject"

    .line 454
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 457
    :cond_3
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 458
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->openReaderOnceMinDisplayTimeElapsed$krxsdk_release()V

    return-void

    :cond_4
    const-string v0, "lifecycle"

    .line 448
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string v0, "bookId"

    .line 446
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 137
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 139
    sget p1, Lcom/amazon/kindle/krxsdk/R$layout;->activity_book_open:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 140
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->spanIfNeeded()V

    .line 141
    sget p1, Lcom/amazon/kindle/krxsdk/R$id;->book_open_back_button_chevron:I

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "book_open_back_button_chevron"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookOpenBackButton:Landroid/view/View;

    .line 142
    new-instance p1, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    sget v2, Lcom/amazon/kindle/krxsdk/R$id;->book_open_back_button_chevron:I

    invoke-virtual {p0, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    sget v0, Lcom/amazon/kindle/krxsdk/R$id;->book_open_opening_text_switcher:I

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    const-string v2, "book_open_opening_text_switcher"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget v0, Lcom/amazon/kindle/krxsdk/R$id;->book_open_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v2, "book_open_progress_bar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-direct {p1, v1}, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;-><init>([Landroid/view/View;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->nonCoverGroup:Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "OpeningBookId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 146
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Null value for OpeningBookId"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to parse BookID object for OpeningBookId"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 158
    :cond_1
    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookIdObject:Lcom/amazon/kindle/model/content/IBookID;

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->tracker:Lcom/amazon/kindle/krx/content/bookopen/BookOpenTracker;

    const-string v1, "bookId"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {v0, v3, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenTracker;->registerOpen(Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_5

    .line 162
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No lifecycle for book with ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 162
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_5
    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    .line 168
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->changeBackButtonString$krxsdk_release()V

    .line 170
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->setupViewAnimations$krxsdk_release()V

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->setupCoverImage$krxsdk_release()V

    .line 173
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity created for book: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->executeNextStep$krxsdk_release()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 257
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up the book open for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->delayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->downloadTracker:Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;->removeCallbacks$krxsdk_release()V

    .line 260
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_4

    .line 264
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->tracker:Lcom/amazon/kindle/krx/content/bookopen/BookOpenTracker;

    const-string v2, "lifecycle"

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenTracker;->bookOpenCompleted(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getSourceActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 268
    :cond_4
    :goto_1
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    return-void

    :cond_5
    const-string v0, "bookId"

    .line 257
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method protected onPause()V
    .locals 2

    .line 251
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->isPaused:Z

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->delayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->announceDownloadProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onProgressUpdate$krxsdk_release(I)V
    .locals 2

    .line 573
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;I)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 235
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    const-string v1, "lifecycle"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getOpenEventTimes()Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->getSplashScreenVisibleTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getOpenEventTimes()Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->setSplashScreenVisibleTimestamp(Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "libraryService"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 244
    iget-boolean v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->isPaused:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->downloadingNonOpenable(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->isPaused:Z

    .line 246
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->announceLoadingBookAndDownloadProgress$krxsdk_release()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "bookId"

    .line 243
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final openReaderOnceMinDisplayTimeElapsed$krxsdk_release()V
    .locals 6

    .line 416
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getOpenEventTimes()Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->getSplashScreenVisibleTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot determine elapsed display time due to missing splashScreenVisibleTimestamp. Defaulting to wait 1000 ms"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    :goto_0
    const-wide/16 v0, 0x3e8

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 425
    iget-object v4, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->delayHandler:Landroid/os/Handler;

    new-instance v5, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$openReaderOnceMinDisplayTimeElapsed$1;

    invoke-direct {v5, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$openReaderOnceMinDisplayTimeElapsed$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    sub-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms before displaying the reader"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 430
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->currentDriver:Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->completeAction$krxsdk_release()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "lifecycle"

    .line 416
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setBackPressed$krxsdk_release(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->backPressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setBookId$krxsdk_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    return-void
.end method

.method public final setBookIdObject$krxsdk_release(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookIdObject:Lcom/amazon/kindle/model/content/IBookID;

    return-void
.end method

.method public final setBookOpenBackButton$krxsdk_release(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookOpenBackButton:Landroid/view/View;

    return-void
.end method

.method public final setCurrentDriver$krxsdk_release(Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->currentDriver:Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;

    return-void
.end method

.method public final setDownloadTracker$krxsdk_release(Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->downloadTracker:Lcom/amazon/kindle/krx/content/bookopen/OneTapDownloadTracker;

    return-void
.end method

.method public final setLifecycle$krxsdk_release(Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    return-void
.end method

.method public final setupCancelButton$krxsdk_release()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookOpenBackButton:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "bookOpenBackButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setupCoverImage$krxsdk_release()V
    .locals 10

    .line 290
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->shouldHoldOneTapSplashUntilCoverTapped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    sget v0, Lcom/amazon/kindle/krxsdk/R$id;->book_open_cover_image:I

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v0

    .line 299
    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->LARGE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getMaximumAllowedSizeToFetch()Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v1

    .line 301
    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->simulateUnfetchedCoverImage()Z

    move-result v2

    const-string v3, "bookId"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Lcom/amazon/kindle/cover/ICoverImageService;->deleteBookCovers(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 305
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v2, :cond_10

    sget-object v5, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v0, v2, v5}, Lcom/amazon/kindle/cover/ICoverImageService;->getLargestCoverLocationAboveMinSize(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 306
    iget-object v5, v2, Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;->filePath:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "it"

    const-string v7, " cover image for "

    if-eqz v5, :cond_6

    .line 307
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Using largest local "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    iget-object v9, v2, Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;->size:Lcom/amazon/kindle/cover/ImageSizes$Type;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    move-object v9, v4

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v7, :cond_5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->updateCoverImageDrawable$krxsdk_release(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_b

    .line 310
    iget-object v2, v2, Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;->size:Lcom/amazon/kindle/cover/ImageSizes$Type;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->isSmaller(Lcom/amazon/kindle/cover/ImageSizes$Type;)Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    .line 307
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 314
    :cond_6
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No local cover available, building tmp local "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookId:Ljava/lang/String;

    if-eqz v5, :cond_f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookIdObject:Lcom/amazon/kindle/model/content/IBookID;

    const-string v3, "bookIdObject"

    if-eqz v2, :cond_e

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/cover/ICoverImageService;->buildLocalCover(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 316
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->updateCoverImageDrawable$krxsdk_release(Landroid/graphics/drawable/Drawable;)V

    .line 317
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getView()Landroid/view/View;

    move-result-object v2

    instance-of v5, v2, Landroid/widget/ImageView;

    if-nez v5, :cond_8

    move-object v2, v4

    :cond_8
    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 318
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->updateCoverImageDrawable$krxsdk_release(Landroid/graphics/drawable/Drawable;)V

    .line 319
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_9
    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No cover available for book: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookIdObject:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v6, :cond_c

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 323
    :cond_b
    :goto_4
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v2

    new-instance v3, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCoverImage$4;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 319
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_d
    const-string v0, "lifecycle"

    .line 317
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 315
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 314
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 305
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public final setupExtendedLoadingText$krxsdk_release()V
    .locals 5

    .line 603
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->contentOpenMetricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    .line 605
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->bookIdObject:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 606
    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "showedExtraMessaging"

    .line 603
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setCounters(Ljava/lang/String;ILcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 607
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->delayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupExtendedLoadingText$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupExtendedLoadingText$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-string v0, "bookIdObject"

    .line 605
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setupViewAnimations$krxsdk_release()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->lifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getView()Landroid/view/View;

    move-result-object v0

    const-string v2, "window"

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;->INSTANCE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v3

    const-string v4, "window.sharedElementEnterTransition"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;->setTransitionListener(Landroid/transition/Transition;Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V

    goto :goto_0

    .line 213
    :cond_0
    sget v0, Lcom/amazon/kindle/krxsdk/R$id;->book_open_cover_image:I

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v3, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;->INSTANCE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;

    invoke-virtual {v3, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAnimationProvider;->getMissingCoverAnimation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    :goto_0
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    .line 217
    sget v3, Lcom/amazon/kindle/krxsdk/R$id;->book_open_cover_image:I

    invoke-virtual {p0, v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/transition/Fade;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v3

    const-string v4, "fadeOut.removeTarget(book_open_cover_image)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->nonCoverGroup:Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;

    if-eqz v4, :cond_1

    invoke-static {v3, v4}, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroupVisibilityWorkaroundKt;->removeTarget(Landroid/transition/Transition;Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;)V

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    return-void

    :cond_1
    const-string v0, "nonCoverGroup"

    .line 217
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "lifecycle"

    .line 210
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final updateCoverImageDrawable$krxsdk_release(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "newImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$updateCoverImageDrawable$updateCoverRunnable$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$updateCoverImageDrawable$updateCoverRunnable$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;Landroid/graphics/drawable/Drawable;)V

    .line 346
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    const-string v1, "ThreadPoolManager.getInstance()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 347
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 349
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
