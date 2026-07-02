.class public Lcom/amazon/kcp/debug/DebugPlugin;
.super Ljava/lang/Object;
.source "DebugPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->debug:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "DebugPlugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/debug/DebugPlugin$CantileverDebugMenuPage;,
        Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;,
        Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;,
        Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;,
        Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private registerAppCoreDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 419
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 421
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$25;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$25;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerAppShortcutsDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 269
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 270
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$14;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$14;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerAppUtilsDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 326
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 328
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$17;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$17;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerAuthenticationDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 87
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/amazon/kcp/debug/DebugPlugin$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$2;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerBottomSheetDebugProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 77
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 78
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$1;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerCantileverDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 306
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 307
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$15;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$15;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerCrashDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 337
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 339
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$18;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$18;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerDebugMenuProviders(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerAuthenticationDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerInBookDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerLibraryDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerDownloadDebugMenu(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerLoggingDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerReaderSearchDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerSeriesGroupingDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerRubyDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerGlideDebugMenuPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerPerfMarkersDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerUpgradeDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerKfcShareUxDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerCantileverDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerNotesAndHighlightDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerAppUtilsDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerCrashDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerAppShortcutsDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerOneTapBookOpenSettingsDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerReaderSyncCxDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerDeliveryServiceSettingDebugProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerBottomSheetDebugProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerStoreDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerStrictModeDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerPaymentUtilsDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerAppCoreDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method private registerDeliveryServiceSettingDebugProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 358
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 359
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$20;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$20;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerDownloadDebugMenu(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 129
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 131
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$6;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerGlideDebugMenuPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 171
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 172
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$10;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$10;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerInBookDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 118
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 120
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$5;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerKfcShareUxDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 228
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 232
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$13;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$13;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerLibraryDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 107
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 109
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$4;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerLoggingDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 140
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 142
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$7;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$7;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerNotesAndHighlightDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 316
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 317
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$16;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$16;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerOneTapBookOpenSettingsDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 348
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 349
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$19;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$19;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerPaymentUtilsDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 405
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isPlayStoreBuild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 410
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$24;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$24;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerPerfMarkersDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 181
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 182
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$11;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$11;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerReaderSearchDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 151
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 152
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$8;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$8;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerReaderSyncCxDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 368
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 369
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$21;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$21;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerRubyDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 161
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 162
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$9;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$9;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerSeriesGroupingDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 97
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 98
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$3;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerStoreDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 378
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 380
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$22;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$22;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerStrictModeDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 395
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$23;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$23;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private registerUpgradeDebugMenuProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 191
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    .line 192
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$12;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$12;-><init>(Lcom/amazon/kcp/debug/DebugPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin;->registerDebugMenuProviders(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method
