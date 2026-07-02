.class public final Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;

.field private static final isFirstPartyBuild:Z

.field private static final isThirdPartyBuild:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;

    .line 12
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->isFirstPartyBuild:Z

    .line 18
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    sget-object v2, Lcom/amazon/kindle/krx/application/AppType;->KFA:Lcom/amazon/kindle/krx/application/AppType;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    sget-object v2, Lcom/amazon/kindle/krx/application/AppType;->KFC:Lcom/amazon/kindle/krx/application/AppType;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    sget-object v2, Lcom/amazon/kindle/krx/application/AppType;->KFS:Lcom/amazon/kindle/krx/application/AppType;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v1

    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/application/AppType;->KFE:Lcom/amazon/kindle/krx/application/AppType;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :goto_5
    sput-boolean v0, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->isThirdPartyBuild:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFirstPartyBuild()Z
    .locals 1

    .line 12
    sget-boolean v0, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->isFirstPartyBuild:Z

    return v0
.end method

.method public final isThirdPartyBuild()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->isThirdPartyBuild:Z

    return v0
.end method
