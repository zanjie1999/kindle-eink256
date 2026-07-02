.class public Lcom/amazon/kindle/krx/PluginInitializer;
.super Ljava/lang/Object;
.source "PluginInitializer.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IPluginInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/PluginInitializer$InitTask;
    }
.end annotation


# static fields
.field private static final INITIALIZATION_PREFIX:Ljava/lang/String; = "InitializePlugin-"

.field private static final METRICS_SOURCE_PREFIX:Ljava/lang/String; = "PLUGIN_INITIALIZER_"

.field private static final METRICS_TIMER_ALL_PLUGINS:Ljava/lang/String; = "METRICS_TIMER_ALL_PLUGINS"

.field private static final REPLACE_BLANK:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.krx.PluginInitializer"

.field private static instance:Lcom/amazon/kindle/krx/plugin/IPluginInitializer;


# instance fields
.field private initializedPlugins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private registry:Lcom/amazon/kindle/krx/IPluginRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s+"

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/PluginInitializer;->REPLACE_BLANK:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/amazon/kindle/krx/PluginInitializer;->instance:Lcom/amazon/kindle/krx/plugin/IPluginInitializer;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/IPluginRegistry;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/PluginInitializer;->initializedPlugins:Ljava/util/Set;

    .line 60
    iput-object p1, p0, Lcom/amazon/kindle/krx/PluginInitializer;->registry:Lcom/amazon/kindle/krx/IPluginRegistry;

    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/krx/PluginInitializer;->REPLACE_BLANK:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/krx/PluginInitializer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kindle/krx/plugin/IPluginInitializer;
    .locals 3

    const-class v0, Lcom/amazon/kindle/krx/PluginInitializer;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/PluginInitializer;->instance:Lcom/amazon/kindle/krx/plugin/IPluginInitializer;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/amazon/kindle/krx/PluginInitializer;

    new-instance v2, Lcom/amazon/kindle/krx/PluginRegistry;

    invoke-direct {v2}, Lcom/amazon/kindle/krx/PluginRegistry;-><init>()V

    invoke-direct {v1, v2}, Lcom/amazon/kindle/krx/PluginInitializer;-><init>(Lcom/amazon/kindle/krx/IPluginRegistry;)V

    sput-object v1, Lcom/amazon/kindle/krx/PluginInitializer;->instance:Lcom/amazon/kindle/krx/plugin/IPluginInitializer;

    .line 55
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/PluginInitializer;->instance:Lcom/amazon/kindle/krx/plugin/IPluginInitializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/util/Map;Ljava/util/concurrent/ExecutorService;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/plugin/IReaderPlugin;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/amazon/kindle/krx/plugin/Plugin$Entry;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 134
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    const-string v2, "METRICS_TIMER_ALL_PLUGINS"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 135
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPerformanceMarkerFactory()Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    move-result-object v1

    .line 137
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 138
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/plugin/IReaderPlugin;

    .line 140
    invoke-interface {v4}, Lcom/amazon/kindle/krx/plugin/IReaderPlugin;->getDependecies()Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 143
    invoke-interface {v10, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 147
    :cond_1
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 149
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/lang/String;

    .line 153
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/amazon/kindle/krx/plugin/IReaderPlugin;

    .line 157
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/plugin/IReaderPlugin;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/plugin/IReaderPlugin;->getDependecies()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 159
    invoke-interface {v8}, Lcom/amazon/kindle/krx/plugin/IReaderPlugin;->getDependecies()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 162
    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_2

    .line 172
    new-instance v14, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;

    new-instance v15, Lcom/amazon/kindle/krx/PluginInitializer$1;

    move-object v3, v15

    move-object/from16 v4, p0

    move-object v5, v13

    move-object v6, v1

    move-object/from16 v7, p1

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/amazon/kindle/krx/PluginInitializer$1;-><init>(Lcom/amazon/kindle/krx/PluginInitializer;Ljava/lang/String;Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/IReaderPlugin;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;)V

    invoke-direct {v14, v13, v15}, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 210
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    .line 215
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_7

    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-ge v4, v6, :cond_7

    .line 220
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;

    iget-object v6, v6, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 223
    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 227
    :cond_6
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 231
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;

    iget-object v4, v4, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    if-eqz v3, :cond_8

    .line 235
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 239
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Initialization failed for plugin"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 247
    :cond_8
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;

    .line 249
    iget-object v5, v4, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;->pluginName:Ljava/lang/String;

    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, p0

    .line 250
    iget-object v7, v5, Lcom/amazon/kindle/krx/PluginInitializer;->initializedPlugins:Ljava/util/Set;

    iget-object v8, v4, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;->pluginName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v4, v4, Lcom/amazon/kindle/krx/PluginInitializer$InitTask;->pluginName:Ljava/lang/String;

    invoke-interface {v10, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    goto/16 :goto_1

    :cond_a
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "circular or missing dependency detected amongst plugins: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v5, p0

    .line 254
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLUGIN_INITIALIZER_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TOTAL"

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInitializedPluginNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/amazon/kindle/krx/PluginInitializer;->initializedPlugins:Ljava/util/Set;

    return-object v0
.end method

.method public initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;I)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/krx/PluginInitializer;->initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;ILjava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;ILjava/util/concurrent/ExecutorService;)V
    .locals 7

    .line 89
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GetPlugins"

    .line 91
    invoke-static {v0}, Lcom/amazon/kindle/krx/util/TraceProxy;->beginSection(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/PluginInitializer;->registry:Lcom/amazon/kindle/krx/IPluginRegistry;

    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/IPluginRegistry;->getPlugin(Lcom/amazon/kindle/krx/plugin/Plugin$Entry;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "GetUserRole"

    .line 95
    invoke-static {v1}, Lcom/amazon/kindle/krx/util/TraceProxy;->beginSection(Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    .line 97
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    .line 100
    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/application/IUserAccount;->getAccountProperty(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CHILD"

    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    sget-object v1, Lcom/amazon/kindle/krx/plugin/Plugin$Role;->child:Lcom/amazon/kindle/krx/plugin/Plugin$Role;

    .line 107
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-static {}, Lcom/amazon/kindle/krx/util/TraceProxy;->endSection()V

    .line 112
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;

    .line 117
    iget v5, v4, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->min:I

    if-gt v5, p3, :cond_3

    iget v5, v4, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->max:I

    if-lt v5, p3, :cond_3

    iget-object v5, p0, Lcom/amazon/kindle/krx/PluginInitializer;->initializedPlugins:Ljava/util/Set;

    iget-object v6, v4, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->name:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 120
    iget-object v5, v4, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->roles:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 124
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/plugin/IReaderPlugin;

    .line 125
    iget-object v4, v4, Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;->name:Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_5
    invoke-static {}, Lcom/amazon/kindle/krx/util/TraceProxy;->endSection()V

    .line 129
    invoke-direct {p0, p1, v2, p4, p2}, Lcom/amazon/kindle/krx/PluginInitializer;->initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/util/Map;Ljava/util/concurrent/ExecutorService;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;)V

    return-void
.end method

.method public initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Scope;I)V
    .locals 1

    .line 69
    sget-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;

    if-ne p2, v0, :cond_0

    .line 70
    sget-object p2, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/PluginInitializer;->initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;I)V

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->content:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;

    if-ne p2, v0, :cond_1

    .line 73
    sget-object p2, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_after:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/PluginInitializer;->initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;I)V

    :cond_1
    :goto_0
    return-void
.end method
