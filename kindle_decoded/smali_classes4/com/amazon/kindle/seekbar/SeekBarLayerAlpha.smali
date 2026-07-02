.class public Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;
.super Ljava/lang/Object;
.source "SeekBarLayerAlpha.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;


# instance fields
.field private alpha:I

.field private final emptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->emptyList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V
    .locals 0

    const-string p4, "canvas"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "colorMode"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "posToX"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->alpha:I

    return v0
.end method

.method public getCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->emptyList:Ljava/util/List;

    return-object v0
.end method

.method public onSnapStart(I)V
    .locals 0

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/amazon/kindle/seekbar/SeekBarLayerAlpha;->alpha:I

    return-void
.end method
