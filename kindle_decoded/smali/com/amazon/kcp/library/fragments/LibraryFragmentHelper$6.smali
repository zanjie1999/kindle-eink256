.class Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$6;
.super Ljava/lang/Object;
.source "LibraryFragmentHelper.java"

# interfaces
.implements Lcom/amazon/kcp/library/PausableListener$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$6;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRefresh(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1

    .line 363
    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryCursorFactory;->refreshItem(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$6;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$600(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;Lcom/amazon/kindle/event/EventType;)V

    :cond_0
    return-void
.end method

.method public onRefresh(Lcom/amazon/kindle/event/EventType;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$6;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->resetLibraryCursorCache()V

    .line 355
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$6;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$600(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;Lcom/amazon/kindle/event/EventType;)V

    .line 356
    invoke-static {}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$700()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/event/LibraryRefreshEvent;

    invoke-direct {v0}, Lcom/amazon/kindle/event/LibraryRefreshEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
