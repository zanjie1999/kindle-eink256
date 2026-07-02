.class public final Lcom/audible/hushpuppy/view/leftnav/EbookIconPanelComponent;
.super Ljava/lang/Object;
.source "EbookIconPanelComponent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;


# static fields
.field private static final ICON_TYPE:Lcom/amazon/kindle/krx/ui/IconType;


# instance fields
.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/krx/ui/IconType;->SMALL:Lcom/amazon/kindle/krx/ui/IconType;

    sput-object v0, Lcom/audible/hushpuppy/view/leftnav/EbookIconPanelComponent;->ICON_TYPE:Lcom/amazon/kindle/krx/ui/IconType;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/EbookIconPanelComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/EbookIconPanelComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/EbookIconPanelComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->action_books_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/EbookIconPanelComponent;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->action_books_grey:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconType()Lcom/amazon/kindle/krx/ui/IconType;
    .locals 1

    .line 50
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/EbookIconPanelComponent;->ICON_TYPE:Lcom/amazon/kindle/krx/ui/IconType;

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
