.class public Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "InAppNotificationsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;,
        Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppNotificationsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppNotificationsAdapter.kt\ncom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,656:1\n1230#2:657\n1299#2,3:658\n1230#2:661\n1299#2,3:662\n1230#2:665\n1299#2,3:666\n*E\n*S KotlinDebug\n*F\n+ 1 InAppNotificationsAdapter.kt\ncom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter\n*L\n454#1:657\n454#1,3:658\n496#1:661\n496#1,3:662\n501#1:665\n501#1,3:666\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final DEFAULT_NOTIFICATION_CELL_ALPHA:F

.field private final SELECTED_NOTIFICATION_CELL_ALPHA:F

.field private final STATUS_READ:Ljava/lang/String;

.field private final STATUS_UNREAD:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final accessibilityUtil:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

.field private final activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

.field private final context:Landroid/content/Context;

.field private final currentNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private final expiredNotificationCellAlpha$delegate:Lkotlin/Lazy;

.field private final expiredString:Ljava/lang/String;

.field private isMultiDelete:Z

.field private final loadMoreErrorMessage$delegate:Lkotlin/Lazy;

.field private final networkErrorMessage$delegate:Lkotlin/Lazy;

.field private networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

.field private nextPageToken:Ljava/lang/String;

.field private final notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private requestQueue:Lcom/android/volley/RequestQueue;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final selectedNotificationsPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timestampUtil:Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "expiredNotificationCellAlpha"

    const-string v5, "getExpiredNotificationCellAlpha()F"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "networkErrorMessage"

    const-string v5, "getNetworkErrorMessage()Ljava/lang/String;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "loadMoreErrorMessage"

    const-string v4, "getLoadMoreErrorMessage()Ljava/lang/String;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
            ">;",
            "Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;",
            ")V"
        }
    .end annotation

    const-string v0, "notifications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->notifications:Ljava/util/List;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    const-string p1, "unread"

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->STATUS_UNREAD:Ljava/lang/String;

    const-string p1, "read"

    .line 66
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->STATUS_READ:Ljava/lang/String;

    .line 67
    const-class p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->TAG:Ljava/lang/String;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 68
    iput p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->SELECTED_NOTIFICATION_CELL_ALPHA:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 69
    iput p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->DEFAULT_NOTIFICATION_CELL_ALPHA:F

    .line 70
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "InAppNotificationsPlugin.getSDK().context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->context:Landroid/content/Context;

    .line 71
    sget p2, Lcom/amazon/kindle/inapp/notifications/R$string;->expiration_expired:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->expiredString:Ljava/lang/String;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    .line 73
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;-><init>(Ljava/util/Date;Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->timestampUtil:Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;

    .line 74
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 75
    sget-object p2, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sdk.getContext()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 76
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    invoke-direct {p1}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->selectedNotificationsPosition:Ljava/util/List;

    .line 80
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    invoke-direct {p1}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->accessibilityUtil:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    .line 82
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$expiredNotificationCellAlpha$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$expiredNotificationCellAlpha$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->expiredNotificationCellAlpha$delegate:Lkotlin/Lazy;

    .line 88
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$networkErrorMessage$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$networkErrorMessage$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->networkErrorMessage$delegate:Lkotlin/Lazy;

    .line 89
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$loadMoreErrorMessage$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$loadMoreErrorMessage$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->loadMoreErrorMessage$delegate:Lkotlin/Lazy;

    .line 91
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    iget-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->notifications:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 80
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public static final synthetic access$addMoreNotifications(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->addMoreNotifications(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAccessibilityUtil$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->accessibilityUtil:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    return-object p0
.end method

.method public static final synthetic access$getAttrRes(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;I)Landroid/util/TypedValue;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getAttrRes(I)Landroid/util/TypedValue;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getLoadMoreErrorMessage$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getLoadMoreErrorMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNetworkErrorMessage$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getNetworkErrorMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNetworkUtil$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->networkUtil:Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    return-object p0
.end method

.method public static final synthetic access$getNextPageToken$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->nextPageToken:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRequestQueue$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Lcom/android/volley/RequestQueue;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->requestQueue:Lcom/android/volley/RequestQueue;

    return-object p0
.end method

.method public static final synthetic access$getSTATUS_READ$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->STATUS_READ:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSTATUS_UNREAD$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->STATUS_UNREAD:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSelectedNotificationsPosition$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->selectedNotificationsPosition:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isMultiDelete$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->isMultiDelete:Z

    return p0
.end method

.method public static final synthetic access$markNotNew(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Ljava/util/List;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->markNotNew(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setAlphaDefault(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->setAlphaDefault(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V

    return-void
.end method

.method public static final synthetic access$setMultiDelete$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->isMultiDelete:Z

    return-void
.end method

.method public static final synthetic access$setNotificationNotSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->setNotificationNotSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setNotificationSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->setNotificationSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V

    return-void
.end method

.method public static final synthetic access$showDeleteErrorDialog(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->showDeleteErrorDialog(Z)V

    return-void
.end method

.method private final addMoreNotifications(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 375
    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->nextPageToken:Ljava/lang/String;

    .line 376
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 377
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 378
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private final deleteAllNotifications()V
    .locals 2

    .line 551
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->getDeleteRequestFail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteAllNotifications$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteAllNotifications$1;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 558
    :cond_0
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteAllNotifications$2;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteAllNotifications$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/android/volley/RequestQueue;)V

    const-string v1, ""

    .line 565
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private final deleteNotifications(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 530
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->getDeleteRequestFail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$1;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Z)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 537
    :cond_0
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2;

    iget-object v5, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->requestQueue:Lcom/android/volley/RequestQueue;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$deleteNotifications$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Ljava/util/List;ZLcom/android/volley/RequestQueue;Ljava/util/List;)V

    const-string p1, ""

    .line 544
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private final getAttrRes(I)Landroid/util/TypedValue;
    .locals 3

    .line 465
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 466
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    return-object v0
.end method

.method private final getExpiredNotificationCellAlpha()F
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->expiredNotificationCellAlpha$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getLoadMoreErrorMessage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->loadMoreErrorMessage$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getNetworkErrorMessage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->networkErrorMessage$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final markNotNew(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 510
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v0

    const-string v1, "RequestFuture.newFuture()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/amazon/kindle/inapp/notifications/service/MarkNotNewRequest;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v3

    const-string v4, "sdk.getApplicationManager().getDeviceInformation()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0, p1}, Lcom/amazon/kindle/inapp/notifications/service/MarkNotNewRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/toolbox/RequestFuture;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private final notificationDidDelete()V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->nextPageToken:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final onBindContentViewHolder(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;I)V
    .locals 13

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazon/kindle/inapp/notifications/util/Notification;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 229
    invoke-virtual {v3}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 230
    invoke-virtual {v3}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getTexts()Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;

    move-result-object v1

    .line 231
    invoke-virtual {v3}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getNotificationData()Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    move-result-object v2

    .line 232
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v3}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getStatus()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 233
    invoke-virtual {v3}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getCreationDate()Ljava/lang/String;

    move-result-object v5

    .line 234
    iget-object v8, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->timestampUtil:Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;

    invoke-virtual {v8, v5}, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->getPrettyDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    if-eqz v8, :cond_3

    if-eqz v2, :cond_2

    .line 237
    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->getImageUrl()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v9

    :cond_3
    move-object v10, v9

    :goto_1
    if-eqz v8, :cond_5

    if-eqz v2, :cond_4

    .line 238
    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->getExpirationDate()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v9

    :cond_5
    move-object v11, v9

    :goto_2
    if-eqz v8, :cond_7

    if-eqz v2, :cond_6

    .line 239
    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->getTapAction()Lcom/amazon/kindle/inapp/notifications/util/TapAction;

    move-result-object v2

    goto :goto_3

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v9

    :cond_7
    move-object v2, v9

    :goto_3
    if-eqz v2, :cond_8

    .line 240
    sget-object v8, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->Companion:Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion;

    invoke-virtual {v8}, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;

    move-result-object v8

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscribeManager;->getSubscriber(Ljava/lang/String;)Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;->getNotificationHandler(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;

    move-result-object v2

    move-object v8, v2

    goto :goto_4

    :cond_8
    move-object v8, v9

    .line 242
    :goto_4
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportInAppNotificationDisplayed(Lcom/amazon/kindle/inapp/notifications/util/Notification;)V

    .line 246
    sget v2, Lcom/amazon/kindle/inapp/notifications/R$attr;->notification_tray_default_image:I

    invoke-direct {p0, v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getAttrRes(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 247
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v10, :cond_9

    .line 248
    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v4, 0x1

    :cond_a
    if-nez v4, :cond_c

    .line 249
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 250
    new-instance v4, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;

    invoke-direct {v4, p0, v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 257
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->Companion:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;

    move-result-object v2

    if-eqz v10, :cond_b

    invoke-virtual {v2, v10, v4}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;->fetchImage(Ljava/lang/String;Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadListener;)V

    goto :goto_5

    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v9

    .line 260
    :cond_c
    :goto_5
    iget-boolean v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->isMultiDelete:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->selectedNotificationsPosition:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 261
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->setNotificationSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V

    goto :goto_6

    .line 263
    :cond_d
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->setNotificationNotSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;Ljava/lang/String;)V

    :goto_6
    if-eqz v1, :cond_e

    .line 267
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;->getNotificationTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getBodyTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;->getNotificationText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    if-eqz v11, :cond_f

    .line 271
    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->timestampUtil:Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;

    invoke-virtual {v2, v11}, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;->getPrettyExpiredString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_f
    move-object v2, v9

    .line 272
    :goto_7
    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->expiredString:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 273
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->setAlphaExpired(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V

    goto :goto_8

    :cond_10
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->setAlphaDefault(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V

    .line 274
    :goto_8
    iget-object v10, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v11, "holder.itemView"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/2addr v0, v4

    invoke-virtual {v10, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 275
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getFooterTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " | "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    move-object v10, v2

    :cond_11
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_selected:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_12
    move-object v2, v9

    :goto_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_unselected:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/NotificationTexts;->getNotificationTitle()Ljava/lang/String;

    move-result-object v9

    :cond_13
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 280
    iget-object v11, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v12, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;

    move-object v1, v12

    move-object v2, p0

    move-object v4, p1

    move-object v5, v8

    move v8, p2

    move-object v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/util/Notification;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$3;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->setAccessibilityForCell(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;I)V

    return-void
.end method

.method private final onBindLoadMoreHolder(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;)V
    .locals 2

    .line 216
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->getRefreshButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindLoadMoreHolder$1;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindLoadMoreHolder$1;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->setViewLoaded(Z)V

    .line 218
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->setLoadMoreIfShown()V

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindLoadMoreHolder$2;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindLoadMoreHolder$2;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private final setAccessibilityForCell(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;I)V
    .locals 2

    .line 609
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$setAccessibilityForCell$1;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;I)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private final setAlphaDefault(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V
    .locals 2

    .line 416
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getFooterTextView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->DEFAULT_NOTIFICATION_CELL_ALPHA:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 417
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->DEFAULT_NOTIFICATION_CELL_ALPHA:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 418
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getBodyTextView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->DEFAULT_NOTIFICATION_CELL_ALPHA:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 419
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->DEFAULT_NOTIFICATION_CELL_ALPHA:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private final setAlphaExpired(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V
    .locals 2

    .line 428
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getFooterTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getExpiredNotificationCellAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 429
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getExpiredNotificationCellAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 430
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getBodyTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getExpiredNotificationCellAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 431
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getExpiredNotificationCellAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private final setAlphaSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V
    .locals 2

    .line 440
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getFooterTextView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->SELECTED_NOTIFICATION_CELL_ALPHA:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 441
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->SELECTED_NOTIFICATION_CELL_ALPHA:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 442
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getBodyTextView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->SELECTED_NOTIFICATION_CELL_ALPHA:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 443
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->SELECTED_NOTIFICATION_CELL_ALPHA:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private final setNotificationNotSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;Ljava/lang/String;)V
    .locals 2

    .line 399
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getSelectedNotificationCheckMark()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->setAlphaDefault(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V

    .line 401
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->STATUS_UNREAD:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 402
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->setRead(Z)V

    .line 403
    sget p2, Lcom/amazon/kindle/inapp/notifications/R$attr;->notification_tray_cell_unread_background_color:I

    invoke-direct {p0, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getAttrRes(I)Landroid/util/TypedValue;

    move-result-object p2

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 405
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->setRead(Z)V

    .line 406
    sget p2, Lcom/amazon/kindle/inapp/notifications/R$attr;->notification_tray_cell_default_background_color:I

    invoke-direct {p0, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getAttrRes(I)Landroid/util/TypedValue;

    move-result-object p2

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private final setNotificationSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V
    .locals 2

    .line 387
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getSelectedNotificationCheckMark()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getNotificationItemBackground()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 389
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->setAlphaSelected(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;)V

    .line 390
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getNotificationItemForeground()Landroid/widget/RelativeLayout;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/inapp/notifications/R$attr;->notification_tray_cell_multiselect_background_color:I

    invoke-direct {p0, v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getAttrRes(I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final showDeleteErrorDialog(Z)V
    .locals 6

    .line 593
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$string;->notifications_delete_error_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$string;->notifications_delete_error_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    .line 600
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "body"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 594
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v0

    .line 595
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getERROR_OPERATION()Ljava/lang/String;

    move-result-object v1

    sget-object p1, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getACTIVITY_FINISHED_FAILURE()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportMetric$default(Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method private final showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-nez p3, :cond_0

    .line 570
    new-instance p3, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-direct {p3, v0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->context:Landroid/content/Context;

    sget p2, Lcom/amazon/kindle/inapp/notifications/R$string;->inapp_notifications_dialog_button_got_it:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 573
    new-instance p2, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$showErrorDialog$primaryButtonOnClick$1;

    invoke-direct {p2, p3}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$showErrorDialog$primaryButtonOnClick$1;-><init>(Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;)V

    .line 576
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;

    const-string v1, "primaryButtonText"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 578
    invoke-static {p3, v0, p2, p1, p2}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->setButtonData$default(Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;Lcom/amazon/kindle/inapp/notifications/ui/AlertDialogButtonData;ILjava/lang/Object;)V

    .line 579
    invoke-virtual {p3}, Lcom/amazon/kindle/inapp/notifications/ui/AlertDialog;->show()V

    .line 581
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;->getNotifications()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getActivity()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->nextPageToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 175
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$layout;->notification_cell_single:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 177
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$layout;->notification_cell_top:I

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_3

    .line 179
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->nextPageToken:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 180
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$layout;->notification_cell_load_more:I

    goto :goto_0

    .line 182
    :cond_2
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$layout;->notification_cell_bottom:I

    goto :goto_0

    .line 185
    :cond_3
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$layout;->notification_cell_middle:I

    :goto_0
    return p1
.end method

.method protected final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 201
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->activity:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->getSmallestDisplayLength(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 202
    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 203
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 204
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v3, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 205
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;

    if-eqz v0, :cond_2

    .line 209
    check-cast p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->onBindLoadMoreHolder(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;)V

    goto :goto_1

    .line 210
    :cond_2
    instance-of v0, p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    if-eqz v0, :cond_3

    .line 211
    check-cast p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->onBindContentViewHolder(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 195
    sget v0, Lcom/amazon/kindle/inapp/notifications/R$layout;->notification_cell_load_more:I

    const-string v1, "view"

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public final removeAllItems()V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 521
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->deleteAllNotifications()V

    .line 522
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->notificationDidDelete()V

    .line 523
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final removeItem(I)V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/inapp/notifications/util/Notification;

    .line 477
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportNotificationDeletedFromTray(Lcom/amazon/kindle/inapp/notifications/util/Notification;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 478
    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 481
    invoke-direct {p0, v0, v2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->deleteNotifications(Ljava/util/List;Z)V

    .line 482
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->notificationDidDelete()V

    .line 483
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public final removeMultiNotifications(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sortDescending(Ljava/util/List;)V

    .line 493
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    goto/16 :goto_3

    .line 661
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 662
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 663
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 496
    iget-object v5, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/inapp/notifications/util/Notification;

    invoke-virtual {v4}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    :cond_1
    sget-object v3, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {v3}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportNotificationsMultiDeletedFromTray(Ljava/util/List;)V

    .line 498
    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/inapp/notifications/R$string;->accessibility_multi_delete_notifications_deleted:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 499
    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->accessibilityUtil:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "TAG"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "deletedString"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;->autoAnnounce(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-direct {p0, v1, v5}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->deleteNotifications(Ljava/util/List;Z)V

    .line 501
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    .line 665
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 666
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 667
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 501
    iget-object v4, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/inapp/notifications/util/Notification;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 502
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->notificationDidDelete()V

    .line 503
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 504
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public final replaceNotifications(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "notifications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 365
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->nextPageToken:Ljava/lang/String;

    .line 367
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 368
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;-><init>(Ljava/util/Date;Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->timestampUtil:Lcom/amazon/kindle/inapp/notifications/util/TimestampUtil;

    .line 369
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final reportMultiDeletePerformed(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 657
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 658
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 659
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 454
    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/inapp/notifications/util/Notification;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    :cond_1
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportNotificationsMultiDeletePerformedFromTray(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final reportSwipeDeletePerformed(I)V
    .locals 2

    .line 447
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->currentNotifications:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/inapp/notifications/util/Notification;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportNotificationDeletePerformedFromTray(Lcom/amazon/kindle/inapp/notifications/util/Notification;)V

    return-void
.end method

.method public final resetNotificationTray(Z)V
    .locals 0

    .line 338
    iput-boolean p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->isMultiDelete:Z

    .line 339
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->selectedNotificationsPosition:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
