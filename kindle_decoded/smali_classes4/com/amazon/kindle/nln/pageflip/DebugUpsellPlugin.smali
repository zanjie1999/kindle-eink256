.class public Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;
.super Ljava/lang/Object;
.source "DebugUpsellPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->debug:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0x15
    name = "Upsell Debug Plugin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugSeekerDecorationProvider;,
        Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugUpsellView;,
        Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$DebugActionBarDecorationProvider;
    }
.end annotation


# instance fields
.field private m_kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private volatile m_shouldShowUpsell:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->m_shouldShowUpsell:Z

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->m_shouldShowUpsell:Z

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->m_shouldShowUpsell:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->m_kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;->m_kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 39
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$1;-><init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 57
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin$2;-><init>(Lcom/amazon/kindle/nln/pageflip/DebugUpsellPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerLocationSeekerDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    return-void
.end method
