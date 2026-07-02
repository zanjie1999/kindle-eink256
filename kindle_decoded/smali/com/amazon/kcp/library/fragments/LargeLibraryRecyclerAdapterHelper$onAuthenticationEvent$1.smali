.class final Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;
.super Ljava/lang/Object;
.source "LargeLibraryRecyclerAdapterHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->$event:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->$event:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->removePresentationListener(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->access$removeGroupListeners(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->access$removeCountListeners(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->setAccountId(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getAdapterUpdater()Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->reset()V

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->access$getGroupValueCache$p(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)Lcom/amazon/kcp/library/fragments/GroupValueCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/GroupValueCache;->reset()V

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->access$getCountValueCache$p(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)Lcom/amazon/kcp/library/fragments/cache/CountValueCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;->reset()V

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->setTotalItemCount(I)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->removePresentationListener(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    const-string v2, "Utils.getFactory().authenticationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    const-string v2, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->setAccountId(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v5

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v6

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelSorting()Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v7

    move-object v2, v3

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->registerPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    :goto_0
    return-void
.end method
