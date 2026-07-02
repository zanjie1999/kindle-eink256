.class public final Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;
.source "RemoveDownloadActionButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveDownloadActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveDownloadActionButton.kt\ncom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton\n+ 2 Utils.kt\ncom/amazon/kindle/deletecontent/util/UtilsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n6#2:53\n1819#3,2:54\n*E\n*S KotlinDebug\n*F\n+ 1 RemoveDownloadActionButton.kt\ncom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton\n*L\n33#1:53\n37#1,2:54\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;


# instance fields
.field private final context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

.field private final libraryManager$delegate:Lkotlin/Lazy;

.field private final logger$delegate:Lkotlin/Lazy;

.field private final metricsManager$delegate:Lkotlin/Lazy;

.field private final sdkProxy:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->Companion:Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkProxy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    iput-object p2, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->sdkProxy:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    .line 19
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$logger$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$logger$2;-><init>(Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->logger$delegate:Lkotlin/Lazy;

    .line 21
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$libraryManager$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$libraryManager$2;-><init>(Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->libraryManager$delegate:Lkotlin/Lazy;

    .line 23
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$metricsManager$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$metricsManager$2;-><init>(Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->metricsManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 16
    sget-object p2, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->INSTANCE:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;-><init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;)V

    return-void
.end method

.method public static final synthetic access$getSdkProxy$p(Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;)Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->sdkProxy:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    return-object p0
.end method

.method private final getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->libraryManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/library/ILibraryManager;

    return-object v0
.end method

.method private final getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/logging/ILogger;

    return-object v0
.end method

.method private final getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->metricsManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 32
    sget-object v0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->Companion:Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "context.books"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton$Companion;->validate(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    .line 53
    const-class v1, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Validation failed"

    .line 33
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "InvalidItems"

    invoke-static {v0, v1}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportUnexpectedRequestErrorMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/content/IBook;

    .line 37
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v2

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->deleteItemLocally(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMetricsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "RemoveDownload"

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.androidContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/deletecontentmodule/R$integer;->delete_content_remove_download_button_order:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/RemoveDownloadActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_remove_download_action_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.androidContext.g\u2026ve_download_action_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
