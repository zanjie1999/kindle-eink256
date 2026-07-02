.class public final Lcom/audible/hushpuppy/view/leftnav/EmptyIconPanelComponent;
.super Ljava/lang/Object;
.source "EmptyIconPanelComponent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconType()Lcom/amazon/kindle/krx/ui/IconType;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kindle/krx/ui/IconType;->SMALL:Lcom/amazon/kindle/krx/ui/IconType;

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
