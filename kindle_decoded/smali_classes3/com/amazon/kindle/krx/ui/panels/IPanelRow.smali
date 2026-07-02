.class public interface abstract Lcom/amazon/kindle/krx/ui/panels/IPanelRow;
.super Ljava/lang/Object;
.source "IPanelRow.java"


# virtual methods
.method public abstract getChildRows()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
.end method

.method public abstract getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;
.end method

.method public abstract getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
.end method

.method public abstract getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
.end method

.method public abstract onClick()V
.end method
