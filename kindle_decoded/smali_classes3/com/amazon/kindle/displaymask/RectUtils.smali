.class public final Lcom/amazon/kindle/displaymask/RectUtils;
.super Ljava/lang/Object;
.source "DisplayMaskUtils.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lcom/amazon/kindle/displaymask/RectUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/RectUtils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isHorizontal(Landroid/graphics/Rect;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 154
    invoke-static {p0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isHorizontal(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isVertical(Landroid/graphics/Rect;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 160
    invoke-static {p0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isVertical(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
