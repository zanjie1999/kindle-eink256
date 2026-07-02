.class final Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$2;
.super Ljava/lang/Object;
.source "PanelComponentFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory;->createTextComponent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;)Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;

.field final synthetic val$secondaryText:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$2;->val$listener:Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;

    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$2;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$2;->val$secondaryText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecondaryText()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$2;->val$secondaryText:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$2;->val$text:Ljava/lang/String;

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$2;->val$listener:Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;->onClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
