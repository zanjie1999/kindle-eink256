.class public final Lcom/amazon/kcp/library/LargeLibraryCounter;
.super Lcom/amazon/kcp/library/AbstractUserItemsCounter;
.source "LargeLibraryCounter.kt"


# instance fields
.field private accountId:Ljava/lang/String;

.field private final countListener:Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

.field private final modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

.field private final modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/ModelContent;",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "modelContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelFilter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/LargeLibraryCounter;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    iput-object p3, p0, Lcom/amazon/kcp/library/LargeLibraryCounter;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    .line 17
    new-instance p1, Lcom/amazon/kcp/library/LargeLibraryCounter$countListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/LargeLibraryCounter$countListener$1;-><init>(Lcom/amazon/kcp/library/LargeLibraryCounter;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/LargeLibraryCounter;->countListener:Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method protected getUserItemsCountFromDB()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public registerHandler()V
    .locals 8

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LargeLibraryCounter;->unregisterHandler()V

    .line 31
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    const-string v1, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/kcp/library/LargeLibraryCounter;->accountId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 33
    invoke-static {}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->largeLibraryRepository()Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/LargeLibraryCounter;->countListener:Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    .line 35
    iget-object v5, p0, Lcom/amazon/kcp/library/LargeLibraryCounter;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    .line 36
    iget-object v6, p0, Lcom/amazon/kcp/library/LargeLibraryCounter;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    .line 37
    new-instance v7, Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-direct {v7}, Lcom/amazon/kindle/observablemodel/ModelSorting;-><init>()V

    .line 33
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->registerContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    :cond_0
    return-void
.end method

.method public unregisterHandler()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/library/LargeLibraryCounter;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->largeLibraryRepository()Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/LargeLibraryCounter;->countListener:Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
