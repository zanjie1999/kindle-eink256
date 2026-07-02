.class final Lcom/amazon/kindle/nln/NlnTransitionManager$1;
.super Ljava/lang/Object;
.source "NlnTransitionManager.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/NlnTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8

    neg-float p1, p1

    .line 57
    sget v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->lutzCoefficient:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v0

    sget p1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->lutzCoefficient:F

    neg-float p1, p1

    float-to-double v6, p1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v4, v2

    div-double/2addr v0, v4

    double-to-float p1, v0

    return p1
.end method
