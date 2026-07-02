.class Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;
.super Ljava/lang/Object;
.source "KRXPanelProviderFactory.java"

# interfaces
.implements Lcom/amazon/kindle/panels/IPanelCustomItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KRXPanelCustomItem"
.end annotation


# instance fields
.field private panelLocation:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

.field private row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    .line 142
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->panelLocation:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;)Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    return-object p0
.end method


# virtual methods
.method public getCallback()Lcom/amazon/kindle/callback/ICallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem$1;-><init>(Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;)V

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRightIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    .line 185
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSelectedView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;->getSelectedView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    .line 194
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHighlighted()Z
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;->row:Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;->getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->HIGHLIGHTED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
