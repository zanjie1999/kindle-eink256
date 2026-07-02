.class Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow$3;
.super Ljava/lang/Object;
.source "SyncItemPanelProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;->getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 153
    sget v1, Lcom/amazon/kindle/krl/R$attr;->readerNavPanelSyncIcon:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 154
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 159
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconType()Lcom/amazon/kindle/krx/ui/IconType;
    .locals 1

    .line 168
    sget-object v0, Lcom/amazon/kindle/krx/ui/IconType;->SMALL:Lcom/amazon/kindle/krx/ui/IconType;

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
