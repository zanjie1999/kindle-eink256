.class public Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;
.super Ljava/lang/Object;
.source "DefaultHeartBeatInfo.java"

# interfaces
.implements Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;


# static fields
.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final consumers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private storageProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$5h7e2emmKpAWwpxh05RIvrnsucg;->INSTANCE:Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$5h7e2emmKpAWwpxh05RIvrnsucg;

    sput-object v0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;",
            ">;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/firebase/components/Lazy;

    new-instance v1, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$je2ND46GdPdsvPNmoQroqBErcG4;

    invoke-direct {v1, p1}, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$je2ND46GdPdsvPNmoQroqBErcG4;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v9, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, v0, p2, p1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;-><init>(Lcom/google/firebase/inject/Provider;Ljava/util/Set;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/inject/Provider;Ljava/util/Set;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    .line 63
    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->consumers:Ljava/util/Set;

    .line 64
    iput-object p3, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static component()Lcom/google/firebase/components/Component;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;"
        }
    .end annotation

    .line 136
    const-class v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 137
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    const-class v1, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;

    .line 138
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->setOf(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    sget-object v1, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$Cgkv7AhyYI-S82YTwefuxHg_iRU;->INSTANCE:Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$Cgkv7AhyYI-S82YTwefuxHg_iRU;

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    .line 141
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$component$4(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;
    .locals 3

    .line 140
    new-instance v0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;

    invoke-interface {p0, v2}, Lcom/google/firebase/components/ComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getInstance(Landroid/content/Context;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "heartbeat-information-executor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getHeartBeatCode(Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    .locals 3

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    .line 71
    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendSdkHeartBeat(Ljava/lang/String;J)Z

    move-result p1

    .line 72
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendGlobalHeartBeat(J)Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 74
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->COMBINED:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 76
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->GLOBAL:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 78
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->SDK:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-object p1

    .line 80
    :cond_2
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-object p1
.end method
