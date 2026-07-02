.class final Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onLibraryGroupTypeChangedEvent$1;
.super Ljava/lang/Object;
.source "AbstractRecyclerAdapterHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->onLibraryGroupTypeChangedEvent(Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onLibraryGroupTypeChangedEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onLibraryGroupTypeChangedEvent$1;->$event:Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onLibraryGroupTypeChangedEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->refreshAccessDates()V

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onLibraryGroupTypeChangedEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getModelFilter$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onLibraryGroupTypeChangedEvent$1;->$event:Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;

    invoke-virtual {v3}, Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;->getEventSource()Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;

    move-result-object v3

    const-string v4, "event.eventSource"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildLocationSet(Ljava/util/Set;Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithLocationSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v1

    const-string/jumbo v2, "modelFilter.modelFilterW\u2026t.eventSource.groupType))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onLibraryGroupTypeChangedEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getModelContent$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->setModelFilterAndContent(Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelContent;)V

    return-void
.end method
