.class public Lcom/amazon/kindle/krx/startup/StartupHelper;
.super Ljava/lang/Object;
.source "StartupHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.krx.startup.StartupHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onStartupEvent(Lcom/amazon/kindle/krx/startup/StartupType;)Z
    .locals 2

    .line 26
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLibraryMode()Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getStartupProviderRegistry(Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;)Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 34
    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/startup/IStartupListener;

    .line 36
    invoke-interface {v0}, Lcom/amazon/kindle/krx/startup/IStartupListener;->onStartupEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
