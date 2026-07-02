.class public final Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;
.super Ljava/lang/Object;
.source "CSPageIndicatorController.kt"


# instance fields
.field private final LOCATION_STRING_MAX_LENGTH:I

.field private final PAGE_STRING_MAX_LENGTH:I

.field private final PROPERTY_NAME_ALPHA:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private pageIndicatorView:Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;

.field private rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V
    .locals 2

    const-string v0, "pageIndicatorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(CSPageIndic\u2026orController::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->TAG:Ljava/lang/String;

    const-string v0, "alpha"

    .line 16
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->PROPERTY_NAME_ALPHA:Ljava/lang/String;

    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->PAGE_STRING_MAX_LENGTH:I

    const/4 v0, 0x3

    .line 18
    iput v0, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->LOCATION_STRING_MAX_LENGTH:I

    .line 24
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->pageIndicatorView:Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;

    return-void
.end method

.method private final getPageText(I)Ljava/lang/String;
    .locals 11

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    const-string v1, ""

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 87
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 88
    :goto_0
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const/4 v9, 0x0

    if-nez v4, :cond_2

    .line 89
    sget p1, Lcom/amazon/kindle/krl/R$string;->goto_page:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.string.goto_page)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->PAGE_STRING_MAX_LENGTH:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget v1, Lcom/amazon/kindle/krl/R$string;->cs_page_indicator:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v9

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "context.getString(R.stri\u2026String, currentPageLabel)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_2
    sget v2, Lcom/amazon/kindle/krl/R$string;->goto_location:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "context.getString(R.string.goto_location)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget v10, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->LOCATION_STRING_MAX_LENGTH:I

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eqz v2, :cond_5

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4, p1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    .line 97
    sget p1, Lcom/amazon/kindle/krl/R$string;->cs_location_indicator:I

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v9

    aput-object v3, v1, v5

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "context.getString(R.stri\u2026ionString, locationValue)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-object v1

    .line 94
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-object v1
.end method


# virtual methods
.method public final updatePageIndicator(I)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->pageIndicatorView:Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;

    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getSeekBarCoordinateValues(I)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 73
    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getSeekBarTop()I

    move-result v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 74
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->getPageText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->setPageText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final updatePageIndicatorVisibility(ZZ)V
    .locals 8

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePageIndicatorVisibility visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", animated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->pageIndicatorView:Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->fade_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 39
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->pageIndicatorView:Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->PROPERTY_NAME_ALPHA:Ljava/lang/String;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v3, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->PROPERTY_NAME_ALPHA:Ljava/lang/String;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v3, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    const-string v1, "animator"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    int-to-long v1, v7

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 47
    new-instance v1, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController$updatePageIndicatorVisibility$$inlined$let$lambda$1;

    move-object v2, v1

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController$updatePageIndicatorVisibility$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;ZZI)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
