.class public final Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriberImpl;
.super Ljava/lang/Object;
.source "InAppNotificationsSubscriberImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationHandler(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;
    .locals 2

    const-string v0, "tapAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getName()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreDetailPageHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreDetailPageHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreDetailPageHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreDetailPageHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreDetailPageHandler;-><init>()V

    goto/16 :goto_0

    .line 45
    :cond_0
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;-><init>()V

    goto/16 :goto_0

    .line 46
    :cond_1
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPageIdHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPageIdHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPageIdHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPageIdHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPageIdHandler;-><init>()V

    goto/16 :goto_0

    .line 47
    :cond_2
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;-><init>()V

    goto/16 :goto_0

    .line 48
    :cond_3
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenKindleUnlimitedHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenKindleUnlimitedHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenKindleUnlimitedHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenKindleUnlimitedHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenKindleUnlimitedHandler;-><init>()V

    goto :goto_0

    .line 49
    :cond_4
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenAsinHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenAsinHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenAsinHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenAsinHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenAsinHandler;-><init>()V

    goto :goto_0

    .line 50
    :cond_5
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;-><init>()V

    goto :goto_0

    .line 51
    :cond_6
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;-><init>()V

    goto :goto_0

    .line 52
    :cond_7
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler;-><init>()V

    goto :goto_0

    .line 55
    :cond_8
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/InvalidTapActionHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/InvalidTapActionHandler;-><init>()V

    .line 57
    :goto_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/InvalidTapActionHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/InvalidTapActionHandler;-><init>()V

    :goto_1
    return-object v0
.end method

.method public supportedTapActions()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 26
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreDetailPageHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreDetailPageHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreDetailPageHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 27
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 28
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPageIdHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPageIdHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPageIdHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 29
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenAsinHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenAsinHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenAsinHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 30
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 31
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 32
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/DownloadSampleHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 33
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 25
    invoke-static {v0}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/build/BuildInfo;->isThirdPartyBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenKindleUnlimitedHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenKindleUnlimitedHandler;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenKindleUnlimitedHandler;->getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
