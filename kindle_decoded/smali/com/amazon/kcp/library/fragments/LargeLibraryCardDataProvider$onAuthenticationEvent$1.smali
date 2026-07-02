.class final Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;
.super Ljava/lang/Object;
.source "LargeLibraryCardDataProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->$event:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->$event:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getAccountId$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->removePresentationListener(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getAccountId$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$setAccountId$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->itemCount()I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getAdapterUpdater$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->reset()V

    .line 117
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getAdapter$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getItemsCount$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getAccountId$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getAccountId$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->removePresentationListener(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$getAccountId$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->$event:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event.user"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$setAccountId$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->access$registerPresentationAndCountListeners(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)V

    :goto_0
    return-void
.end method
