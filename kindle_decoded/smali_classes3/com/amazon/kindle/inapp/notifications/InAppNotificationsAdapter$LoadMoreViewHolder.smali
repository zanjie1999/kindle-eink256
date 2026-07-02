.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "InAppNotificationsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoadMoreViewHolder"
.end annotation


# instance fields
.field private containerView:Landroid/widget/FrameLayout;

.field private errorContainerView:Landroid/widget/LinearLayout;

.field private errorTextView:Landroid/widget/TextView;

.field private refreshButton:Landroid/widget/ImageButton;

.field private final spinnerView:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

.field private viewLoaded:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 115
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_load_more_spinner:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->spinnerView:Landroid/widget/ProgressBar;

    .line 116
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_load_more_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->containerView:Landroid/widget/FrameLayout;

    .line 117
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_load_more_error_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->errorContainerView:Landroid/widget/LinearLayout;

    .line 118
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_load_more_error_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->errorTextView:Landroid/widget/TextView;

    .line 119
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_load_more_error_button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->refreshButton:Landroid/widget/ImageButton;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ProgressBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$setErrorView(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;Z)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->setErrorView(Z)V

    return-void
.end method

.method private final setErrorView(Z)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->errorContainerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->spinnerView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->errorTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getNetworkErrorMessage$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->refreshButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getNetworkErrorMessage$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->errorTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getLoadMoreErrorMessage$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->refreshButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getLoadMoreErrorMessage$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final setLoadingView()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->errorContainerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->spinnerView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final getRefreshButton()Landroid/widget/ImageButton;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->refreshButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final refreshView()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getNetworkUtil$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->setLoadingView()V

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 156
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 157
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder$refreshView$1;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getRequestQueue$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v3}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getNextPageToken$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder$refreshView$1;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/volley/RequestQueue;Ljava/lang/String;)V

    const-string v0, ""

    .line 165
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 167
    invoke-direct {p0, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->setErrorView(Z)V

    :goto_0
    return-void
.end method

.method public final setLoadMoreIfShown()V
    .locals 2

    .line 140
    iget-boolean v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->viewLoaded:Z

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 142
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 143
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->viewLoaded:Z

    .line 146
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportTrayReachedBottom()V

    .line 147
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->refreshView()V

    :cond_0
    return-void
.end method

.method public final setViewLoaded(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->viewLoaded:Z

    return-void
.end method
