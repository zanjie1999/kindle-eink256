.class public Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;
.super Lcom/amazon/kindle/krx/ui/InfoCardProvider;
.source "WordWiseInfoCardProvider.java"


# static fields
.field private static PRIORITY_WITHOUT_WORD_WISE:I = 0x0

.field private static PRIORITY_WITH_WORD_WISE:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cachedCard:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;",
            ">;"
        }
    .end annotation
.end field

.field private card:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->cachedCard:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 33
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->TAG:Ljava/lang/String;

    const-string v2, "Constructor called"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private generateCardView(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->cachedCard:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    sget v1, Lcom/amazon/kindle/ww/R$layout;->info_card_wordwise_v2:I

    invoke-static {v0, v1}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;->inflateCardView(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    :cond_1
    if-eqz v0, :cond_3

    .line 99
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$bool;->enable_cache_info_card_view:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->cachedCard:Ljava/lang/ref/SoftReference;

    .line 102
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->setSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 103
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->setSelectionModel(Lcom/amazon/kindle/krx/content/IContentSelection;)V

    .line 104
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->updateSelection()V

    :cond_3
    return-object v0
.end method

.method private isWordWiseAvailable()Z
    .locals 1

    .line 84
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isCurrentBookSidecarLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->card:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->card:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    .line 51
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->isWordWiseAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->generateCardView(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hasDefinition()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v1, v0

    :cond_2
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->isWordWiseAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget p1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->PRIORITY_WITHOUT_WORD_WISE:I

    return p1

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->generateCardView(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->card:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->hasDefinition()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->PRIORITY_WITH_WORD_WISE:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->PRIORITY_WITHOUT_WORD_WISE:I

    :goto_0
    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method
