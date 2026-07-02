.class final Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$1;
.super Ljava/lang/Object;
.source "PanelComponentFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory;->createIconComponent(Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/krx/ui/IconType;Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;)Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$icon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$listener:Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;

.field final synthetic val$type:Lcom/amazon/kindle/krx/ui/IconType;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/krx/ui/IconType;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$1;->val$listener:Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;

    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$1;->val$icon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$1;->val$type:Lcom/amazon/kindle/krx/ui/IconType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$1;->val$icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconType()Lcom/amazon/kindle/krx/ui/IconType;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$1;->val$type:Lcom/amazon/kindle/krx/ui/IconType;

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$1;->val$listener:Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;->onClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
