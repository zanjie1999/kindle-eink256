.class final Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$registerItemCountChangedListener$1;
.super Ljava/lang/Object;
.source "AbstractRecyclerAdapterHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->registerItemCountChangedListener(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $listener:Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$registerItemCountChangedListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$registerItemCountChangedListener$1;->$listener:Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$registerItemCountChangedListener$1;->$listener:Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$registerItemCountChangedListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getLibraryFragmentHandler$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$registerItemCountChangedListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-static {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->access$getLibraryFragmentHandler$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$registerItemCountChangedListener$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getTotalItemCount()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;->onItemCountChanged(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/library/LibraryGroupType;I)V

    return-void
.end method
