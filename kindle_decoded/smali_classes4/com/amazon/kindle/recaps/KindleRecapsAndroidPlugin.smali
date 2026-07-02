.class public final Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;
.super Ljava/lang/Object;
.source "KindleRecapsAndroidPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "KindleRecapsAndroidPlugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

.field public static debugConfig:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

.field public static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDebugConfig$cp()Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->debugConfig:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "debugConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final synthetic access$getSdk$cp()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public getDependecies()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDependecies()Ljava/util/Collection;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->getDependecies()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 4

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sput-object p1, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 24
    new-instance v0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sdk.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->debugConfig:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    .line 25
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenuProvider;

    sget-object v3, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->debugConfig:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    if-eqz v3, :cond_1

    invoke-direct {v1, v3}, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenuProvider;-><init>(Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 26
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/recaps/ingress/RecapIngressButtonProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/recaps/ingress/RecapIngressButtonProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerTitleBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 27
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItemProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItemProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomPanelProvider(Lcom/amazon/kindle/krx/ui/panels/ICustomPanelContentProvider;)V

    .line 33
    :goto_0
    new-instance v0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;

    invoke-direct {v0}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetController;-><init>()V

    .line 36
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 38
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 40
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getTutorialManager()Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/recaps/tutorial/RecapsTutorialProvider;

    invoke-direct {v0}, Lcom/amazon/kindle/recaps/tutorial/RecapsTutorialProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/tutorial/ITutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    return-void

    :cond_1
    const-string p1, "debugConfig"

    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
