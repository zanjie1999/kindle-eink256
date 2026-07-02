.class public Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;
.super Ljava/lang/Object;
.source "LibraryDownloadActionButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final BUTTON_ID:Ljava/lang/String; = "15"

.field private static final LIBRARY_CONTEXT_ACTION_ITEM_PRIORITY_DOWNLOAD:I = 0x15e

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final eBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field protected final libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/util/List;Lcom/audible/hushpuppy/controller/LibraryDownloadController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/audible/hushpuppy/controller/LibraryDownloadController;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 77
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->context:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->eBooks:Ljava/util/List;

    .line 79
    iput-object p3, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    return-void
.end method


# virtual methods
.method public final getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    iget-object p2, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 117
    iget-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_download_headphone_dark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_download_headphone_light:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 124
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/application/AppType;->KFS:Lcom/amazon/kindle/krx/application/AppType;

    iget-object p2, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 125
    iget-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_download_headphone_dark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 127
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->library_download_headphone_light:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final getIconKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    const-string v0, "15"

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    const/16 v0, 0x15e

    return v0
.end method

.method public final getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->eBooks:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    .line 93
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne p1, v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->download_actionbar_audiobook_only:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->download_actionbar_ebook_and_audiobook:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 32
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->getVisibility(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public final getVisibility(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/ComponentStatus;"
        }
    .end annotation

    .line 103
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->onClick(Ljava/util/List;)V

    return-void
.end method

.method public final onClick(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object p1, p0, Lcom/audible/hushpuppy/view/library/LibraryDownloadActionButton;->libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->handleLibraryDownload()V

    return-void
.end method

.method public final showAsAction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
