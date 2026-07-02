.class final Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onCountUpdate$1;
.super Ljava/lang/Object;
.source "AbstractRecyclerAdapterHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->onCountUpdate(I)V
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

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onCountUpdate$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onCountUpdate$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getCountListeners$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;

    .line 96
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onCountUpdate$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getLibraryFragmentHandler$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v3

    :goto_1
    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onCountUpdate$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v4}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getLibraryFragmentHandler$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v3

    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onCountUpdate$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-virtual {v4}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getTotalItemCount()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;->onItemCountChanged(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/library/LibraryGroupType;I)V

    goto :goto_0

    :cond_2
    return-void
.end method
