.class public final Lcom/amazon/android/widget/CommandBarUtils;
.super Ljava/lang/Object;
.source "CommandBarUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/android/widget/CommandBarUtils;

.field private static final UNSUPPORTED_CONTENT_TYPES:[Lcom/amazon/kindle/krx/content/ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/amazon/android/widget/CommandBarUtils;

    invoke-direct {v0}, Lcom/amazon/android/widget/CommandBarUtils;-><init>()V

    sput-object v0, Lcom/amazon/android/widget/CommandBarUtils;->INSTANCE:Lcom/amazon/android/widget/CommandBarUtils;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/krx/content/ContentType;

    .line 40
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 41
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    sput-object v0, Lcom/amazon/android/widget/CommandBarUtils;->UNSUPPORTED_CONTENT_TYPES:[Lcom/amazon/kindle/krx/content/ContentType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final considerAsLavaMagazine(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 171
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getFilename()Ljava/lang/String;

    move-result-object v1

    const-string v2, "book.filename"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, ".kfx"

    invoke-static {v1, v4, v0, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 140
    sget v1, Lcom/amazon/kindle/krl/R$attr;->themedButtonColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 141
    sget v1, Lcom/amazon/kindle/krl/R$style;->Reader_Toolbar:I

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026le.Reader_Toolbar, attrs)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, -0x1000000

    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "ContextCompat.getDrawable(context, drawable)!!"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object p0
.end method

.method public static final inflateCommandBar(Landroid/view/ViewGroup;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/android/widget/CommandBar;
    .locals 5

    const-string/jumbo v0, "parent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 114
    invoke-static {p1}, Lcom/amazon/android/widget/CommandBarUtils;->useCommandBarForContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-static {}, Lcom/amazon/android/widget/CommandBarUtilsKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NLN content is trying to use toolbar. This shouldn\'t happen."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    invoke-static {}, Lcom/amazon/android/widget/CommandBarUtilsKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AmazonKindle"

    invoke-direct {v2, v4, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NLNContentUsingToolbar_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "null"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 116
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 121
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 122
    sget p1, Lcom/amazon/kindle/krl/R$layout;->commandbar_newtron_phase1:I

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 124
    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$layout;->commandbar:I

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 127
    :goto_1
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-eqz p1, :cond_3

    .line 128
    check-cast p1, Lcom/amazon/android/widget/CommandBar;

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "null cannot be cast to non-null type com.amazon.android.widget.CommandBar"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final inflateTopBarImplementation(Landroid/view/ViewGroup;Lcom/amazon/kindle/krx/content/IBook;)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "parent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    invoke-static {p1}, Lcom/amazon/android/widget/CommandBarUtils;->useCommandBarForContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 89
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 90
    sget p1, Lcom/amazon/kindle/krl/R$layout;->no_overlap_toolbar_newtron_phase1:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$layout;->commandbar_newtron_phase1:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 92
    sget p1, Lcom/amazon/kindle/krl/R$layout;->no_overlap_toolbar:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$layout;->commandbar:I

    :goto_0
    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const-string p0, "impl"

    .line 97
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final useCommandBarForContent(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronNotebookAdditionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    sget-object v1, Lcom/amazon/android/widget/CommandBarUtils;->UNSUPPORTED_CONTENT_TYPES:[Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    sget-object v0, Lcom/amazon/android/widget/CommandBarUtils;->INSTANCE:Lcom/amazon/android/widget/CommandBarUtils;

    invoke-direct {v0, p0}, Lcom/amazon/android/widget/CommandBarUtils;->considerAsLavaMagazine(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final considerAsPdf(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 161
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->PDF:Lcom/amazon/kindle/krx/content/BookFormat;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/pdf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isMobiReplicaContent(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 165
    sget-object v2, Lcom/amazon/android/widget/CommandBarUtils;->UNSUPPORTED_CONTENT_TYPES:[Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 166
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/CommandBarUtils;->considerAsLavaMagazine(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
