.class public final Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;
.super Ljava/lang/Object;
.source "ReadingRulerOpacityModel.kt"


# instance fields
.field private maxOpacity:I

.field private minOpacity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/readingruler/R$integer;->reading_ruler_opacity_min_actual:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->minOpacity:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/readingruler/R$integer;->reading_ruler_opacity_max_actual:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->maxOpacity:I

    return-void
.end method

.method public static final synthetic access$convertProgressToOpacityValue(Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;I)F
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->convertProgressToOpacityValue(I)F

    move-result p0

    return p0
.end method

.method private final convertOpacityValueToProgress(F)I
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 42
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->minOpacity:I

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->maxOpacity:I

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->minOpacity:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private final convertProgressToOpacityValue(I)F
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->minOpacity:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final getCurrentProgress()I
    .locals 2

    .line 29
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "Utils.getFactory().userSettingsController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getReadingRulerOpacity()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->convertOpacityValueToProgress(F)I

    move-result v0

    return v0
.end method

.method public final getMaxProgress()I
    .locals 2

    .line 33
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->maxOpacity:I

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;->minOpacity:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getOnProgressChangeHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel$getOnProgressChangeHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel$getOnProgressChangeHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/ReadingRulerOpacityModel;)V

    return-object v0
.end method
