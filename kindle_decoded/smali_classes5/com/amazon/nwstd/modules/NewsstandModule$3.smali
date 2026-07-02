.class Lcom/amazon/nwstd/modules/NewsstandModule$3;
.super Ljava/lang/Object;
.source "NewsstandModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/modules/NewsstandModule;->initializeService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/modules/NewsstandModule;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/modules/NewsstandModule;Landroid/content/Context;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/amazon/nwstd/modules/NewsstandModule$3;->this$0:Lcom/amazon/nwstd/modules/NewsstandModule;

    iput-object p2, p0, Lcom/amazon/nwstd/modules/NewsstandModule$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 224
    iget-object v0, p0, Lcom/amazon/nwstd/modules/NewsstandModule$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 225
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v1

    .line 226
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandPurchaseBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 230
    :cond_0
    new-instance v1, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;

    invoke-direct {v1}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;-><init>()V

    .line 231
    invoke-static {v1}, Lcom/amazon/nwstd/service/NwstdIntentService;->registerIntentHandler(Lcom/amazon/nwstd/service/IIntentHandler;)Z

    .line 233
    new-instance v1, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;

    invoke-direct {v1}, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;-><init>()V

    .line 234
    invoke-static {v1}, Lcom/amazon/nwstd/service/NwstdIntentService;->registerIntentHandler(Lcom/amazon/nwstd/service/IIntentHandler;)Z

    .line 236
    iget-object v1, p0, Lcom/amazon/nwstd/modules/NewsstandModule$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->isAlarmRegistered(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amazon/nwstd/modules/NewsstandModule$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    invoke-static {}, Lcom/amazon/nwstd/modules/NewsstandModule;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "Registering upsell sync alarm"

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/amazon/nwstd/modules/NewsstandModule$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v1

    const-string/jumbo v3, "upsell.sync.timestamp"

    invoke-virtual {v1, v3}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v3, 0x5265c00

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_2

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v1, v7, v5

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 244
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    sub-long v7, v3, v7

    .line 246
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_1

    :cond_2
    move-wide v7, v5

    :goto_1
    cmp-long v1, v7, v5

    if-nez v1, :cond_3

    .line 251
    invoke-static {}, Lcom/amazon/nwstd/modules/NewsstandModule;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Upsell data are outdated, forcing a data sync"

    invoke-static {v1, v2, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/amazon/nwstd/modules/NewsstandModule$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->launchOneShotFullSync(Landroid/content/Context;)V

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/amazon/nwstd/modules/NewsstandModule$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v7, v8, v3, v4}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->registerAlarm(Landroid/content/Context;JJ)V

    goto :goto_2

    .line 257
    :cond_4
    iget-object v1, p0, Lcom/amazon/nwstd/modules/NewsstandModule$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 259
    iget-object v1, p0, Lcom/amazon/nwstd/modules/NewsstandModule$3;->this$0:Lcom/amazon/nwstd/modules/NewsstandModule;

    invoke-static {v1}, Lcom/amazon/nwstd/modules/NewsstandModule;->access$100(Lcom/amazon/nwstd/modules/NewsstandModule;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/nwstd/upsell/UpsellUtils;->runFullSyncBasedOnTheValueConfiguredFromServer(Landroid/content/Context;)V

    .line 262
    :cond_5
    :goto_2
    new-instance v1, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;

    invoke-direct {v1}, Lcom/amazon/nwstd/service/upsell/UpsellTrialContentBoughtHandler;-><init>()V

    invoke-static {v1}, Lcom/amazon/nwstd/service/NwstdIntentService;->registerIntentHandler(Lcom/amazon/nwstd/service/IIntentHandler;)Z

    .line 263
    new-instance v1, Lcom/amazon/nwstd/service/upsell/UpsellInterstitialPageDismissedHandler;

    invoke-direct {v1}, Lcom/amazon/nwstd/service/upsell/UpsellInterstitialPageDismissedHandler;-><init>()V

    invoke-static {v1}, Lcom/amazon/nwstd/service/NwstdIntentService;->registerIntentHandler(Lcom/amazon/nwstd/service/IIntentHandler;)Z

    .line 264
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 265
    new-instance v2, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;

    invoke-direct {v2}, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;-><init>()V

    .line 266
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    new-instance v3, Lcom/amazon/nwstd/service/upsell/UpsellCORPFMUpdatedEventHandler;

    invoke-direct {v3}, Lcom/amazon/nwstd/service/upsell/UpsellCORPFMUpdatedEventHandler;-><init>()V

    invoke-interface {v0, v3}, Lcom/amazon/kindle/event/IEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 267
    iget-object v0, p0, Lcom/amazon/nwstd/modules/NewsstandModule$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    goto :goto_4

    .line 227
    :cond_6
    :goto_3
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->clearUpsellData()V

    :goto_4
    return-void
.end method
