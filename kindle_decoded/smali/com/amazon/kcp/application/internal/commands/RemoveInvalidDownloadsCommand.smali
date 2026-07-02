.class public final Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;
.super Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;
.source "RemoveInvalidDownloadsCommand.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final librarySharedPreferences:Landroid/content/SharedPreferences;

.field private final timeInMinutes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/network/INetworkService;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "networkService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->context:Landroid/content/Context;

    .line 41
    const-class p1, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils.getTag(RemoveInval\u2026loadsCommand::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->TAG:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->context:Landroid/content/Context;

    const-string v0, "LibrarySettings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "context.getSharedPrefere\u2026FS, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->librarySharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "LastInvalidDownloadsSyncDate"

    const-wide/16 v1, -0x1

    .line 45
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    .line 53
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    .line 50
    :cond_0
    iput-wide v1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->timeInMinutes:J

    .line 58
    invoke-interface {p2}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->librarySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doExecute()V
    .locals 8

    .line 66
    sget-object v0, Lcom/amazon/kcp/debug/RemoveInvalidDownloadsDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/RemoveInvalidDownloadsDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/RemoveInvalidDownloadsDebugUtils;->isRemoveInvalidDownloadsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/32 v0, 0xae60

    .line 68
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "DebugSettings"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 70
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    const-string v6, "RemovingInvalidDownloadsDebugMinutes"

    .line 71
    invoke-interface {v2, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-eqz v2, :cond_0

    move-wide v0, v6

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->librarySharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "INVALID_DOWNLOADS_REMOVAL_REQUEST_SUBMITTED"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 77
    iget-wide v5, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->timeInMinutes:J

    cmp-long v7, v5, v0

    if-gez v7, :cond_1

    if-eqz v2, :cond_2

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Invalid Downloads Request initiated as device was offline for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->timeInMinutes:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->librarySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    const-class v0, Lcom/amazon/kcp/application/internal/commands/InvalidDownloadsHandler;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/internal/commands/InvalidDownloadsHandler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->librarySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/internal/commands/InvalidDownloadsHandler;->removeInvalidDownloads(Landroid/content/SharedPreferences;)V

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;->postKill()V

    return-void
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->librarySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "LastInvalidDownloadsSyncDate"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    iget-object p1, p0, Lcom/amazon/kcp/application/internal/commands/RemoveInvalidDownloadsCommand;->librarySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "INVALID_DOWNLOADS_REMOVAL_REQUEST_SUBMITTED"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
