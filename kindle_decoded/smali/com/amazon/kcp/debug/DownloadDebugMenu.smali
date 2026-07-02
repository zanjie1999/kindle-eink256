.class public final Lcom/amazon/kcp/debug/DownloadDebugMenu;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "DownloadDebugMenu.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/debug/DownloadDebugMenu$Companion;
    }
.end annotation


# static fields
.field private static final IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final buildVersionForMobi$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/debug/DownloadDebugMenu$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/debug/DownloadDebugMenu$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 267
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/amazon/kcp/debug/DownloadDebugMenu;->IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu;->context:Landroid/content/Context;

    .line 221
    sget-object p1, Lcom/amazon/kcp/debug/DownloadDebugMenu$buildVersionForMobi$2;->INSTANCE:Lcom/amazon/kcp/debug/DownloadDebugMenu$buildVersionForMobi$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu;->buildVersionForMobi$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBuildVersionForMobi$p(Lcom/amazon/kcp/debug/DownloadDebugMenu;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->getBuildVersionForMobi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/debug/DownloadDebugMenu;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$onDownloadAllBooks(Lcom/amazon/kcp/debug/DownloadDebugMenu;Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->onDownloadAllBooks(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$toggleManualOverrideEnabled(Lcom/amazon/kcp/debug/DownloadDebugMenu;ZLandroid/view/View;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->toggleManualOverrideEnabled(ZLandroid/view/View;)V

    return-void
.end method

.method private final getBuildVersionForMobi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu;->buildVersionForMobi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final onDownloadAllBooks(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "factory"

    .line 241
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v1

    const-string v2, "factory.downloadService"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    sget-object v2, Lcom/amazon/kcp/debug/DownloadDebugMenu;->IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v2}, Lcom/amazon/kindle/util/AtomicBoolean_ExtensionsKt;->getAndNegate(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 244
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v3

    new-instance v4, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;

    invoke-direct {v4, v0, v2, v1}, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;ZLcom/amazon/kindle/services/download/IDownloadService;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 263
    check-cast p1, Landroid/widget/Button;

    if-eqz v2, :cond_1

    const-string v0, "Cancel Downloads"

    goto :goto_0

    :cond_1
    const-string v0, "Download All Books"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupArdmOptions(Landroid/view/View;)V
    .locals 5

    .line 95
    sget v0, Lcom/amazon/kindle/krl/R$id;->asset_request_download_manager_thread_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 96
    sget v1, Lcom/amazon/kindle/krl/R$id;->asset_request_download_manager_thread_count_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    sget v2, Lcom/amazon/kindle/krl/R$id;->submit_asset_request_download_manager_thread_count:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 98
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v3

    const-string v4, "DownloadDiscoveryEntryPoints.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getReaderDownloadModule()Lcom/amazon/kindle/download/IReaderDownloadModule;

    move-result-object v3

    .line 99
    invoke-interface {v3}, Lcom/amazon/kindle/download/IReaderDownloadModule;->getReaderDownloadManager()Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    move-result-object v3

    const-string v4, "DownloadDiscoveryEntryPo\u2026etReaderDownloadManager()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    instance-of v4, v3, Lcom/amazon/kindle/download/AssetRequestDownloadManager;

    if-nez v4, :cond_0

    const-string v3, "ardmThreadCountTitle"

    .line 102
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "ardmThreadCountText"

    .line 103
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    const-string v0, "ardmThreadCountSubmit"

    .line 104
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_0
    move-object v1, v3

    check-cast v1, Lcom/amazon/kindle/download/AssetRequestDownloadManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->getParallelDownloadCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v1, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$1;

    invoke-direct {v1, p0, v0, v3}, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$1;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;Landroid/widget/EditText;Lcom/amazon/kindle/services/download/IReaderDownloadManager;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :goto_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->toggle_using_required_exclusive_threading_on_ardm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    const-string v0, "ardmRETCheckBox"

    .line 128
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isARDMUsingRequiredExclusiveThreading()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 129
    new-instance v0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupArdmOptions$2;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private final setupOkHttpOptions(Landroid/view/View;)V
    .locals 2

    .line 135
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_okhttp_web_request_executor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string/jumbo v1, "okHttpCheckbox"

    .line 136
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isOkHttpWebRequestExecutorDebugEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    new-instance v1, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$1;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_http2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "http2Checkbox"

    .line 142
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isHttp2DebugEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    new-instance v1, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$2;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    sget v0, Lcom/amazon/kindle/krl/R$id;->simulate_adp_signing_failure:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const-string/jumbo v0, "simulateAdpFailCheckbox"

    .line 151
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getShouldSimulateAdpFailures()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    sget-object v0, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$3;->INSTANCE:Lcom/amazon/kcp/debug/DownloadDebugMenu$setupOkHttpOptions$3;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private final setupVersionOptions(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "SpoofVersionToForceMobi"

    .line 163
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, ""

    const-string v3, "SpoofPlatformVersion"

    .line 165
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    sget v4, Lcom/amazon/kindle/krl/R$id;->platform_version:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "SpoofAppVersion"

    .line 167
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    sget v3, Lcom/amazon/kindle/krl/R$id;->app_version:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    sget v2, Lcom/amazon/kindle/krl/R$id;->submit_platform_version:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$1;

    invoke-direct {v3, p1, p2}, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$1;-><init>(Landroid/content/SharedPreferences;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget v2, Lcom/amazon/kindle/krl/R$id;->submit_app_version:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$2;

    invoke-direct {v3, p1, p2}, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$2;-><init>(Landroid/content/SharedPreferences;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v2

    const-string v3, "container.force_mobi"

    if-nez v2, :cond_2

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$id;->force_mobi:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    .line 182
    :cond_2
    :goto_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->force_mobi:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    sget v0, Lcom/amazon/kindle/krl/R$id;->force_mobi:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v2, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/kcp/debug/DownloadDebugMenu$setupVersionOptions$3;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;Landroid/content/SharedPreferences;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    xor-int/lit8 p1, v1, 0x1

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->toggleManualOverrideEnabled(ZLandroid/view/View;)V

    :goto_1
    return-void
.end method

.method private final toggleManualOverrideEnabled(ZLandroid/view/View;)V
    .locals 2

    .line 210
    sget v0, Lcom/amazon/kindle/krl/R$id;->platform_version:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "container.platform_version"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 211
    sget v0, Lcom/amazon/kindle/krl/R$id;->submit_platform_version:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "container.submit_platform_version"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    sget v0, Lcom/amazon/kindle/krl/R$id;->app_version:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "container.app_version"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 213
    sget v0, Lcom/amazon/kindle/krl/R$id;->submit_app_version:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const-string v0, "container.submit_app_version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Download Options"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    sget v1, Lcom/amazon/kindle/krl/R$layout;->download_debug_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/ScrollView;

    .line 45
    sget v1, Lcom/amazon/kindle/krl/R$id;->download_debug_linear_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 46
    iget-object v2, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "DebugSettings"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "prefs"

    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "container"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->setupVersionOptions(Landroid/content/SharedPreferences;Landroid/view/View;)V

    .line 49
    invoke-direct {p0, v1}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->setupArdmOptions(Landroid/view/View;)V

    .line 50
    invoke-direct {p0, v1}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->setupOkHttpOptions(Landroid/view/View;)V

    .line 52
    sget v2, Lcom/amazon/kindle/krl/R$id;->download_all_books:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const-string v3, "downloadAllBooks"

    .line 53
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/amazon/kcp/debug/DownloadDebugMenu;->IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Cancel Downloads"

    goto :goto_0

    :cond_0
    const-string v3, "Download All Books"

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v3, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$1;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-static {}, Lcom/amazon/kindle/config/AppConfigManagerSingleton;->getInstance()Lcom/amazon/kindle/config/IAppConfigManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_COROUTINE_DOWNLOAD_WORKFLOW:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/config/IAppConfigManager;->getBool(Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    sget v2, Lcom/amazon/kindle/krl/R$id;->enable_coroutines_workflow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const-string v3, "coroutinesCheckbox"

    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->areCoroutinesDebugEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    new-instance v3, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$2;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$2;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 64
    :cond_1
    sget v2, Lcom/amazon/kindle/krl/R$id;->enable_coroutines_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "container.enable_coroutines_layout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    :goto_1
    sget v2, Lcom/amazon/kindle/krl/R$id;->enable_download_debug_toasts:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const-string v3, "debugToastsCheckbox"

    .line 68
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->shouldShowDownloadDebugToasts()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    new-instance v3, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$3;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$3;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    sget v2, Lcom/amazon/kindle/krl/R$id;->download_fonts_separately:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const-string v3, "downloadFontsSeparately"

    .line 74
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isSeparatelyFontsDownloadEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 75
    new-instance v3, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$4;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$4;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    sget v2, Lcom/amazon/kindle/krl/R$id;->allow_optimal_urls:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const-string v3, "allowOptimalUrls"

    .line 80
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areOptimalManifestUrlsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    new-instance v3, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$5;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$5;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    sget v2, Lcom/amazon/kindle/krl/R$id;->always_fail_downloads:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const-string/jumbo v2, "simulateDownloadFailure"

    .line 86
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areSimulatedDownloadFailuresEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    new-instance v2, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$6;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$6;-><init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.ScrollView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
