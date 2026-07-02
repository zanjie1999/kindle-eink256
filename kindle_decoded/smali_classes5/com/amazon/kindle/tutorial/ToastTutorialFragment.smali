.class public final Lcom/amazon/kindle/tutorial/ToastTutorialFragment;
.super Landroidx/fragment/app/Fragment;
.source "ToastTutorialFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/ToastTutorialFragment$Factory;
    }
.end annotation


# static fields
.field public static final Factory:Lcom/amazon/kindle/tutorial/ToastTutorialFragment$Factory;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private dismissHandler:Lcom/amazon/kindle/toast/ToastDismissHandler;

.field private final tutorialUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->Factory:Lcom/amazon/kindle/tutorial/ToastTutorialFragment$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->tutorialUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$removeTutorial(Lcom/amazon/kindle/tutorial/ToastTutorialFragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->removeTutorial()V

    return-void
.end method

.method private final removeTutorial()V
    .locals 3

    .line 117
    invoke-static {}, Lcom/amazon/kindle/tutorial/ToastTutorialFragmentKt;->access$getTAG$p()Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    sget v1, Lcom/amazon/kindle/krl/R$id;->toast_tutorial_shell:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const-string v1, "it"

    .line 121
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 123
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->unlockTutorialIfNeeded()V

    return-void
.end method

.method private final unlockTutorialIfNeeded()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->tutorialUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final TutorialDismissEventListener(Lcom/amazon/kindle/tutorial/TutorialDismissEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/amazon/kindle/tutorial/ToastTutorialFragmentKt;->access$getTAG$p()Ljava/lang/String;

    .line 112
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->dismissHandler:Lcom/amazon/kindle/toast/ToastDismissHandler;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/toast/ToastDismissHandler;->dismiss()V

    .line 113
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->unlockTutorialIfNeeded()V

    return-void

    :cond_0
    const-string p1, "dismissHandler"

    .line 112
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 50
    invoke-static {}, Lcom/amazon/kindle/tutorial/ToastTutorialFragmentKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot create toast view, container is null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->removeTutorial()V

    return-object v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v2, "ui"

    .line 56
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/amazon/kindle/tutorial/model/ToastUI;

    .line 65
    new-instance v2, Lcom/amazon/kindle/toast/KindleToast$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "requireActivity()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, p2}, Lcom/amazon/kindle/toast/KindleToast$Builder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 66
    iget-object v3, v1, Lcom/amazon/kindle/tutorial/model/ToastUI;->message:Ljava/lang/String;

    const-string/jumbo v4, "ui.message"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/toast/KindleToast$Builder;->setMessage(Ljava/lang/String;)Lcom/amazon/kindle/toast/KindleToast$Builder;

    const/4 v3, 0x1

    .line 67
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/toast/KindleToast$Builder;->setShouldUseSafeInsets(Z)Lcom/amazon/kindle/toast/KindleToast$Builder;

    .line 69
    iget-object v1, v1, Lcom/amazon/kindle/tutorial/model/ToastUI;->actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    if-eqz v1, :cond_2

    .line 71
    new-instance v3, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$onCreateView$1;

    invoke-direct {v3, p0, v1}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$onCreateView$1;-><init>(Lcom/amazon/kindle/tutorial/ToastTutorialFragment;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/toast/KindleToast$Builder;->setViewAction(Lcom/amazon/kindle/toast/KindleToastAction;)Lcom/amazon/kindle/toast/KindleToast$Builder;

    .line 86
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/kindle/toast/KindleToast$Builder;->build()Lcom/amazon/kindle/toast/KindleToast;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/toast/KindleToast;->show()Lcom/amazon/kindle/toast/ToastDismissHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->dismissHandler:Lcom/amazon/kindle/toast/ToastDismissHandler;

    if-eqz v1, :cond_3

    .line 88
    new-instance v0, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$onCreateView$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment$onCreateView$2;-><init>(Lcom/amazon/kindle/tutorial/ToastTutorialFragment;)V

    invoke-interface {v1, v0}, Lcom/amazon/kindle/toast/ToastDismissHandler;->setDismissListener(Lkotlin/jvm/functions/Function0;)V

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "dismissHandler"

    .line 88
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.amazon.kindle.tutorial.model.ToastUI"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_5
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/tutorial/ToastTutorialFragmentKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot create toast view, required arguments are null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->removeTutorial()V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 106
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ToastTutorialFragment;->unlockTutorialIfNeeded()V

    :cond_0
    return-void
.end method
