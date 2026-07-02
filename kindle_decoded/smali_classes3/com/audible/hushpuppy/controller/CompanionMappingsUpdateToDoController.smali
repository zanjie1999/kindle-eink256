.class public final Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;
.super Ljava/lang/Object;
.source "CompanionMappingsUpdateToDoController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final batchController:Lcom/audible/relationship/controller/IAsinPairBatchController;

.field private final dbScalingRelationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

.field private final legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

.field private final mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

.field private final sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/relationship/controller/IAsinPairBatchController;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/mobile/preferences/PreferenceStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/relationship/controller/IAsinPairBatchController;",
            "Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->batchController:Lcom/audible/relationship/controller/IAsinPairBatchController;

    .line 83
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    .line 84
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->dbScalingRelationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    .line 85
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 86
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    return-void
.end method

.method private handleAsinPairAUCMToDo(Ljava/lang/String;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "T1"

    .line 134
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->toggleDBScaling(Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->dbScalingRelationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    invoke-interface {p1}, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;->requestFullRelationshipForce()V

    goto :goto_0

    .line 139
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiving TODO with key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->batchController:Lcom/audible/relationship/controller/IAsinPairBatchController;

    invoke-interface {v0, p1}, Lcom/audible/relationship/controller/IAsinPairBatchController;->add(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleLegacyAUCMToDo()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C"

    .line 146
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->toggleDBScaling(Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;->updatePartialCompanionMappings()V

    return-void
.end method

.method private handleLegacyAUDIToDo(Ljava/lang/String;)V
    .locals 3

    .line 153
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->PartialCompanionMappingAferToDo:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 155
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;->updatePartialCompanionMappings(Lcom/audible/mobile/domain/Asin;)V

    :cond_0
    return-void
.end method

.method private toggleDBScaling(Ljava/lang/String;)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    const-string v1, "AUDIBLE_HP_COMPANION_MAPPING_165984"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->recordTrigger(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v2, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const-string v3, "T1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/audible/mobile/preferences/PreferenceStore;->setBoolean(Ljava/lang/Object;Z)V

    .line 167
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->getTreatment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v0, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_MISMATCH_EXPECTED_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/audible/mobile/preferences/PreferenceStore;->setBoolean(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 4

    .line 100
    sget-object v0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Companion ToDo handle: Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 102
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 104
    sget-object p1, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "TODO key is null or blank! Do nothing."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return v2

    .line 108
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DOWNLOAD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AUCM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    sget-object p1, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received AUCM TODO message, stopping TODO Timer metrics"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;->PartialCompanionMappingAferToDo:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ReaderEventsKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 111
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->TimeForTodoAfterPurchase:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-virtual {p1, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 112
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->TimeForTodoAfterWebviewPurchase:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-virtual {p1, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    const-string p1, "NONE"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->handleLegacyAUCMToDo()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->handleAsinPairAUCMToDo(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "REMOVE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AUDI"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    .line 121
    invoke-interface {p1, v1, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->getBoolean(Ljava/lang/Object;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 122
    sget-object p1, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received AUDI TODO message"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->handleLegacyAUDIToDo(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 3

    .line 92
    sget-object v0, Lcom/audible/hushpuppy/controller/CompanionMappingsUpdateToDoController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Companion ToDo support: Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 93
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DOWNLOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REMOVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AUDI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
