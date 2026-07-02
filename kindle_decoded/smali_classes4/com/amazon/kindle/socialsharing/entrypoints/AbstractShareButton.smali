.class public abstract Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;
.super Ljava/lang/Object;
.source "AbstractShareButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SHARE_BUTTON_KEY:Ljava/lang/String; = "SHARE_BUTTON_KEY"


# instance fields
.field private final buttonId:Ljava/lang/String;

.field private final buttonPriority:I

.field protected final entryPoint:Ljava/lang/String;

.field private final providerPriority:I

.field protected final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/util/ThemeProvider;IILjava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 64
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->entryPoint:Ljava/lang/String;

    .line 66
    iput p4, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->providerPriority:I

    .line 67
    iput p5, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->buttonPriority:I

    .line 68
    iput-object p6, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->buttonId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->providerPriority:I

    return p0
.end method

.method private reportClickMetric()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->buttonId:Ljava/lang/String;

    const-string v1, "672057"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecommendBook"

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->buttonId:Ljava/lang/String;

    const-string v1, "195804"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ShareProgress"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "Chrome"

    .line 272
    invoke-static {v1, v0}, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;

    return-object p0
.end method

.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 152
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object p2

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->entryPoint:Ljava/lang/String;

    const-string v1, "READER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    .line 155
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v1

    if-eqz v0, :cond_6

    .line 158
    sget-object v0, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    .line 159
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, v1, 0x1

    .line 162
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ButtonUtil;->getDarkShareIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    xor-int/lit8 p1, v1, 0x1

    .line 160
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ButtonUtil;->getLightShareIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v1, :cond_5

    .line 166
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    const/4 v0, 0x0

    if-eq p1, p2, :cond_4

    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p1, p2, :cond_3

    goto :goto_1

    .line 169
    :cond_3
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ButtonUtil;->getDarkShareIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 167
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ButtonUtil;->getLightShareIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 172
    :cond_5
    invoke-static {v2}, Lcom/amazon/kindle/socialsharing/util/ButtonUtil;->getDarkShareIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 176
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 177
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result p1

    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 178
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    .line 176
    invoke-static {p1, v0, p2}, Lcom/amazon/kindle/socialsharing/util/ButtonUtil;->getLibraryShareIcon(ZLcom/amazon/kindle/krx/theme/Theme;Lcom/amazon/kindle/krx/application/AppType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    const-string v0, "SHARE_BUTTON_KEY"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->buttonId:Ljava/lang/String;

    return-object v0
.end method

.method public getListAdapter()Lcom/amazon/kindle/krx/providers/ISortableProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;-><init>(Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;)V

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->buttonPriority:I

    return v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    .line 127
    iget p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->providerPriority:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method protected getSocialSharingActivityClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 277
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->INSTANCE:Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->getFactory()Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;->getSocialSharingActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    if-nez p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->share(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 107
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->reportClickMetric()V

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method protected abstract share(Lcom/amazon/kindle/krx/content/IBook;)V
.end method
