.class public Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;
.super Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;
.source "InternalTracer.java"


# static fields
.field private static final SETTING_FORMAT:Ljava/lang/String; = "%s_tracing_enabled"


# instance fields
.field private final mFactory:Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory;

.field private final mFeatureName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNeedToInitializeTracer:Z

.field private final mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory;Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mNeedToInitializeTracer:Z

    .line 22
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mFactory:Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory;

    .line 23
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mFeatureName:Ljava/lang/String;

    .line 24
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    invoke-direct {p1, p3}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;-><init>([Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    .line 26
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->updateSettings()V

    .line 27
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object p1

    new-instance p2, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer$1;

    invoke-direct {p2, p0}, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer$1;-><init>(Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;)V

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->addListener(Lcom/amazon/whispersync/dcp/settings/SettingsCache$IListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->updateSettings()V

    return-void
.end method

.method private isTracingEnabled()Z
    .locals 6

    .line 60
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 61
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mFeatureName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s_tracing_enabled"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "all"

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private updateSettings()V
    .locals 4

    .line 39
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mNeedToInitializeTracer:Z

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mFactory:Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory;->create(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->setTracer(Lcom/amazon/whispersync/dcp/framework/tracing/ITracer;)V

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mNeedToInitializeTracer:Z

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->enable()V

    .line 50
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->disable()V

    :goto_0
    return-void
.end method


# virtual methods
.method public trace(Ljava/lang/Enum;II)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->trace(Ljava/lang/Enum;II)V

    return-void
.end method

.method public trace(Ljava/lang/Enum;IILjava/lang/String;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->mTracerWrapper:Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/tracing/TracerWrapper;->trace(Ljava/lang/Enum;IILjava/lang/String;)V

    return-void
.end method
