.class public final Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;
.super Ljava/lang/Object;
.source "ExtensionsFactoryProducer.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtensionsFactory(Landroid/content/Context;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;
    .locals 9

    .line 47
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->ExtensionFactoryCreationTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getting Hushpuppy Extensions Factory class name"

    .line 53
    invoke-static {v3}, Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;->nextOp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 54
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->extension:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting Hushpuppy Extensions Factory class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;->nextOp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 61
    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getting Hushpuppy Extensions Factory constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;->nextOp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v4, 0x2

    :try_start_3
    new-array v6, v4, [Ljava/lang/Class;

    .line 65
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v0

    const-class v7, Lde/greenrobot/event/EventBus;

    aput-object v7, v6, v1

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "constructing Hushpuppy Extensions Factory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;->nextOp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    aput-object p1, v4, v1

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;

    .line 70
    sget-object v4, Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hushpuppy Extensions Factory is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v2, v5

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v2, v4

    goto :goto_0

    .line 56
    :cond_0
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "class name is empty!"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v2

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_0

    :catch_3
    move-exception v3

    .line 73
    :goto_0
    sget-object v4, Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    new-instance v3, Lcom/audible/hushpuppy/extensions/DefaultExtensionsFactory;

    invoke-direct {v3, p0, p1}, Lcom/audible/hushpuppy/extensions/DefaultExtensionsFactory;-><init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;)V

    .line 78
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lcom/audible/hushpuppy/extensions/DefaultExtensionsFactory;

    if-ne p0, p1, :cond_1

    .line 79
    sget-object p0, Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array p1, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Hushpuppy Extensions Factory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hushpuppy will be disabled!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-interface {p0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 82
    :cond_1
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p0

    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->ExtensionFactoryCreationTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-object v3
.end method

.method private static nextOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 92
    sget-object v0, Lcom/audible/hushpuppy/extensions/ExtensionsFactoryProducer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-object p0
.end method
