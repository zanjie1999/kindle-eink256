.class public Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;
.super Ljava/lang/Object;
.source "PanelRowBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;
    }
.end annotation


# instance fields
.field private row:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;-><init>(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->row:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    return-void
.end method


# virtual methods
.method public addChildRow(Lcom/amazon/kindle/krx/ui/panels/IPanelRow;)Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;
    .locals 2

    if-eqz p1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->row:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->access$500(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->row:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->access$502(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Ljava/util/List;)Ljava/util/List;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->row:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->access$500(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public build()Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->row:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    return-object v0
.end method

.method public setIconComponent(Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;)Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->row:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    invoke-static {v0, p1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->access$202(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;)Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    return-object p0
.end method

.method public setOnClick(Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;)Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->row:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    invoke-static {v0, p1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->access$302(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;)Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;

    return-object p0
.end method

.method public setStatus(Lcom/amazon/kindle/krx/ui/ComponentStatus;)Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->row:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    invoke-static {v0, p1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->access$402(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Lcom/amazon/kindle/krx/ui/ComponentStatus;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p0
.end method

.method public setTextComponent(Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;)Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->row:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    invoke-static {v0, p1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->access$102(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;)Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    return-object p0
.end method

.method public setTheme(Lcom/amazon/kindle/krx/ui/panels/PanelTheme;)Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->row:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    invoke-static {v0, p1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->access$002(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Lcom/amazon/kindle/krx/ui/panels/PanelTheme;)Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    return-object p0
.end method
