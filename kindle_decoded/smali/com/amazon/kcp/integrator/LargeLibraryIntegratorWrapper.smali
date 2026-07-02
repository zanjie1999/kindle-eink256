.class public Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;
.super Ljava/lang/Object;
.source "LargeLibraryIntegratorWrapper.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/LargeLibraryIntegrator;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final wrappedIntegrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wrappedIntegrator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->wrappedIntegrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    return-void
.end method

.method public static final synthetic access$getWrappedIntegrator$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;)Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->wrappedIntegrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    return-object p0
.end method


# virtual methods
.method public beginBatchRequestForAccount(Ljava/lang/String;)V
    .locals 2

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$beginBatchRequestForAccount$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$beginBatchRequestForAccount$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public endBatchRequestForAccount(Ljava/lang/String;)V
    .locals 2

    const-string v0, "accountID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$endBatchRequestForAccount$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$endBatchRequestForAccount$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleAudiblePluginInitialized()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleAudiblePluginInitialized$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleAudiblePluginInitialized$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleBooksAccessDateDidChange(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksAccessDateDidChange$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksAccessDateDidChange$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleBooksAdded(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksAdded$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksAdded$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleBooksAddedToCollection(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksAddedToCollection$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksAddedToCollection$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleBooksAddedToSeries(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksAddedToSeries$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksAddedToSeries$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleBooksAudibleCompanionDidChange(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksAudibleCompanionDidChange$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksAudibleCompanionDidChange$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleBooksDownloadStateDidChange(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksDownloadStateDidChange$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksDownloadStateDidChange$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleBooksOrderingChangedInCollection(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksOrderingChangedInCollection$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksOrderingChangedInCollection$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleBooksReadingStateDidChange(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksReadingStateDidChange$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksReadingStateDidChange$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleBooksRemoved(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksRemoved$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksRemoved$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleBooksRemovedFromCollection(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksRemovedFromCollection$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksRemovedFromCollection$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleBooksRemovedFromSeries(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksRemovedFromSeries$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleBooksRemovedFromSeries$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleCollectionAdded(Ljava/lang/String;)V
    .locals 2

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCollectionAdded$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCollectionAdded$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleCollectionNameChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCollectionNameChanged$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCollectionNameChanged$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleCollectionRemoved(Ljava/lang/String;)V
    .locals 2

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCollectionRemoved$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCollectionRemoved$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleCurrentAccountChange(Ljava/lang/String;Z)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCurrentAccountChange$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCurrentAccountChange$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleIsInCarouselChanged(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleIsInCarouselChanged$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleIsInCarouselChanged$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleNarrativesAdded(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "narrativeIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleNarrativesAdded$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleNarrativesAdded$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleNarrativesRemoved(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "narrativeIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleNarrativesRemoved$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleNarrativesRemoved$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleSeriesAdded(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "seriesIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleSeriesAdded$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleSeriesAdded$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleSeriesAddedToNarratives(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "seriesIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleSeriesAddedToNarratives$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleSeriesAddedToNarratives$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleSeriesRemoved(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "seriesIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleSeriesRemoved$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleSeriesRemoved$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isFirstBatchFlushed()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->wrappedIntegrator:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->isFirstBatchFlushed()Z

    move-result v0

    return v0
.end method

.method public requestCollectionSet(Ljava/lang/String;)V
    .locals 2

    const-string v0, "accountID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestCollectionSet$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestCollectionSet$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestItemDetail(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "itemSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemDetail$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemDetail$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestItemDictionaryForAudibleCompanion(Ljava/lang/String;)V
    .locals 2

    const-string v0, "accountID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemDictionaryForAudibleCompanion$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemDictionaryForAudibleCompanion$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestItemDictionaryForSortType(ILjava/lang/String;)V
    .locals 2

    const-string v0, "accountID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemDictionaryForSortType$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemDictionaryForSortType$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestItemSetForAccountType(ILjava/lang/String;)V
    .locals 2

    const-string v0, "accountID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForAccountType$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForAccountType$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestItemSetForCarousel(Ljava/lang/String;)V
    .locals 2

    const-string v0, "accountID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForCarousel$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForCarousel$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestItemSetForItemCategory(ILjava/lang/String;)V
    .locals 2

    const-string v0, "accountID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForItemCategory$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForItemCategory$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestItemSetForOwnership(ILjava/lang/String;)V
    .locals 2

    const-string v0, "accountID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForOwnership$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForOwnership$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestItemSetForReadingProgress(ILjava/lang/String;)V
    .locals 2

    const-string v0, "accountID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForReadingProgress$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForReadingProgress$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestItemSetForSampleMembership(Ljava/lang/String;)V
    .locals 2

    const-string v0, "accountID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForSampleMembership$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemSetForSampleMembership$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestItemToItemDictionary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "leafName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemToItemDictionary$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestItemToItemDictionary$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setObserver(Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;)V
    .locals 2

    const-string/jumbo v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$setObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$setObserver$1;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
