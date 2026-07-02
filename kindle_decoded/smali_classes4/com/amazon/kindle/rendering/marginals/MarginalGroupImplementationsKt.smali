.class public final Lcom/amazon/kindle/rendering/marginals/MarginalGroupImplementationsKt;
.super Ljava/lang/Object;
.source "MarginalGroupImplementations.kt"


# static fields
.field private static final ZERO_VALUE:Lcom/amazon/krf/platform/ViewSettings$MeasureValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(F)V

    sput-object v0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupImplementationsKt;->ZERO_VALUE:Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    return-void
.end method

.method public static final getZERO_VALUE()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupImplementationsKt;->ZERO_VALUE:Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    return-object v0
.end method
