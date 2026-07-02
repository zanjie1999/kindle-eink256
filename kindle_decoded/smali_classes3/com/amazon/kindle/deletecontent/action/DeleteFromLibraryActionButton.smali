.class public final Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;
.source "DeleteFromLibraryActionButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteFromLibraryActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteFromLibraryActionButton.kt\ncom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton\n+ 2 Utils.kt\ncom/amazon/kindle/deletecontent/util/UtilsKt\n*L\n1#1,171:1\n6#2:172\n6#2:173\n6#2:174\n6#2:175\n*E\n*S KotlinDebug\n*F\n+ 1 DeleteFromLibraryActionButton.kt\ncom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton\n*L\n60#1:172\n138#1:173\n147#1:174\n157#1:175\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$Companion;


# instance fields
.field private final activityProvider$delegate:Lkotlin/Lazy;

.field private final alertDialogManager$delegate:Lkotlin/Lazy;

.field private final audioBookMetadataProvider$delegate:Lkotlin/Lazy;

.field private final context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

.field private final deleteContentClient:Lcom/amazon/kindle/deletecontent/api/DeleteContentClientInterface;

.field private final logger$delegate:Lkotlin/Lazy;

.field private final metricsManager$delegate:Lkotlin/Lazy;

.field private final networkService$delegate:Lkotlin/Lazy;

.field private final sdkProxy:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->Companion:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/api/DeleteContentClientInterface;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteContentClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkProxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    iput-object p2, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->deleteContentClient:Lcom/amazon/kindle/deletecontent/api/DeleteContentClientInterface;

    iput-object p3, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->sdkProxy:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    .line 38
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$logger$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$logger$2;-><init>(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->logger$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$alertDialogManager$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$alertDialogManager$2;-><init>(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->alertDialogManager$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$networkService$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$networkService$2;-><init>(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->networkService$delegate:Lkotlin/Lazy;

    .line 44
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$audioBookMetadataProvider$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$audioBookMetadataProvider$2;-><init>(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->audioBookMetadataProvider$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$activityProvider$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$activityProvider$2;-><init>(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->activityProvider$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$metricsManager$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$metricsManager$2;-><init>(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->metricsManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/api/DeleteContentClientInterface;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 34
    sget-object p2, Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;->INSTANCE:Lcom/amazon/kindle/deletecontent/api/DeleteContentClient;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 35
    sget-object p3, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->INSTANCE:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;-><init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;Lcom/amazon/kindle/deletecontent/api/DeleteContentClientInterface;Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;)V

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMetricsManager$p(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSdkProxy$p(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;)Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->sdkProxy:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    return-object p0
.end method

.method public static final synthetic access$showDeleteFromLibraryDialog(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->showDeleteFromLibraryDialog(Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V

    return-void
.end method

.method public static final synthetic access$showErrorDialog(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$showRefundPage(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;Landroid/content/Context;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->showRefundPage(Landroid/content/Context;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;Ljava/lang/String;)V

    return-void
.end method

.method private final checkRefundEligibilityAndLaunchCantileverOrDelete(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V
    .locals 2

    .line 98
    invoke-static {p1}, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->toDeleteContentAsinDetail(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.androidContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->createRefundEligibleCheckCallback$DeleteContentModule_release(Landroid/content/Context;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->deleteContentClient:Lcom/amazon/kindle/deletecontent/api/DeleteContentClientInterface;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentClientInterface;->refundEligibilityCheckWithASINDetails(Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;Lkotlin/jvm/functions/Function1;)V

    return-void
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

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->activityProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method private final getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->alertDialogManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    return-object v0
.end method

.method private final getAudioBookMetadataProvider()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->audioBookMetadataProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method private final getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/logging/ILogger;

    return-object v0
.end method

.method private final getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->metricsManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object v0
.end method

.method private final getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->networkService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/network/INetworkService;

    return-object v0
.end method

.method private final showDeleteDialogOrCheckRefundEligibility(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->getAudioBookMetadataProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    invoke-static {p1, v0}, Lcom/amazon/kindle/deletecontent/action/DeleteContentActionUtilsKt;->toArchivableContentData(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object v0

    .line 81
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-direct {p0, v0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->showDeleteFromLibraryDialog(Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->checkRefundEligibilityAndLaunchCantileverOrDelete(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V

    :goto_0
    return-void
.end method

.method private final showDeleteFromLibraryDialog(Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V
    .locals 3

    .line 147
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    .line 174
    const-class v1, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Showing confirmation dialog"

    .line 147
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;->Companion:Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment$Companion;->getInstance$DeleteContentModule_release(Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogFragment;

    move-result-object p1

    .line 149
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->getActivityProvider()Lkotlin/jvm/functions/Function0;

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

    const-string v1, "deleteFromLibraryDialogTag"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private final showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 157
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    .line 175
    const-class v1, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received with error response, showing dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/amazon/kindle/deletecontent/dialog/DeleteContentDialogUtilsKt;->showErrorDialog(Landroid/content/Context;)V

    return-void
.end method

.method private final showRefundPage(Landroid/content/Context;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;Ljava/lang/String;)V
    .locals 3

    .line 138
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    .line 173
    const-class v1, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Launching refund page"

    .line 138
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->getStartReturnIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "HelpAndFeedbackActivity.\u2026ontentData.asin, orderId)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final createRefundEligibleCheckCallback$DeleteContentModule_release(Landroid/content/Context;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$createRefundEligibleCheckCallback$1;-><init>(Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;Landroid/content/Context;Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)V

    return-object v0
.end method

.method public execute()V
    .locals 3

    .line 59
    sget-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->Companion:Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "context.books"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton$Companion;->validate(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    .line 172
    const-class v1, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Validation failed"

    .line 60
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "InvalidItems"

    invoke-static {v0, v1}, Lcom/amazon/kindle/deletecontent/metrics/DeleteContentMetricsUtilsKt;->reportUnexpectedRequestErrorMetrics(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "context.books.first()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->showDeleteDialogOrCheckRefundEligibility(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public getMetricsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DeleteFromLibrary"

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.androidContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/deletecontentmodule/R$integer;->delete_content_delete_from_library_button_order:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 50
    invoke-static {}, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->shouldShowPermanentlyDeleteString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_delete_action_button_t2_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.androidContext.g\u2026e_action_button_t2_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/action/DeleteFromLibraryActionButton;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/deletecontentmodule/R$string;->delete_from_library_delete_action_button_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.androidContext.g\u2026lete_action_button_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
