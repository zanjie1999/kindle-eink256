.class public final Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "KindleToastSwipeDismissBehavior.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;,
        Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$SettleRunnable;,
        Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DRAG_DISMISS_THRESHOLD:F = 0.5f

.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private final dragCallback:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;

.field private ignoreEvents:Z

.field private onDismissListener:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;

.field private viewDragHelper:Landroidx/customview/widget/ViewDragHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 38
    new-instance v0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;-><init>(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->dragCallback:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;

    return-void
.end method

.method public static final synthetic access$getOnDismissListener$p(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;)Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->onDismissListener:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;

    return-object p0
.end method

.method public static final synthetic access$getViewDragHelper$p(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;)Landroidx/customview/widget/ViewDragHelper;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object p0
.end method

.method private final ensureViewDragHelper(Landroid/view/ViewGroup;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->dragCallback:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$dragCallback$1;

    invoke-static {p1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p3}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 142
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, p2, v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p2

    xor-int/2addr p2, v1

    iput-boolean p2, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->ignoreEvents:Z

    goto :goto_0

    .line 136
    :cond_0
    iget-boolean p2, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->ignoreEvents:Z

    if-eqz p2, :cond_1

    .line 137
    iput-boolean v2, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->ignoreEvents:Z

    return v2

    .line 146
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->ignoreEvents:Z

    if-eqz p2, :cond_2

    return v2

    .line 150
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    .line 151
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "event"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    .line 159
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final setOnDismissListener(Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior;->onDismissListener:Lcom/amazon/kindle/toast/snackbar/KindleToastSwipeDismissBehavior$OnDismissListener;

    return-void
.end method
