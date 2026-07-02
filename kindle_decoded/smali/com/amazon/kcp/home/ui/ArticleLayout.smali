.class public final Lcom/amazon/kcp/home/ui/ArticleLayout;
.super Landroid/widget/FrameLayout;
.source "ArticleLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArticleLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArticleLayout.kt\ncom/amazon/kcp/home/ui/ArticleLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,147:1\n1#2:148\n*E\n"
.end annotation


# instance fields
.field public articleHeroImageView:Landroid/widget/ImageView;

.field public articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

.field public articlePublisherImageView:Landroid/widget/ImageView;

.field public articleSection:Landroid/widget/LinearLayout;

.field public articleTitleTextView:Lcom/amazon/android/ui/UiFontTextView;

.field public articleZone:Lcom/amazon/kindle/home/model/ArticleZone;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    const-string v1, "com.amazon.kcp.home.ui.ArticleLayout"

    .line 31
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->executor:Ljava/util/concurrent/ExecutorService;

    .line 46
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->GRID:Lcom/amazon/kindle/krx/library/LibraryViewType;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/librarymodule/R$styleable;->ArticleLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.theme.obtainStyl\u2026able.ArticleLayout, 0, 0)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static final synthetic access$setIntroMaxLinesForSingleLineTitle(Lcom/amazon/kcp/home/ui/ArticleLayout;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->setIntroMaxLinesForSingleLineTitle()V

    return-void
.end method

.method public static final synthetic access$setIntroMaxLinesForTwoLineTitle(Lcom/amazon/kcp/home/ui/ArticleLayout;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->setIntroMaxLinesForTwoLineTitle()V

    return-void
.end method

.method private final populateArticleTextElements()V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleTitleTextView:Lcom/amazon/android/ui/UiFontTextView;

    const-string v1, "articleTitleTextView"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleZone:Lcom/amazon/kindle/home/model/ArticleZone;

    const-string v4, "articleZone"

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/amazon/kindle/home/model/ArticleZone;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleZone:Lcom/amazon/kindle/home/model/ArticleZone;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/amazon/kindle/home/model/ArticleZone;->getIntro()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleTitleTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/ui/ArticleLayout$populateArticleTextElements$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/home/ui/ArticleLayout$populateArticleTextElements$1;-><init>(Lcom/amazon/kcp/home/ui/ArticleLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, "articleIntroTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final populateHeroImage()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleZone:Lcom/amazon/kindle/home/model/ArticleZone;

    const-string v1, "articleZone"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ArticleZone;->getArticleImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/HomeUtils;->imagePathForArticleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 76
    iget-object v3, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleHeroImageView:Landroid/widget/ImageView;

    const-string v4, "articleHeroImageView"

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleHeroImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleZone:Lcom/amazon/kindle/home/model/ArticleZone;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/amazon/kindle/home/model/ArticleZone;->getArticleImageAltText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    return-void

    .line 71
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final populatePublisherImage()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleZone:Lcom/amazon/kindle/home/model/ArticleZone;

    const-string v1, "articleZone"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ArticleZone;->getPublisherImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/HomeUtils;->imagePathForPublisherUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 88
    iget-object v3, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articlePublisherImageView:Landroid/widget/ImageView;

    const-string v4, "articlePublisherImageView"

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articlePublisherImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleZone:Lcom/amazon/kindle/home/model/ArticleZone;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/amazon/kindle/home/model/ArticleZone;->getPublisherImageAltText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    return-void

    .line 83
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final setIntroMaxLinesForSingleLineTitle()V
    .locals 7

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    float-to-double v0, v0

    const/4 v2, 0x0

    const-string v3, "articleIntroTextView"

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_1

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_3

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_5

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_7

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_6

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_8

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final setIntroMaxLinesForTwoLineTitle()V
    .locals 7

    .line 126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    float-to-double v0, v0

    const/4 v2, 0x0

    const-string v3, "articleIntroTextView"

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_1

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_3

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_5

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_7

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_6

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_8

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final bindContentToLayout()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->populateHeroImage()V

    .line 65
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->populatePublisherImage()V

    .line 66
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/ArticleLayout;->populateArticleTextElements()V

    return-void
.end method

.method public final getArticleHeroImageView()Landroid/widget/ImageView;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleHeroImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "articleHeroImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getArticleIntroTextView()Lcom/amazon/android/ui/UiFontTextView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "articleIntroTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getArticlePublisherImageView()Landroid/widget/ImageView;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articlePublisherImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "articlePublisherImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getArticleSection()Landroid/widget/LinearLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleSection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "articleSection"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getArticleTitleTextView()Lcom/amazon/android/ui/UiFontTextView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleTitleTextView:Lcom/amazon/android/ui/UiFontTextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "articleTitleTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getArticleZone()Lcom/amazon/kindle/home/model/ArticleZone;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleZone:Lcom/amazon/kindle/home/model/ArticleZone;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "articleZone"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 56
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->article_hero_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.article_hero_image)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleHeroImageView:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->article_publisher_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.article_publisher_image)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articlePublisherImageView:Landroid/widget/ImageView;

    .line 58
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->article_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.article_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/android/ui/UiFontTextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleTitleTextView:Lcom/amazon/android/ui/UiFontTextView;

    .line 59
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->article_intro:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.article_intro)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/android/ui/UiFontTextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    .line 60
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->shoveler_article_section:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.shoveler_article_section)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleSection:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final setArticleHeroImageView(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleHeroImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setArticleIntroTextView(Lcom/amazon/android/ui/UiFontTextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleIntroTextView:Lcom/amazon/android/ui/UiFontTextView;

    return-void
.end method

.method public final setArticlePublisherImageView(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articlePublisherImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setArticleSection(Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleSection:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final setArticleTitleTextView(Lcom/amazon/android/ui/UiFontTextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleTitleTextView:Lcom/amazon/android/ui/UiFontTextView;

    return-void
.end method

.method public final setArticleZone(Lcom/amazon/kindle/home/model/ArticleZone;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleZone:Lcom/amazon/kindle/home/model/ArticleZone;

    return-void
.end method

.method public final setDarkMode()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleSection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->article_border_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void

    :cond_0
    const-string v0, "articleSection"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setLightMode()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->articleSection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->article_border_light:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void

    :cond_0
    const-string v0, "articleSection"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ArticleLayout;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-void
.end method
