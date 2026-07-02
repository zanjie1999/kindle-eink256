.class public final Lcom/amazon/kcp/library/ui/LibraryToast;
.super Ljava/lang/Object;
.source "LibraryToast.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/ui/LibraryToast;

.field private static dismissHandler:Lcom/amazon/kindle/toast/ToastDismissHandler;

.field private static final toastStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/ui/KindleToastState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryToast;

    invoke-direct {v0}, Lcom/amazon/kcp/library/ui/LibraryToast;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryToast;->INSTANCE:Lcom/amazon/kcp/library/ui/LibraryToast;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryToast;->toastStateMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDismissHandler$p(Lcom/amazon/kcp/library/ui/LibraryToast;)Lcom/amazon/kindle/toast/ToastDismissHandler;
    .locals 0

    .line 14
    sget-object p0, Lcom/amazon/kcp/library/ui/LibraryToast;->dismissHandler:Lcom/amazon/kindle/toast/ToastDismissHandler;

    return-object p0
.end method

.method public static final synthetic access$getToastStateMap$p(Lcom/amazon/kcp/library/ui/LibraryToast;)Ljava/util/Map;
    .locals 0

    .line 14
    sget-object p0, Lcom/amazon/kcp/library/ui/LibraryToast;->toastStateMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$setDismissHandler$p(Lcom/amazon/kcp/library/ui/LibraryToast;Lcom/amazon/kindle/toast/ToastDismissHandler;)V
    .locals 0

    .line 14
    sput-object p1, Lcom/amazon/kcp/library/ui/LibraryToast;->dismissHandler:Lcom/amazon/kindle/toast/ToastDismissHandler;

    return-void
.end method

.method public static synthetic show$default(Lcom/amazon/kcp/library/ui/LibraryToast;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    move-object p3, p2

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 31
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/ui/LibraryToast;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;)V

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryToast;->dismissHandler:Lcom/amazon/kindle/toast/ToastDismissHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/toast/ToastDismissHandler;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v0, "ARGUMENT_ACTIVITY_IDENTIFIER"

    .line 65
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "savedInstanceState?.getS\u2026ITY_IDENTIFIER) ?: return"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryToast;->toastStateMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/KindleToastState;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/KindleToastState;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/KindleToastState;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/KindleToastState;->getAccessibilityMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/KindleToastState;->getToastAction()Lcom/amazon/kindle/toast/KindleToastAction;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/amazon/kcp/library/ui/LibraryToast;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;)V

    :cond_1
    return-void
.end method

.method public final show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p1, Lcom/amazon/kcp/library/ui/IKindleToastActivity;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/ui/IKindleToastActivity;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ui/IKindleToastActivity;->activityIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 37
    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryToast;->toastStateMap:Ljava/util/Map;

    new-instance v2, Lcom/amazon/kcp/library/ui/KindleToastState;

    invoke-direct {v2, v7, p2, p3, p4}, Lcom/amazon/kcp/library/ui/KindleToastState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;)V

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-interface {v0}, Lcom/amazon/kcp/library/ui/IKindleToastActivity;->anchorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 40
    instance-of v0, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 41
    :cond_1
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v8, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;

    move-object v1, v8

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/library/ui/LibraryToast$show$1;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
