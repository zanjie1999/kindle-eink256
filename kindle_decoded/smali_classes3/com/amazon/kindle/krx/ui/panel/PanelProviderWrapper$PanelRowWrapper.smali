.class final Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper$PanelRowWrapper;
.super Ljava/lang/Object;
.source "PanelProviderWrapper.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelRowWrapper"
.end annotation


# instance fields
.field private final row:Lcom/amazon/kindle/krx/ui/panels/IPanelRow;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/panels/IPanelRow;)V
    .locals 1

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper$PanelRowWrapper;->row:Lcom/amazon/kindle/krx/ui/panels/IPanelRow;

    return-void
.end method


# virtual methods
.method public getChildRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper$PanelRowWrapper;->row:Lcom/amazon/kindle/krx/ui/panels/IPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    move-result-object v0

    return-object v0
.end method

.method public getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper$PanelRowWrapper;->row:Lcom/amazon/kindle/krx/ui/panels/IPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object v0

    return-object v0
.end method

.method public getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper$PanelRowWrapper;->row:Lcom/amazon/kindle/krx/ui/panels/IPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper$PanelRowWrapper;->row:Lcom/amazon/kindle/krx/ui/panels/IPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper$PanelRowWrapper;->row:Lcom/amazon/kindle/krx/ui/panels/IPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->onClick()V

    return-void
.end method
