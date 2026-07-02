.class public final Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;
.super Ljava/lang/Object;
.source "DeleteContentSdkProxy.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

.field public static activityProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static alertDialogManager:Lcom/amazon/kindle/krx/application/IAlertDialogManager;

.field public static audioBookMetadataProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field public static logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field public static metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field public static networkService:Lcom/amazon/kindle/krx/network/INetworkService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    invoke-direct {v0}, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;-><init>()V

    sput-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->INSTANCE:Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActivityProvider$DeleteContentModule_release()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->activityProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "activityProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAlertDialogManager$DeleteContentModule_release()Lcom/amazon/kindle/krx/application/IAlertDialogManager;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->alertDialogManager:Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "alertDialogManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAudioBookMetadataProvider$DeleteContentModule_release()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->audioBookMetadataProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "audioBookMetadataProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getLibraryManager$DeleteContentModule_release()Lcom/amazon/kindle/krx/library/ILibraryManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "libraryManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getLogger$DeleteContentModule_release()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "logger"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getMetricsManager$DeleteContentModule_release()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "metricsManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getNetworkService$DeleteContentModule_release()Lcom/amazon/kindle/krx/network/INetworkService;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->networkService:Lcom/amazon/kindle/krx/network/INetworkService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "networkService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final initialize(Lcom/amazon/kindle/krx/logging/ILogger;Lcom/amazon/kindle/krx/application/IAlertDialogManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/amazon/kindle/krx/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/logging/ILogger;",
            "Lcom/amazon/kindle/krx/application/IAlertDialogManager;",
            "Lcom/amazon/kindle/krx/library/ILibraryManager;",
            "Lcom/amazon/kindle/krx/network/INetworkService;",
            "Lcom/amazon/kindle/krx/metrics/IMetricsManager;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alertDialogManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioBookMetadataProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sput-object p1, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 36
    sput-object p2, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->alertDialogManager:Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    .line 37
    sput-object p3, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 38
    sput-object p4, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->networkService:Lcom/amazon/kindle/krx/network/INetworkService;

    .line 39
    sput-object p6, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->audioBookMetadataProvider:Lkotlin/jvm/functions/Function0;

    .line 40
    sput-object p7, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->activityProvider:Lkotlin/jvm/functions/Function0;

    .line 41
    sput-object p5, Lcom/amazon/kindle/deletecontent/action/DeleteContentSdkProxy;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-void
.end method
