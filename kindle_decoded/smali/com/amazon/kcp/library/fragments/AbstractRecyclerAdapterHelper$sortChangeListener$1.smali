.class public final Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$sortChangeListener$1;
.super Ljava/lang/Object;
.source "AbstractRecyclerAdapterHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/SortChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$sortChangeListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSortChanged(Lcom/amazon/kcp/library/LibrarySortType;)V
    .locals 2

    const-string/jumbo v0, "sortType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$sortChangeListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->refreshAccessDates()V

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$sortChangeListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getModelContent$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getParentGroup()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelSortingForSortType(Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->setModelSorting(Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-void
.end method
