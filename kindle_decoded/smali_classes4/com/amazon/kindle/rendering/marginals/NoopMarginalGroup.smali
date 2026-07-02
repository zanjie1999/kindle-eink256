.class public Lcom/amazon/kindle/rendering/marginals/NoopMarginalGroup;
.super Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;
.source "MarginalGroupImplementations.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public createMarginals(Lcom/amazon/krf/platform/PositionRange;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PositionRange;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/Marginal;",
            ">;"
        }
    .end annotation

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public destroyMarginals()V
    .locals 0

    return-void
.end method

.method public setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    const-string v0, "leftMargin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    const-string v0, "rightMargin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
