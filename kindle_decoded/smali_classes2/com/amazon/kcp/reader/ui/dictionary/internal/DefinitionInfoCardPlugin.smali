.class public Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;
.super Ljava/lang/Object;
.source "DefinitionInfoCardPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "Definition Card Plugin"
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->content:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;
    }
.end annotation


# static fields
.field private static final INFO_CARD_DICTIONARY_TIMER:Ljava/lang/String; = "InfoCardDictionaryTimer"


# instance fields
.field private provider:Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;)Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;->provider:Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;

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

    .line 30
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;->provider:Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;

    .line 31
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;->provider:Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerInfoCardViewProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 33
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$1;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    return-void
.end method
