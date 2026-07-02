.class public Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory;
.super Ljava/lang/Object;
.source "PanelComponentFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIconComponent(Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/krx/ui/IconType;Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;)Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$1;-><init>(Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/krx/ui/IconType;)V

    return-object v0
.end method

.method public static createTextComponent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;)Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 1

    .line 75
    new-instance v0, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory$2;-><init>(Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
