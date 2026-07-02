.class public final Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;
.super Landroidx/fragment/app/Fragment;
.source "BookCoverOnResumeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private animator:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->Companion:Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final createUpSlideAnimator(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;
    .locals 5

    const/4 v0, 0x1

    const-wide/16 v1, 0x190

    .line 125
    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kcp/animation/AnimatorFactory;->createFadingAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object v1

    const-string v2, "AnimatorFactory.createFa\u2026 animationFadeInDuration)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    .line 126
    invoke-static {p1, v2, v3, v4}, Lcom/amazon/kcp/animation/AnimatorFactory;->createFadingAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p1

    const-string v3, "AnimatorFactory.createFa\u2026animationFadeOutDuration)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x258

    .line 127
    invoke-virtual {p1, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 129
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v2

    aput-object p1, v4, v0

    .line 130
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 132
    new-instance p1, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$createUpSlideAnimator$1;

    invoke-direct {p1, p3, p2}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$createUpSlideAnimator$1;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3
.end method

.method public static final newInstance(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->Companion:Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment$Companion;->newInstance(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setCoverDrawable(Landroid/widget/ImageView;)V
    .locals 4

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "arguments\n              \u2026structing this fragment\")"

    .line 109
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bookId"

    .line 111
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v1

    const-string v2, "coverManager"

    .line 113
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/cover/ICoverImageService;->getCoverFilenamer()Lcom/amazon/kindle/cover/ICoverFilenamer;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v2, v0, v3}, Lcom/amazon/kindle/cover/ICoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    sget-object v2, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/cover/ICoverImageService;->buildLocalCover(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arguments were not provided, ensure newInstance method is used for constructing this fragment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final spanIfNeeded(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "activity ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 79
    sget v1, Lcom/amazon/kindle/krl/R$id;->book_cover_resume_empty_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "emptyContent"

    if-nez v0, :cond_1

    .line 82
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 85
    :cond_1
    sget v3, Lcom/amazon/kindle/krl/R$id;->book_cover_resume_main_content:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 86
    sget v4, Lcom/amazon/kindle/krl/R$id;->book_cover_resume_linear_layout:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 88
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 89
    invoke-static {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isVertical(Landroid/graphics/Rect;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isHorizontal(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4, v6, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-string v5, "mainContent"

    .line 90
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "parentLinearLayout"

    .line 91
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isVertical(Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 92
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget v0, Lcom/amazon/kindle/krl/R$layout;->book_cover_display_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    sget v1, Lcom/amazon/kindle/krl/R$id;->book_cover_display_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/widget/ImageView;

    .line 56
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->spanIfNeeded(Landroid/view/View;)V

    .line 58
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->setCoverDrawable(Landroid/widget/ImageView;)V

    const-string v2, "animationView"

    .line 60
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, p2}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->createUpSlideAnimator(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->animator:Landroid/animation/AnimatorSet;

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->animator:Landroid/animation/AnimatorSet;

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final startAnimator()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeFragment;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method
