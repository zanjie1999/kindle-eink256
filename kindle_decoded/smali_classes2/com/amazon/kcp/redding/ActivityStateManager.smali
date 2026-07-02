.class public Lcom/amazon/kcp/redding/ActivityStateManager;
.super Ljava/lang/Object;
.source "ActivityStateManager.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private final activity:Landroidx/fragment/app/FragmentActivity;

.field private boundBookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

.field private isActivityBoundToBook:Z

.field private isActivityOnStartState:Z

.field private final lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    const-string v0, "activity.lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 42
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final isActivityBoundToBook()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->isActivityBoundToBook:Z

    return v0
.end method

.method public final isActivityForegrounded()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isActivityOnStartState()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->isActivityOnStartState:Z

    return v0
.end method

.method public final isActivityVisible()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ActivityStateManager;->isActivityForegrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isBoundToCurrentBook()Z
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->boundBookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final markAsBoundToBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V
    .locals 2

    const-string v0, "bookInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->isActivityBoundToBook:Z

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->boundBookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    .line 53
    invoke-static {}, Lcom/amazon/kcp/redding/ActivityStateManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/kcp/redding/ActivityStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bound to book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final markAsUnboundFromBook()V
    .locals 2

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->isActivityBoundToBook:Z

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->boundBookInfo:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    .line 62
    invoke-static {}, Lcom/amazon/kcp/redding/ActivityStateManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/kcp/redding/ActivityStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unbound from book"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->isActivityOnStartState:Z

    return-void
.end method

.method public final onStart()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/ActivityStateManager;->isActivityOnStartState:Z

    return-void
.end method
