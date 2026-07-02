.class final Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$filterStateListener$1;
.super Ljava/lang/Object;
.source "AbstractRecyclerAdapterHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$filterStateListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLibraryFilterStateChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$filterStateListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->refreshAccessDates()V

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$filterStateListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getLibraryFilter$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v3, "Utils.getFactory()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    const-string v3, "Utils.getFactory().authenticationManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v2

    const-string v3, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->setFiltersOnOptionsOwner(Lcom/amazon/kcp/library/fragments/LibraryModelOptionsOwner;Lcom/amazon/kcp/library/ILibraryFilter;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
