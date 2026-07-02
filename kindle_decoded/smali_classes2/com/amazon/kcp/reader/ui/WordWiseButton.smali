.class public Lcom/amazon/kcp/reader/ui/WordWiseButton;
.super Ljava/lang/Object;
.source "WordWiseButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# static fields
.field private static final MAX_DISPLAY_COUNT:I = 0x5

.field private static final WORDWISE_MOVED_MESSAGE_DISPLAY_COUNT:Ljava/lang/String; = "WordWise.DisplayCount"


# instance fields
.field protected resources:Landroid/content/res/Resources;

.field protected sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private wordWisePriority:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 30
    iput v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseButton;->wordWisePriority:I

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 36
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseButton;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private getDisplayCount()I
    .locals 3

    .line 113
    new-instance v0, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;)V

    const-string v1, "WordWise.DisplayCount"

    .line 114
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->getDisplayCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private incrementDisplayCount()V
    .locals 3

    .line 118
    new-instance v0, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;)V

    const-string v1, "WordWise.DisplayCount"

    .line 119
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->getDisplayCount(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/tutorial/UserDisplayCountManager;->setDisplayCount(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseButton;->incrementDisplayCount()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 51
    sget v0, Lcom/amazon/kindle/ww/R$id;->word_wise_menu_item_id:I

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseButton;->wordWisePriority:I

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseButton;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_moved_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseCapable(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 68
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1

    .line 71
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    .line 72
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenSidecar()Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openSidecarForCurrentBookAsync(Ljava/lang/Runnable;)V

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    goto :goto_0

    .line 81
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isCurrentBookSidecarLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    .line 86
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseButton;->getDisplayCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    .line 87
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    :cond_5
    return-object p1
.end method

.method public onClick(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
