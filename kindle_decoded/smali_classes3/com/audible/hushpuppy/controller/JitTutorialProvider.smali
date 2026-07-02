.class public Lcom/audible/hushpuppy/controller/JitTutorialProvider;
.super Lcom/amazon/kindle/krx/tutorial/TutorialProvider;
.source "JitTutorialProvider.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/IJitTutorialProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/JitTutorialProvider$TutorialEvent;,
        Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;
    }
.end annotation


# static fields
.field private static final AUDIBLE_BROCHURE_ID:Ljava/lang/String; = "b16d88234beda0258a5f20e96dea9589"

.field private static final AUDIBLE_TOPIC:Ljava/lang/String; = "Audible"

.field private static final DATA_IS_AUDIBLE_COMPANION_AUTO_DOWNLOAD_ENABLED:Ljava/lang/String; = "AudibleCompanionAutoDownloadEnabled"

.field private static final DATA_SHOULD_DOWNLOAD_AUDIOBOOK:Ljava/lang/String; = "ShouldDownloadAudiobook"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

.field private final jitTutorialListener:Lcom/audible/hushpuppy/controller/JitTutorialListener;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

.field private final platformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 9

    const-string v8, "Audible"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 160
    invoke-direct/range {v0 .. v8}, Lcom/audible/hushpuppy/controller/JitTutorialProvider;-><init>(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Ljava/lang/String;)V
    .locals 0

    .line 169
    invoke-direct {p0, p8}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;-><init>(Ljava/lang/String;)V

    .line 170
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 171
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->platformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    .line 172
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 173
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 174
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 175
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 176
    new-instance p2, Lcom/audible/hushpuppy/controller/JitTutorialListener;

    invoke-direct {p2}, Lcom/audible/hushpuppy/controller/JitTutorialListener;-><init>()V

    iput-object p2, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->jitTutorialListener:Lcom/audible/hushpuppy/controller/JitTutorialListener;

    .line 177
    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private reportOccuredMetric(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;)V
    .locals 2

    .line 399
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, p1, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method private startJitTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;)V
    .locals 1

    .line 345
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method

.method private stopJitTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;)V
    .locals 1

    .line 350
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitEvaluateResponseTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->startJitTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 202
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "JIT: Tutorial event is null"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 206
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;->EQUAL:Lcom/amazon/kindle/krx/tutorial/conditions/IConditionEvaluator$ComparisonType;

    if-ne p4, v1, :cond_10

    .line 210
    sget-object p4, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const-string v5, "JIT: Evaluate called with tutorialEvent: %s, key: %s, value: %s"

    invoke-interface {p4, v5, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-static {p2}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_f

    invoke-static {p3}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_7

    .line 217
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getEventData()Landroid/os/Bundle;

    move-result-object p4

    if-nez p4, :cond_2

    .line 220
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "JIT: Event data is null. Returning false"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    :cond_2
    const-string v2, "Asin"

    .line 225
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Guid"

    .line 226
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MimeType"

    .line 227
    invoke-virtual {p4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Format"

    .line 228
    invoke-virtual {p4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 230
    sget-object v7, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    aput-object v5, v1, v3

    aput-object v6, v1, v4

    const-string v4, "JIT: Evaluate called with asin: %s, version: %s, mineType: %s,"

    invoke-interface {v7, v4, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-static {v2}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "JIT: Asin is null or empty. Returning false"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 240
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;->AUDIOBOOK_PURCHASED:Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;->getEventString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p4}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 243
    :cond_4
    invoke-static {v6}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 246
    invoke-static {v6}, Lcom/amazon/kindle/krx/content/BookFormat;->getBookFormatFromMimeType(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->getFormatFromBookFormat(Lcom/amazon/kindle/krx/content/BookFormat;)Ljava/lang/String;

    move-result-object p4

    .line 252
    :goto_0
    invoke-static {p4}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 253
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "JIT: Book Format is empty or null. Returning false"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 257
    :cond_5
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 258
    invoke-static {v5}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->getVersionFromGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1, p4}, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;->getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 260
    invoke-static {v5}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->getVersionFromGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1, p4}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_d

    .line 263
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasSampleAudiobook()Z

    move-result p4

    if-eqz p4, :cond_7

    goto/16 :goto_6

    .line 269
    :cond_7
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p4

    if-nez p4, :cond_8

    .line 270
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "JIT: Audiobook null is null. Returning false"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 271
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitEvaluateResponseTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->stopJitTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;)V

    return v0

    :cond_8
    const-string p4, "ShouldDownloadAudiobook"

    .line 277
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 278
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 279
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p2, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileQueued(Lcom/audible/mobile/domain/Asin;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 280
    invoke-interface {p2, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloading(Lcom/audible/mobile/domain/Asin;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p2, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 p1, 0x1

    .line 281
    :goto_3
    sget-object p2, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v1, "JIT: Is audiobook downloaded or downloading or queued: %s,"

    invoke-interface {p2, v1, p4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-ne p2, p1, :cond_c

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    :cond_b
    const-string p1, "AudibleCompanionAutoDownloadEnabled"

    .line 283
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 284
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 285
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadUtils;->isAutoDownloadEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Z

    move-result p1

    .line 286
    sget-object p2, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v1, "JIT: Is Audible Companion auto download feature enabled: %s,"

    invoke-interface {p2, v1, p4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-ne p2, p1, :cond_c

    goto :goto_4

    .line 290
    :cond_c
    :goto_5
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitEvaluateResponseTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->stopJitTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;)V

    .line 291
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "JIT: Evaluate response returned %s"

    invoke-interface {p1, p3, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 264
    :cond_d
    :goto_6
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "JIT: Relationship is null or its a sample audiobook. Returning false"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 265
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitEvaluateResponseTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->stopJitTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;)V

    return v0

    .line 248
    :cond_e
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "JIT: Format or MimeType is empty. Returning false"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 213
    :cond_f
    :goto_7
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "JIT: Key or value is null or empty. Returning false."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v0

    .line 207
    :cond_10
    new-instance p1, Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;

    const-string p2, "Audible JIT provider expects EQUAL as the comparison type"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/krx/tutorial/conditions/InvalidComparisonTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getLifecycleListener(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;
    .locals 2

    .line 336
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "JIT: getLifecycleListener called with id %s "

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string v0, "b16d88234beda0258a5f20e96dea9589"

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->jitTutorialListener:Lcom/audible/hushpuppy/controller/JitTutorialListener;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/file/AutoDownloadNotHappeningEvent;)V
    .locals 4

    .line 360
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "JIT: Received AutoDownloadNotHappeningEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/AutoDownloadNotHappeningEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    .line 362
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 363
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_1

    .line 369
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "JIT: Book not open"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 373
    :cond_1
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 376
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "JIT: Not the same book"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 379
    :cond_2
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v1

    if-nez v1, :cond_3

    .line 380
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "User doesn\'t own audiobook."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 384
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Asin"

    .line 385
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Format"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getVersion()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Guid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TutorialEvent;

    sget-object v2, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;->AUDIOBOOK_PURCHASED:Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TriggerEvent;->getEventString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p0, v2, v1}, Lcom/audible/hushpuppy/controller/JitTutorialProvider$TutorialEvent;-><init>(Lcom/audible/hushpuppy/controller/JitTutorialProvider;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    .line 390
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "JIT: Published audiobook purchased event for asin %s"

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 364
    :cond_4
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "JIT: ebook or asin is null"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public final onTutorialStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;Lcom/amazon/kindle/krx/tutorial/TutorialStatus;)V
    .locals 4

    .line 307
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v3, 0x2

    aput-object p3, v1, v3

    const/4 p3, 0x3

    aput-object p4, v1, p3

    const-string p3, "JIT: onTutorialStatus called with id %s , triggerTopic %s , triggerEvent %s, status %s"

    invoke-interface {v0, p3, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {p2}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "b16d88234beda0258a5f20e96dea9589"

    .line 317
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 321
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$TutorialStatus:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_0

    .line 326
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitReadyButNotShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->reportOccuredMetric(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;)V

    goto :goto_0

    .line 323
    :cond_3
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitShown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->reportOccuredMetric(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;)V

    :goto_0
    return-void

    .line 311
    :cond_4
    :goto_1
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Invalid inputs. Returning"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public final registerJitProvider()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->platformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;->showJit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "JIT: Registering audible tutorial provider to TutorialManager"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getTutorialManager()Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/tutorial/ITutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    :cond_0
    return-void
.end method
