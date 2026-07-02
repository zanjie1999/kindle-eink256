.class public final Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;
.super Ljava/lang/Object;
.source "DisplayMaskUtils.kt"


# static fields
.field private static final knownFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/displaymask/DisplayMaskUtilsFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/displaymask/DisplayMaskUtilsFactory;

    .line 10
    sget-object v1, Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsFactory;->INSTANCE:Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskFactory;->INSTANCE:Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskFactory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->knownFactories:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getKnownFactories$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->knownFactories:Ljava/util/List;

    return-object v0
.end method

.method public static final isHorizontal(Landroid/graphics/Rect;)Z
    .locals 1

    const-string v0, "$this$isHorizontal"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isVertical(Landroid/graphics/Rect;)Z
    .locals 1

    const-string v0, "$this$isVertical"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
