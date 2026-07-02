.class public interface abstract Lcom/amazon/kindle/rendering/marginals/MarginalGroup;
.super Ljava/lang/Object;
.source "MarginalGroup.kt"


# virtual methods
.method public abstract createMarginals(Lcom/amazon/krf/platform/PositionRange;)Ljava/util/List;
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
.end method

.method public abstract destroyMarginals()V
.end method

.method public abstract setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;I)V
.end method

.method public abstract setFont(Ljava/lang/String;)V
.end method

.method public abstract setFontSize(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
.end method

.method public abstract setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
.end method

.method public abstract setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
.end method

.method public abstract setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
.end method

.method public abstract setVisible(Z)V
.end method
