.class public final Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;
.super Ljava/lang/Object;
.source "PanelRowBuilder.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SimplePanelRow"
.end annotation


# instance fields
.field private childRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation
.end field

.field private iconComponent:Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

.field private listener:Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;

.field private status:Lcom/amazon/kindle/krx/ui/ComponentStatus;

.field private textComponent:Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

.field private theme:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;)V
    .locals 1

    .line 109
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->this$0:Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->textComponent:Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    .line 112
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->iconComponent:Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    .line 113
    sget-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->DEFAULT:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->theme:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    .line 114
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->status:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    .line 116
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->childRows:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Lcom/amazon/kindle/krx/ui/panels/PanelTheme;)Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->theme:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    return-object p1
.end method

.method static synthetic access$102(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;)Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->textComponent:Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    return-object p1
.end method

.method static synthetic access$202(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;)Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->iconComponent:Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;)Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->listener:Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;

    return-object p1
.end method

.method static synthetic access$402(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Lcom/amazon/kindle/krx/ui/ComponentStatus;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->status:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;)Ljava/util/List;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->childRows:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->childRows:Ljava/util/List;

    return-object p1
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

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->childRows:Ljava/util/List;

    return-object v0
.end method

.method public getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->iconComponent:Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    return-object v0
.end method

.method public getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->status:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0
.end method

.method public getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->theme:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    return-object v0
.end method

.method public getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->textComponent:Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    return-object v0
.end method

.method public onClick()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->textComponent:Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelComponent;->onClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->listener:Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;

    if-eqz v0, :cond_1

    .line 165
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;->onClick()Z

    :cond_1
    return-void
.end method

.method public setStatus(Lcom/amazon/kindle/krx/ui/ComponentStatus;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;->status:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-void
.end method
