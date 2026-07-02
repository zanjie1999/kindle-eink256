.class public final Lcom/amazon/falkor/webview/RoundedWebview;
.super Landroid/webkit/WebView;
.source "RoundedWebview.kt"


# instance fields
.field private mCornerRadius:F

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/falkor/webview/RoundedWebview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/falkor/webview/RoundedWebview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/falkor/webview/RoundedWebview;->init(Landroid/content/Context;)V

    return-void
.end method

.method private final init(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/falkor/R$dimen;->bottom_sheet_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amazon/falkor/webview/RoundedWebview;->mCornerRadius:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    iget-object v0, p0, Lcom/amazon/falkor/webview/RoundedWebview;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 46
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 47
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    const/16 p2, 0x8

    new-array p2, p2, [F

    .line 49
    iget v0, p0, Lcom/amazon/falkor/webview/RoundedWebview;->mCornerRadius:F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v1, 0x1

    aput v0, p2, v1

    const/4 v1, 0x2

    aput v0, p2, v1

    const/4 v1, 0x3

    aput v0, p2, v1

    const/4 v0, 0x4

    aput p4, p2, v0

    const/4 v0, 0x5

    aput p4, p2, v0

    const/4 v0, 0x6

    aput p4, p2, v0

    const/4 v0, 0x7

    aput p4, p2, v0

    .line 53
    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p3, p2, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 55
    iput-object p1, p0, Lcom/amazon/falkor/webview/RoundedWebview;->mPath:Landroid/graphics/Path;

    return-void
.end method
