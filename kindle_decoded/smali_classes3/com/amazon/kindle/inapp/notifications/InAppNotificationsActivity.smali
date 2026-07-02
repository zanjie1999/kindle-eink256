.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;
.super Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;
.source "InAppNotificationsActivity.kt"

# interfaces
.implements Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppNotificationsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppNotificationsActivity.kt\ncom/amazon/kindle/inapp/notifications/InAppNotificationsActivity\n*L\n1#1,393:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final accessibilityUtil:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

.field private actionbar:Landroidx/appcompat/widget/Toolbar;

.field private actionbarContainer:Landroid/widget/LinearLayout;

.field private adapter:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

.field private final emptyFeedMessage$delegate:Lkotlin/Lazy;

.field private emptyRefreshButton:Landroid/widget/ImageView;

.field private emptyText:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private isInMultiDelete:Z

.field private loadingView:Landroid/widget/ProgressBar;

.field private final networkErrorMessage$delegate:Lkotlin/Lazy;

.field private final networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private requestQueue:Lcom/android/volley/RequestQueue;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private selectedCountTextView:Lcom/amazon/kindle/inapp/notifications/theme/ThemeTextView;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarContainer:Landroid/widget/LinearLayout;

.field private trashButtonView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "emptyFeedMessage"

    const-string v4, "getEmptyFeedMessage()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "networkErrorMessage"

    const-string v4, "getNetworkErrorMessage()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;-><init>()V

    .line 49
    const-class v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    .line 65
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->accessibilityUtil:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    .line 69
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$emptyFeedMessage$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$emptyFeedMessage$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyFeedMessage$delegate:Lkotlin/Lazy;

    .line 70
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$networkErrorMessage$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$networkErrorMessage$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->networkErrorMessage$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$deleteAll(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->deleteAll()V

    return-void
.end method

.method public static final synthetic access$displayLoader(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->displayLoader()V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->adapter:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getNetworkUtil$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    return-object p0
.end method

.method public static final synthetic access$getSwipeRefreshLayout$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "swipeRefreshLayout"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$onFinished(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->onFinished()V

    return-void
.end method

.method public static final synthetic access$setAdapter$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->adapter:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    return-void
.end method

.method public static final synthetic access$setSwipeRefreshLayout$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method

.method public static final synthetic access$showEmptyView(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->showEmptyView()V

    return-void
.end method

.method public static final synthetic access$showInternetErrorDialog(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->showInternetErrorDialog()V

    return-void
.end method

.method public static final synthetic access$showNonEmptyView(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->showNonEmptyView()V

    return-void
.end method

.method private final deleteAll()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->showDeleteAllWarningDialog()V

    goto :goto_0

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->showInternetErrorDialog()V

    :goto_0
    return-void
.end method

.method private final displayLoader()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->loadingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "emptyView"

    .line 257
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "loadingView"

    .line 256
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final getAttrRes(I)Landroid/util/TypedValue;
    .locals 3

    .line 389
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 390
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    return-object v0
.end method

.method private final getEmptyFeedMessage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyFeedMessage$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getNetworkErrorMessage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->networkErrorMessage$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final markAllNotNew()V
    .locals 5

    .line 294
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v0

    const-string v1, "RequestFuture.newFuture()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->requestQueue:Lcom/android/volley/RequestQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Lcom/amazon/kindle/inapp/notifications/service/MarkAllNotNewRequest;

    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    const-string v4, "sdk.getApplicationManager().getDeviceInformation()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2, v0}, Lcom/amazon/kindle/inapp/notifications/service/MarkAllNotNewRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/toolbox/RequestFuture;)V

    invoke-virtual {v1, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void

    :cond_0
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "requestQueue"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final onFinished()V
    .locals 2

    .line 129
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->markAllNotNew()V

    .line 130
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportTrayClosed()V

    .line 131
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->Companion:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->setCount(I)V

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final setupEmptyView()V
    .locals 2

    .line 160
    sget v0, Lcom/amazon/kindle/inapp/notifications/R$id;->empty_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyView:Landroid/widget/LinearLayout;

    .line 161
    sget v0, Lcom/amazon/kindle/inapp/notifications/R$id;->empty_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyText:Landroid/widget/TextView;

    .line 162
    sget v0, Lcom/amazon/kindle/inapp/notifications/R$id;->refresh_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyRefreshButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 163
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupEmptyView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupEmptyView$1;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "emptyRefreshButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 162
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final showDeleteAllWarningDialog()V
    .locals 6

    .line 340
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$string;->notification_delete_all_confirmation_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$string;->notification_delete_all_confirmation_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 342
    new-instance v2, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;

    const-string v3, "title"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "body"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$string;->notification_delete_all_confirmation_dialog_action_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showDeleteAllWarningDialog$primaryButtonOnClick$1;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showDeleteAllWarningDialog$primaryButtonOnClick$1;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;)V

    .line 353
    new-instance v3, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;

    const-string v4, "primaryButtonText"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0, v1}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$string;->notification_delete_all_confirmation_dialog_cancel_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showDeleteAllWarningDialog$secondaryButtonOnClick$1;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showDeleteAllWarningDialog$secondaryButtonOnClick$1;-><init>(Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;)V

    .line 361
    new-instance v4, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;

    const-string v5, "secondaryButtonText"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0, v1}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->setButtonData(Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;)V

    .line 364
    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->show()V

    return-void
.end method

.method private final showEmptyView()V
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->loadingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getEmptyFeedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->trashButtonView:Landroid/widget/ImageView;

    const-string v2, "trashButtonView"

    if-eqz v0, :cond_2

    const v4, -0x777778

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 268
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->trashButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyRefreshButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getEmptyFeedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "emptyRefreshButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "recyclerView"

    .line 266
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "emptyView"

    .line 265
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "emptyText"

    .line 264
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "loadingView"

    .line 263
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final showInternetErrorDialog()V
    .locals 5

    .line 368
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$string;->notifications_network_error_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$string;->notifications_network_error_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v2, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;

    const-string v3, "title"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "body"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$string;->inapp_notifications_dialog_button_got_it:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showInternetErrorDialog$primaryButtonOnClick$1;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$showInternetErrorDialog$primaryButtonOnClick$1;-><init>(Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;)V

    .line 376
    new-instance v3, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;

    const-string v4, "primaryButtonText"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0, v1}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 378
    invoke-static {v2, v3, v0, v1, v0}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->setButtonData$default(Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;ILjava/lang/Object;)V

    .line 379
    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->show()V

    return-void
.end method

.method private final showInternetErrorView()V
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->loadingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getNetworkErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->trashButtonView:Landroid/widget/ImageView;

    const-string v2, "trashButtonView"

    if-eqz v0, :cond_2

    const v4, -0x777778

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 279
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->trashButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyRefreshButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getNetworkErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "emptyRefreshButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "recyclerView"

    .line 277
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "emptyView"

    .line 276
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "emptyText"

    .line 275
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "loadingView"

    .line 274
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final showNonEmptyView()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->loadingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->emptyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->trashButtonView:Landroid/widget/ImageView;

    const-string v2, "trashButtonView"

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->trashButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "recyclerView"

    .line 287
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "emptyView"

    .line 286
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "loadingView"

    .line 285
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final drawableFromAttributes(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 326
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 327
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const-string p1, "styledAttrs.getDrawable(\u2026{ styledAttrs.recycle() }"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final getNotifications()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->showInternetErrorView()V

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "swipeRefreshLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_1
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$getNotifications$1;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->requestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v2, :cond_2

    invoke-direct {v0, p0, v2, v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$getNotifications$1;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;Lcom/android/volley/RequestQueue;Ljava/lang/String;)V

    const-string v1, ""

    .line 155
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_2
    const-string v0, "requestQueue"

    .line 145
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->isInMultiDelete:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->onFinished()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 73
    invoke-super {p0, p1}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 75
    :cond_0
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->Companion:Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/bell/BellCountHolder;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportTrayOpenedWithNumberOfInAppUnreads(I)V

    .line 76
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->setMainActivity(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    .line 77
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$layout;->activity_in_app_notifications:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 79
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "sdk"

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 81
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p1, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout"

    if-eqz p1, :cond_3

    sget-object p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->isThirdPartyBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "library_background_mesh_light"

    const-string v5, "drawable"

    invoke-virtual {v3, v4, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 85
    sget v3, Lcom/amazon/kindle/inapp/notifications/R$id;->activity_container:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Landroid/widget/LinearLayout;

    .line 86
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_3
    :goto_0
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->navigation_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    if-eqz p1, :cond_14

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 91
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->tool_bar_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_13

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->toolbarContainer:Landroid/widget/LinearLayout;

    .line 92
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_loader:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->loadingView:Landroid/widget/ProgressBar;

    .line 93
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_11

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->actionbar:Landroidx/appcompat/widget/Toolbar;

    .line 94
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->action_bar_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_10

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->actionbarContainer:Landroid/widget/LinearLayout;

    .line 95
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->actionbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_f

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_action_bar_selected_count:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    check-cast p1, Lcom/amazon/kindle/inapp/notifications/theme/ThemeTextView;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->selectedCountTextView:Lcom/amazon/kindle/inapp/notifications/theme/ThemeTextView;

    .line 96
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_recycler_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_swipe_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v2, "swipeRefreshLayout"

    if-eqz p1, :cond_b

    .line 98
    sget v3, Lcom/amazon/kindle/inapp/notifications/R$attr;->swipe_refresh_layout_background_color:I

    invoke-direct {p0, v3}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getAttrRes(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 99
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_a

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lcom/amazon/kindle/inapp/notifications/R$attr;->swipe_refresh_layout_arrow_color:I

    invoke-direct {p0, v4}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getAttrRes(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->data:I

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {p1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 101
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->setupEmptyView()V

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->setupToolbar()V

    .line 104
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 105
    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "recyclerView"

    if-eqz v3, :cond_9

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 106
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->Companion:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->getFactory()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v3, p0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;->getTrayAdapter(Ljava/util/List;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->adapter:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    .line 107
    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 109
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "sdk.getContext()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 111
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper;

    const/16 v0, 0xc

    invoke-direct {p1, v5, v0, p0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper;-><init>(IILcom/amazon/kindle/inapp/notifications/util/InAppNotificationDeleteHelper$RecyclerItemTouchHelperListener;)V

    .line 112
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 114
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$onCreate$1;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getNotifications()V

    return-void

    .line 114
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string p1, "adapter"

    .line 107
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v4.widget.SwipeRefreshLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_e
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kindle.inapp.notifications.theme.ThemeTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    const-string p1, "actionbar"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_10
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_11
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_12
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ProgressBar"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_13
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_14
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected onDestroy()V
    .locals 2

    .line 175
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->setMainActivity(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    .line 176
    invoke-super {p0}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->onFinished()V

    .line 123
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSwipeDelete(I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "swipeRefreshLayout"

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 2

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 304
    instance-of p2, p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    if-eqz p2, :cond_4

    .line 305
    iget-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->adapter:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    const-string v1, "adapter"

    if-eqz p2, :cond_3

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->reportSwipeDeletePerformed(I)V

    .line 306
    iget-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    invoke-virtual {p2}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;->isNetworkAvailable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 308
    iget-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->adapter:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->removeItem(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->showInternetErrorDialog()V

    .line 311
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->adapter:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string p1, "swipeRefreshLayout"

    .line 303
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setupActionbar(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedNotificationPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->accessibilityUtil:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_multi_delete_entered:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resources.getString(R.st\u2026ity_multi_delete_entered)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;->autoAnnounce(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->isInMultiDelete:Z

    .line 213
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->actionbarContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->toolbarContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->actionbar:Landroidx/appcompat/widget/Toolbar;

    const-string v4, "actionbar"

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 217
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/amazon/kindle/inapp/notifications/R$layout;->in_app_notifications_action_bar:I

    invoke-virtual {v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 219
    invoke-virtual {v5, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 220
    invoke-virtual {v5, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 221
    invoke-virtual {v5, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 222
    invoke-virtual {v5, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->actionbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_4

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_action_bar_trash_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/ImageView;

    .line 226
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->actionbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_2

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_action_bar_done_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/amazon/kindle/inapp/notifications/theme/ThemeTextView;

    .line 240
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupActionbar$3;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 239
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kindle.inapp.notifications.theme.ThemeTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "swipeRefreshLayout"

    .line 215
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string p1, "toolbarContainer"

    .line 214
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string p1, "actionbarContainer"

    .line 213
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final setupToolbar()V
    .locals 6

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->isInMultiDelete:Z

    .line 187
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->toolbarContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->actionbarContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 190
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v4, "toolbar"

    if-eqz v1, :cond_6

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 191
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/amazon/kindle/inapp/notifications/R$layout;->in_app_notifications_toolbar:I

    invoke-virtual {v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 193
    invoke-virtual {v5, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 194
    invoke-virtual {v5, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 195
    invoke-virtual {v5, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 196
    invoke-virtual {v5, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_5

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$id;->navigation_trash_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->trashButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 200
    new-instance v3, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupToolbar$2;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupToolbar$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_2

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$id;->navigation_back_button:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/ImageView;

    .line 206
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupToolbar$3;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$setupToolbar$3;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 205
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v0, "trashButtonView"

    .line 200
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string v0, "swipeRefreshLayout"

    .line 189
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string v0, "actionbarContainer"

    .line 188
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    const-string v0, "toolbarContainer"

    .line 187
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final setupToolbarAfterMultiDelete()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->accessibilityUtil:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_multi_delete_exited:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resources.getString(R.st\u2026lity_multi_delete_exited)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;->autoAnnounce(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->setupToolbar()V

    return-void
.end method

.method public final updateActionbar(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedNotification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 250
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->selectedCountTextView:Lcom/amazon/kindle/inapp/notifications/theme/ThemeTextView;

    const/4 v1, 0x0

    const-string v2, "selectedCountTextView"

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->selectedCountTextView:Lcom/amazon/kindle/inapp/notifications/theme/ThemeTextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_action_bar_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
