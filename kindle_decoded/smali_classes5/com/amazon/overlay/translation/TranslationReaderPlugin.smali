.class public Lcom/amazon/overlay/translation/TranslationReaderPlugin;
.super Ljava/lang/Object;
.source "TranslationReaderPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_before:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    minApi = 0xe
    name = "OverlayAndroidTranslator"
.end annotation


# static fields
.field private static readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# instance fields
.field private m_initialized:Z

.field private final m_readerLifecycleListener:Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin;->m_initialized:Z

    .line 33
    new-instance v0, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;

    invoke-direct {v0}, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;-><init>()V

    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin;->m_readerLifecycleListener:Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/overlay/translation/TranslationReaderPlugin;)Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin;->m_readerLifecycleListener:Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;

    return-object p0
.end method

.method public static hasInfoCard(Ljava/lang/String;)Z
    .locals 2

    .line 113
    sget-object v0, Lcom/amazon/overlay/translation/TranslationReaderPlugin;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static setReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 129
    sput-object p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin;->m_initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-static {p1}, Lcom/amazon/overlay/translation/TranslationReaderPlugin;->setReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 51
    invoke-static {p1}, Lcom/amazon/kcp/translation/Logger;->init(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 52
    invoke-static {p1}, Lcom/amazon/kcp/translation/TMetric;->init(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 57
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin;->m_readerLifecycleListener:Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/overlay/translation/TranslationWidgetItemProvider;

    invoke-direct {v1}, Lcom/amazon/overlay/translation/TranslationWidgetItemProvider;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 62
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/overlay/translation/TranslationReaderPlugin$1;-><init>(Lcom/amazon/overlay/translation/TranslationReaderPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerInfoCardViewProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/amazon/overlay/translation/TranslationReaderPlugin;->m_initialized:Z

    return-void
.end method
