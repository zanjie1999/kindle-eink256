.class public final Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin;
.super Ljava/lang/Object;
.source "ProfilesPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "Profiles Plugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createActivityProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/library/ActivityProvider;
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin$createActivityProvider$1;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin$createActivityProvider$1;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method private final registerProfilesDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 25
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    const-string v0, "sdk.applicationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin$registerProfilesDebugPage$1;->INSTANCE:Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin$registerProfilesDebugPage$1;

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
    .locals 4

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin;->registerProfilesDebugPage(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 18
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sdk.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->initDebugValues(Landroid/content/Context;)V

    .line 19
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin;->createActivityProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/library/ActivityProvider;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object p1

    const-string v3, "sdk.networkService"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Lcom/amazon/kcp/profiles/ui/button/FamilySharingActionButtonProvider;-><init>(Lcom/amazon/kcp/library/ActivityProvider;Lcom/amazon/kindle/krx/network/INetworkService;)V

    .line 19
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerContextualActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method
