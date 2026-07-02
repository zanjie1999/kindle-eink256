.class public final Lcom/amazon/kindle/recaps/activity/RecapsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RecapsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/recaps/activity/RecapsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecapsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecapsActivity.kt\ncom/amazon/kindle/recaps/activity/RecapsActivity\n*L\n1#1,459:1\n*E\n"
.end annotation


# static fields
.field public static final CURRENT_CHAPTER_HEADER:Ljava/lang/String; = "currentChapterHeader"

.field public static final Companion:Lcom/amazon/kindle/recaps/activity/RecapsActivity$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;


# instance fields
.field private final SUPPRESS_ANIMATION:Ljava/lang/String;

.field private final SUPPRESS_COVER_PAGE_ANIMATION:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private bookOverlayView:Landroid/view/View;

.field private bookView:Landroid/view/View;

.field private bookViewFrame:Landroid/view/ViewGroup;

.field private bookViewRoot:Landroid/view/ViewGroup;

.field private currentChapterHeader:Ljava/lang/CharSequence;

.field private pageChangeDelegate:Lcom/amazon/kindle/recaps/PageChangeDelegate;

.field private pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

.field private readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

.field private readingStartTime:J

.field private tocContainerView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->Companion:Lcom/amazon/kindle/recaps/activity/RecapsActivity$Companion;

    .line 454
    const-class v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->TAG:Ljava/lang/String;

    .line 456
    new-instance v0, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfe

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;-><init>(ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "suppress_animation"

    .line 65
    iput-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->SUPPRESS_ANIMATION:Ljava/lang/String;

    const-string v0, "suppress_cover_page_animation"

    .line 66
    iput-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->SUPPRESS_COVER_PAGE_ANIMATION:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$closeTocFragment(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->closeTocFragment()V

    return-void
.end method

.method public static final synthetic access$getBookOverlayView$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookOverlayView:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "bookOverlayView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getBookView$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getBookViewFrame$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewFrame:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "bookViewFrame"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getBookViewRoot$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "bookViewRoot"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getCurrentChapterHeader$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Ljava/lang/CharSequence;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->currentChapterHeader:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "currentChapterHeader"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getReadingModeBookViewController$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    return-object p0
.end method

.method public static final synthetic access$getRecapsLastReadPositionModel$cp()Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    return-object v0
.end method

.method public static final synthetic access$getTocContainerView$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->tocContainerView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "tocContainerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setBookOverlayView$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookOverlayView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setBookOverlayViewAccessibilityDelegate(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->setBookOverlayViewAccessibilityDelegate()V

    return-void
.end method

.method public static final synthetic access$setBookView$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setBookViewFrame$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewFrame:Landroid/view/ViewGroup;

    return-void
.end method

.method public static final synthetic access$setBookViewRoot$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method public static final synthetic access$setCurrentChapterHeader$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->currentChapterHeader:Ljava/lang/CharSequence;

    return-void
.end method

.method public static final synthetic access$setReadingModeBookViewController$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    return-void
.end method

.method public static final synthetic access$setTocContainerView$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->tocContainerView:Landroid/widget/FrameLayout;

    return-void
.end method

.method private final closeTocFragment()V
    .locals 4

    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 379
    sget v0, Lcom/amazon/kindle/recaps/R$id;->triangle_tip:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Landroid/widget/ImageView;

    .line 380
    sget v1, Lcom/amazon/kindle/recaps/R$id;->recaps_toc_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    check-cast v1, Landroid/widget/ToggleButton;

    .line 381
    sget v2, Lcom/amazon/kindle/recaps/R$id;->recaps_header_text:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    :cond_0
    sget v0, Lcom/amazon/kindle/recaps/R$drawable;->toc_closed:I

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setButtonDrawable(I)V

    .line 385
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->tocContainerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 387
    sget v0, Lcom/amazon/kindle/recaps/R$id;->recaps_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->currentChapterHeader:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "currentChapterHeader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewRoot:Landroid/view/ViewGroup;

    const-string v2, "bookViewRoot"

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 394
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 395
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 397
    sget-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    sget-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_TABLE_OF_CONTENTS_CLOSED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->recordRecapsUserAction(Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;)V

    return-void

    .line 395
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "tocContainerView"

    .line 385
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ToggleButton"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_b
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getReadingMode()Ljava/lang/String;
    .locals 2

    .line 306
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string v1, "KindleRecapsAndroidPlugin.sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "continuous"

    goto :goto_0

    :cond_0
    const-string v0, "paginated"

    :goto_0
    return-object v0
.end method

.method private final isNotchSupported()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->isNotchSupportEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final onRecapsClosed()V
    .locals 11

    .line 335
    sget-object v0, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->INSTANCE:Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;

    const-string v1, "RecapsCloseAction"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->logPerfMarker(Ljava/lang/String;Z)V

    .line 337
    sget-object v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->setBookId(Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsCommonModel;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsCommonModel;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/recaps/RecapsCommonModel;->setCurrentBook(Ljava/lang/ref/WeakReference;)V

    .line 341
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/ILocalBookData;->getLastPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 342
    :goto_1
    sget-object v1, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    invoke-virtual {v1}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->getRecapNextChapterStartPosition()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 343
    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    if-eqz v1, :cond_3

    sget-object v3, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    invoke-virtual {v3}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->getRecapNextChapterStartPosition()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->getDefaultReadingModeEquivalentPosition(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    move-object v1, v2

    .line 344
    :goto_2
    sget-object v3, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->setBookNextChapterStartPosition(Ljava/lang/Integer;)V

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 346
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-gtz v0, :cond_4

    .line 347
    sget-object v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->setHasNextChapter(Z)V

    .line 353
    :cond_4
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    .line 354
    new-instance v1, Lcom/amazon/kindle/recaps/events/RecapsClosedEvent;

    sget-object v3, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    invoke-direct {v1, v3}, Lcom/amazon/kindle/recaps/events/RecapsClosedEvent;-><init>(Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 356
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->close()V

    .line 357
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingStartTime:J

    sub-long/2addr v0, v3

    long-to-double v0, v0

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double v9, v0, v3

    .line 359
    sget-object v5, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->pageChangeDelegate:Lcom/amazon/kindle/recaps/PageChangeDelegate;

    const-string v1, "pageChangeDelegate"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/PageChangeDelegate;->getMinVisitedPosition()I

    move-result v6

    .line 360
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->pageChangeDelegate:Lcom/amazon/kindle/recaps/PageChangeDelegate;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/PageChangeDelegate;->getMaxVisitedPosition()I

    move-result v7

    invoke-direct {p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->getReadingMode()Ljava/lang/String;

    move-result-object v8

    .line 359
    invoke-virtual/range {v5 .. v10}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->recordPositionConsumption(IILjava/lang/String;D)V

    return-void

    .line 360
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 359
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final recordBookReadingFeatureMetrics()V
    .locals 4

    .line 298
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string v1, "KindleRecapsAndroidPlugin.sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 299
    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    :cond_0
    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    :goto_0
    sget-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    sget-object v2, Lcom/amazon/kindle/recaps/metrics/BookReadingFeature;->READING_THEME:Lcom/amazon/kindle/recaps/metrics/BookReadingFeature;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->recordBookReadingFeature(Lcom/amazon/kindle/recaps/metrics/BookReadingFeature;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_2
    :goto_1
    sget-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    sget-object v1, Lcom/amazon/kindle/recaps/metrics/BookReadingFeature;->READING_MODE:Lcom/amazon/kindle/recaps/metrics/BookReadingFeature;

    invoke-direct {p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->getReadingMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->recordBookReadingFeature(Lcom/amazon/kindle/recaps/metrics/BookReadingFeature;Ljava/lang/String;)V

    return-void
.end method

.method private final setBookOverlayViewAccessibilityDelegate()V
    .locals 4

    .line 247
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 248
    sget v1, Lcom/amazon/kindle/recaps/R$layout;->book_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "layoutInflater.inflate(R\u2026.book_overlay_view, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookOverlayView:Landroid/view/View;

    .line 249
    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    const-string v3, "bookOverlayView"

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookOverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kindle/recaps/activity/RecapsActivity$setBookOverlayViewAccessibilityDelegate$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity$setBookOverlayViewAccessibilityDelegate$1;-><init>(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, "bookViewRoot"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final changeScreenReaderFocusToBackButton()V
    .locals 3

    .line 292
    sget v0, Lcom/amazon/kindle/recaps/R$id;->recaps_back_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/ImageButton;

    const/16 v1, 0x40

    const/4 v2, 0x0

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 294
    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    return-void

    .line 292
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageButton"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/recaps/R$id;->tocFragment:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 371
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/recaps/R$id;->tocFragment:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 402
    sget v1, Lcom/amazon/kindle/recaps/R$id;->recaps_toc_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->toggle()V

    goto :goto_0

    .line 407
    :cond_0
    sget-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    sget-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_CLOSED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->recordRecapsUserAction(Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;)V

    .line 408
    invoke-direct {p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->onRecapsClosed()V

    .line 409
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 410
    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->SUPPRESS_ANIMATION:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->SUPPRESS_COVER_PAGE_ANIMATION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 412
    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v1, :cond_1

    .line 413
    sget-object v2, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;

    move-result-object v3

    const-string v4, "it.localBookData"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/ILocalBookData;->getLastPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v2, v1, v3, v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/os/Bundle;Landroid/app/Activity;)Z

    .line 415
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const/4 v0, 0x0

    .line 418
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_2

    .line 419
    sget v0, Lcom/amazon/kindle/recaps/R$anim;->fade_in:I

    .line 421
    :cond_2
    sget v1, Lcom/amazon/kindle/recaps/R$anim;->exit_to_bottom:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void

    .line 402
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ToggleButton"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 311
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 313
    :cond_0
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 82
    sget-object v0, Lcom/amazon/kindle/recaps/util/DarkModeUtil;->INSTANCE:Lcom/amazon/kindle/recaps/util/DarkModeUtil;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/util/DarkModeUtil;->isDarkThemed()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 84
    sget v0, Lcom/amazon/kindle/recaps/R$style;->chromeDarkTheme:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 86
    :cond_0
    sget v0, Lcom/amazon/kindle/recaps/R$style;->chromeLightTheme:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 89
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "window"

    if-lt v0, v1, :cond_2

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "decorView"

    .line 92
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz v10, :cond_1

    and-int/lit8 v1, v1, -0x11

    goto :goto_1

    :cond_1
    or-int/lit8 v1, v1, 0x10

    .line 98
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 101
    :cond_2
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-string v1, "KindleRecapsAndroidPlugin.sdk.pubSubEventManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    const/4 v11, 0x0

    if-eqz v0, :cond_19

    .line 102
    invoke-interface {v0, v9}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 103
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget v0, Lcom/amazon/kindle/recaps/R$layout;->recaps_view:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-string v0, "accessibility"

    .line 105
    invoke-virtual {v9, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 106
    sget v0, Lcom/amazon/kindle/recaps/R$id;->bookViewRoot:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewRoot:Landroid/view/ViewGroup;

    .line 108
    sget v0, Lcom/amazon/kindle/recaps/R$anim;->enter_from_bottom:I

    sget v1, Lcom/amazon/kindle/recaps/R$anim;->exit_stable:I

    invoke-virtual {v9, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 110
    sget v0, Lcom/amazon/kindle/recaps/R$id;->triangle_tip:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    .line 111
    sget v0, Lcom/amazon/kindle/recaps/R$id;->recaps_toc_button:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    move-object v13, v0

    check-cast v13, Landroid/widget/ToggleButton;

    .line 112
    sget v0, Lcom/amazon/kindle/recaps/R$id;->recaps_back_button:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    move-object v14, v0

    check-cast v14, Landroid/widget/ImageButton;

    .line 116
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string v1, "KindleRecapsAndroidPlugin.sdk.readerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/amazon/kindle/recaps/RecapsCommonModel;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsCommonModel;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/RecapsCommonModel;->getCurrentBook()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/IBook;

    goto :goto_2

    :cond_4
    move-object v0, v11

    :goto_2
    if-eqz v0, :cond_13

    iput-object v0, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 122
    const-class v0, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    if-eqz v0, :cond_12

    iput-object v0, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->isNotchSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 133
    sget v0, Lcom/amazon/kindle/recaps/R$id;->recaps_chrome:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 142
    new-instance v4, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$3;

    invoke-direct {v4, v1, v2, v3}, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$3;-><init>(Landroid/widget/LinearLayout$LayoutParams;II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_3

    .line 134
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_7
    :goto_3
    sget v0, Lcom/amazon/kindle/recaps/R$id;->recaps_header_text:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    .line 156
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 157
    new-instance v1, Lcom/amazon/kindle/recaps/PageChangeDelegate;

    sget-object v2, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/recaps/PageChangeDelegate;-><init>(Ljava/lang/ref/WeakReference;Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;)V

    iput-object v1, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->pageChangeDelegate:Lcom/amazon/kindle/recaps/PageChangeDelegate;

    .line 158
    sget v0, Lcom/amazon/kindle/recaps/R$id;->bookView:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v8, "null cannot be cast to non-null type android.widget.FrameLayout"

    if-eqz v0, :cond_10

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewFrame:Landroid/view/ViewGroup;

    .line 162
    iget-object v7, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v7, :cond_f

    .line 163
    iget-object v0, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    if-eqz v0, :cond_e

    sget-object v2, Lcom/amazon/kindle/krx/reader/BookReadingMode;->RECAPS:Lcom/amazon/kindle/krx/reader/BookReadingMode;

    sget-object v1, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    sget-object v1, Lcom/amazon/kindle/recaps/RecapsCommonModel;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsCommonModel;

    invoke-virtual {v1}, Lcom/amazon/kindle/recaps/RecapsCommonModel;->getReaderContext()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v5, v1

    goto :goto_4

    :cond_8
    move-object v5, v11

    .line 164
    :goto_4
    iget-object v6, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->pageChangeDelegate:Lcom/amazon/kindle/recaps/PageChangeDelegate;

    if-eqz v6, :cond_d

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v1, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewFrame:Landroid/view/ViewGroup;

    const-string v16, "bookViewFrame"

    if-eqz v1, :cond_c

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    invoke-virtual {v1}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->getRecapsLastReadPageStartPosition()Ljava/lang/Long;

    move-result-object v17

    move-object v1, v7

    move-object/from16 v18, v4

    move-object/from16 v4, p0

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    move-object/from16 v20, v8

    move-object/from16 v8, v17

    .line 163
    invoke-interface/range {v0 .. v8}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/BookReadingMode;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Landroid/content/Context;Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;Ljava/lang/ref/WeakReference;Ljava/lang/Long;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 167
    iput-object v0, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookView:Landroid/view/View;

    if-eqz v19, :cond_f

    .line 175
    iget-object v1, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->bookViewFrame:Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->applyReaderBrightness(Landroid/view/Window;)V

    .line 181
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "chromeHeader.text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->currentChapterHeader:Ljava/lang/CharSequence;

    .line 185
    new-instance v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$6;

    invoke-direct {v0, v9}, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$6;-><init>(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)V

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->setBookOverlayViewAccessibilityDelegate()V

    .line 193
    sget v0, Lcom/amazon/kindle/recaps/R$id;->tocContainer:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v9, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->tocContainerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 194
    new-instance v1, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$7;

    invoke-direct {v1, v13}, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$7;-><init>(Landroid/widget/ToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v6, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v15

    move v3, v10

    move-object v4, v13

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;-><init>(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Landroid/widget/TextView;ZLandroid/widget/ToggleButton;Landroid/widget/ImageView;)V

    invoke-virtual {v13, v6}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recordBookReadingFeatureMetrics()V

    return-void

    :cond_9
    const-string v0, "tocContainerView"

    .line 194
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 193
    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_b
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 164
    :cond_c
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_d
    const-string v0, "pageChangeDelegate"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    .line 165
    :cond_e
    sget-object v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Could not open book. Closing recaps activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 170
    :cond_f
    sget-object v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Could not open book, book is null. Closing recaps activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_10
    move-object v1, v8

    .line 158
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_11
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_12
    sget-object v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Could not create ReadingModeBookViewController instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 117
    :cond_13
    sget-object v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Could not get current book"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 112
    :cond_14
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageButton"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_15
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ToggleButton"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_16
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_17
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_18
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const-string v0, "pubSubEventsManager"

    .line 102
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11
.end method

.method protected onDestroy()V
    .locals 1

    .line 325
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 326
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 331
    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->changeScreenReaderFocusToBackButton()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 285
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 286
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->onResume()V

    goto :goto_0

    .line 287
    :cond_0
    sget-object v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Not invoking onResume() as controller is NOT initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 279
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 280
    sget-object v0, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->INSTANCE:Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;

    const-string v1, "RecapsOpenAction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->logPerfMarker(Ljava/lang/String;Z)V

    .line 281
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingStartTime:J

    return-void
.end method

.method public final onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    sget-object p1, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->recapsLastReadPositionModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->readingModeBookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->getCurrentPageStartPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->setRecapsLastReadPageStartPosition(Ljava/lang/Long;)V

    .line 320
    new-instance p1, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onThemeChangedEvent$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onThemeChangedEvent$1;-><init>(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateBookView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 427
    :cond_0
    new-instance v0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity$updateBookView$1;-><init>(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateChromeTitle(Ljava/lang/String;)V
    .locals 4

    const-string v0, "chapterName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    sget v0, Lcom/amazon/kindle/recaps/R$string;->kre_recaps_recap_of_chapter_label:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 444
    sget v0, Lcom/amazon/kindle/recaps/R$id;->recaps_header_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/TextView;

    .line 446
    iget-object v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->tocContainerView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const-string v3, "tocContainerView"

    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    .line 447
    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->currentChapterHeader:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 446
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 449
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 446
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
