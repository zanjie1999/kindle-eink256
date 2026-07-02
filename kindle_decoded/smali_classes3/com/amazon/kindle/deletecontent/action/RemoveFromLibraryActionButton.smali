.class public final Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;
.source "RemoveFromLibraryActionButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveFromLibraryActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveFromLibraryActionButton.kt\ncom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton\n+ 2 Utils.kt\ncom/amazon/kindle/deletecontent/util/UtilsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n6#2:96\n6#2:104\n1690#3,3:97\n1517#3:100\n1588#3,3:101\n*E\n*S KotlinDebug\n*F\n+ 1 RemoveFromLibraryActionButton.kt\ncom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton\n*L\n47#1:96\n65#1:104\n57#1,3:97\n63#1:100\n63#1,3:101\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;


# instance fields
.field private final activityProvider$delegate:Lkotlin/Lazy;

.field private final alertDialogManager$delegate:Lkotlin/Lazy;

.field private final context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

.field private final logger$delegate:Lkotlin/Lazy;

.field private final metricsManager$delegate:Lkotlin/Lazy;

.field private final networkService$delegate:Lkotlin/Lazy;

.field private final sdkProxy:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->Companion:Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkProxy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    iput-object p2, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->sdkProxy:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    .line 28
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$logger$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$logger$2;-><init>(Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->logger$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$alertDialogManager$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$alertDialogManager$2;-><init>(Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->alertDialogManager$delegate:Lkotlin/Lazy;

    .line 32
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$networkService$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$networkService$2;-><init>(Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->networkService$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$activityProvider$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$activityProvider$2;-><init>(Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->activityProvider$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$metricsManager$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$metricsManager$2;-><init>(Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->metricsManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 25
    sget-object p2, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->INSTANCE:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;-><init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;)V

    return-void
.end method

.method public static final synthetic access$getSdkProxy$p(Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;)Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->sdkProxy:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    return-object p0
.end method

.method private final getActivityProvider()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->activityProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method private final getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->alertDialogManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    return-object v0
.end method

.method private final getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/logging/ILogger;

    return-object v0
.end method

.method private final getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->metricsManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object v0
.end method

.method private final getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->networkService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/network/INetworkService;

    return-object v0
.end method

.method private final launchDialogForArchivables(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;",
            ">;)V"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;->Companion:Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment$Companion;->getInstance$DeleteContentModule_release(Ljava/util/List;)Lcom/amazon/kindle/deletecontent/dialog/RemoveArchivableFromLibraryDialogFragment;

    move-result-object p1

    .line 77
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->getActivityProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "removeFromLibraryDialogTag"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private final launchDialogForNonArchivables(Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;)V
    .locals 2

    .line 70
    sget-object v0, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;->Companion:Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment$Companion;->getInstance$DeleteContentModule_release(Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;)Lcom/amazon/kindle/deletecontent/dialog/RemoveNonArchivableFromLibraryDialogFragment;

    move-result-object p1

    .line 71
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->getActivityProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "removeFromLibraryDialogTag"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .line 45
    const-class v0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "context.books"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v2, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->Companion:Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton$Companion;->validate(Ljava/util/Collection;)Z

    move-result v2

    const-string v3, "T::class.java.name"

    if-nez v2, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Validation failed"

    .line 47
    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "InvalidItems"

    invoke-static {v0, v1}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportUnexpectedRequestErrorMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "books.first()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->isArchivable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v2, "RemoveDialogLaunchNonArchivable"

    invoke-static {v0, v2}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportUIMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    .line 55
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0}, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->toNonArchivableContentData(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->launchDialogForNonArchivables(Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;)V

    goto/16 :goto_2

    .line 57
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_7

    .line 97
    instance-of v2, v1, Ljava/util/Collection;

    const-string v5, "it"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 98
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/krx/content/IBook;

    .line 57
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/krx/content/IBook;->isArchivable()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 58
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_5

    .line 59
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    return-void

    .line 62
    :cond_5
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v2, "RemoveDialogLaunchArchivable"

    invoke-static {v0, v2}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportUIMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 102
    check-cast v2, Lcom/amazon/kindle/krx/content/IBook;

    .line 63
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v4, v3}, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->toArchivableContentData$default(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;ILjava/lang/Object;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-direct {p0, v0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->launchDialogForArchivables(Ljava/util/List;)V

    goto :goto_2

    .line 65
    :cond_7
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Not matching actions for the given books."

    .line 65
    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public getMetricsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "RemoveFromLibrary"

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.androidContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/deletecontentmodule/R$integer;->delete_content_remove_from_library_button_order:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveFromLibraryActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_remove_action_button_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.androidContext.g\u2026move_action_button_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
