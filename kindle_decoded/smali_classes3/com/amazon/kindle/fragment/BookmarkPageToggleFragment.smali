.class public Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;
.super Landroidx/fragment/app/Fragment;
.source "BookmarkPageToggleFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

.field private bookmarkImage:Landroid/widget/ImageView;

.field private bookmarkImageShown:Ljava/lang/Boolean;

.field private bookmarkView:Landroid/view/View;

.field private volatile cachedHorizontalMargin:I

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final stateManager:Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

.field private useVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 73
    new-instance v0, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    invoke-direct {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->stateManager:Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    return-void
.end method

.method public static final synthetic access$getAnnotationsManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    return-object p0
.end method

.method public static final synthetic access$getStateManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->stateManager:Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    return-object p0
.end method

.method public static final synthetic access$refreshBookmarkLayout(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkLayout()V

    return-void
.end method

.method private final getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 3

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private final getHorizontalMargin(Lcom/amazon/android/docviewer/KindleDocViewer;)I
    .locals 5

    .line 282
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->marginTypeToValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 283
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    invoke-direct {p0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 286
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    if-gtz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-lez v1, :cond_5

    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isCornerNotchSupportEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 289
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 290
    iget-object v2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkView:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 291
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->bookmark_toggle_image_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 293
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 294
    invoke-static {v3, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 295
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    :cond_3
    const-string p1, "bookmarkView"

    .line 290
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 287
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p1, v0

    :cond_5
    :goto_2
    return p1
.end method

.method private final refreshBookmarkLayout()V
    .locals 6

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_6

    .line 262
    invoke-direct {p0, v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->getHorizontalMargin(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v0

    .line 264
    iget v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->cachedHorizontalMargin:I

    if-ne v1, v0, :cond_1

    return-void

    .line 267
    :cond_1
    iput v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->cachedHorizontalMargin:I

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->bookmark_toggle_area_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 273
    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    .line 274
    iget-object v2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkView:Landroid/view/View;

    const/4 v3, 0x0

    const-string v4, "bookmarkView"

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v1, v0

    .line 275
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 276
    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkView:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 277
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 276
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 274
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_0
    return-void
.end method

.method private final refreshBookmarkViewState(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-interface {v1, p1, p2}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->hasBookmark(II)Z

    move-result p1

    goto :goto_1

    .line 330
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->hasBookmark()Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 333
    :goto_1
    iget-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->stateManager:Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    invoke-virtual {p2}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->shouldForceHidden()Z

    move-result p2

    .line 334
    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->stateManager:Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->shouldForceGone()Z

    move-result v1

    .line 336
    invoke-direct {p0, v1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->updateBookmarkViewState(Z)V

    if-nez v1, :cond_4

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 339
    :cond_3
    invoke-direct {p0, v0, p3}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->updateBookmarkImageState(ZZ)V

    :cond_4
    return-void
.end method

.method static synthetic refreshBookmarkViewState$default(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 328
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkViewState(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    return-void

    .line 0
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: refreshBookmarkViewState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateBookmarkImageState(ZZ)V
    .locals 6

    .line 362
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkImageShown:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 366
    sget v0, Lcom/amazon/kindle/krl/R$string;->bookmark_toggle_button_remove:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$string;->bookmark_toggle_button_add:I

    .line 369
    :goto_0
    iget-boolean v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->useVisibility:Z

    const/4 v2, 0x0

    const-string v3, "bookmarkImage"

    if-eqz v1, :cond_5

    .line 370
    iget-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 370
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    if-eqz p1, :cond_7

    .line 379
    sget v1, Lcom/amazon/kindle/krl/R$anim;->bookmark_from_above:I

    goto :goto_2

    :cond_7
    sget v1, Lcom/amazon/kindle/krl/R$anim;->bookmark_out_above:I

    .line 380
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v4, 0x1

    .line 383
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 384
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 385
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    if-nez p2, :cond_8

    const-wide/16 v4, 0x0

    goto :goto_3

    .line 386
    :cond_8
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    :goto_3
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 389
    iget-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_9

    .line 390
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 394
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkImageShown:Ljava/lang/Boolean;

    return-void

    .line 389
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final updateBookmarkViewState(Z)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const-string p1, "bookmarkView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onAnnotationManagerEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;-><init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/event/AnnotationManagerEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 82
    instance-of v1, v0, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 83
    check-cast v0, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    invoke-interface {v0}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    .line 84
    invoke-interface {v0}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 85
    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->stateManager:Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    invoke-interface {v0}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->setShowBookmarkOnNavigation(Z)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->stateManager:Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->canBookmark()Z

    move-result v2

    :cond_1
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->setBookMarkFeatureSupported(Z)V

    goto :goto_2

    .line 87
    :cond_2
    instance-of v0, p1, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    if-eqz v0, :cond_6

    .line 88
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    invoke-interface {v0}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    .line 89
    invoke-interface {v0}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 90
    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->stateManager:Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    invoke-interface {v0}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->setShowBookmarkOnNavigation(Z)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->stateManager:Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->canBookmark()Z

    move-result v2

    :cond_4
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->setBookMarkFeatureSupported(Z)V

    :goto_2
    if-eqz p1, :cond_5

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$bool;->bookmark_toggle_use_visibility:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->useVisibility:Z

    :cond_5
    return-void

    .line 93
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BookmarkPageToggleFragment must belong to a fragment or context that implements ReaderFragmentDelegate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget p3, Lcom/amazon/kindle/krl/R$layout;->bookmark_page_toggle_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 124
    new-instance p2, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$1;-><init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance p2, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$2;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$2;-><init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const-string p2, "view"

    .line 138
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkView:Landroid/view/View;

    .line 139
    sget p2, Lcom/amazon/kindle/krl/R$id;->bookmark_page_toggle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById(R.id.bookmark_page_toggle)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkImage:Landroid/widget/ImageView;

    .line 140
    iget-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const-string v0, "bookmarkImage"

    if-eqz p2, :cond_2

    .line 142
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 143
    iget-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/krl/R$color;->accent_3_dark:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 145
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->bookmarkImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/krl/R$color;->accent_3_light:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :goto_1
    return-object p1

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onDocViewerSettingsChangeEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;-><init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onKRXExternalScreenEvent(Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onKRXExternalScreenEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onKRXExternalScreenEvent$1;-><init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;-><init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onObjectSelectionModelEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onObjectSelectionModelEvent$1;-><init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPageZoomChangeEvent(Lcom/amazon/android/docviewer/PageZoomChangeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onPageZoomChangeEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onPageZoomChangeEvent$1;-><init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/android/docviewer/PageZoomChangeEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 115
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->stateManager:Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->onResume()V

    .line 117
    invoke-direct {p0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkLayout()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    .line 118
    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkViewState$default(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZILjava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 106
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 111
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method
