.class final Lcom/amazon/kindle/rendering/marginals/RealNativeObjectFactory;
.super Ljava/lang/Object;
.source "MarginalGroupImplementations.kt"

# interfaces
.implements Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMarginal(Lcom/amazon/krf/platform/Marginal$MarginalType;Lcom/amazon/krf/platform/Marginal$LayoutPosition;Lcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)Lcom/amazon/krf/platform/Marginal;
    .locals 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutPosition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    new-instance v0, Lcom/amazon/krf/platform/Marginal;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazon/krf/platform/Marginal;-><init>(Lcom/amazon/krf/platform/Marginal$MarginalType;Lcom/amazon/krf/platform/Marginal$LayoutPosition;Lcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)V

    return-object v0
.end method

.method public createViewOptions()Lcom/amazon/krf/platform/ViewSettings;
    .locals 1

    .line 379
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {v0}, Lcom/amazon/krf/platform/ViewSettings;-><init>()V

    return-object v0
.end method
