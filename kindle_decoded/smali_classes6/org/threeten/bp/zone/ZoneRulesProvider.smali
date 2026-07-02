.class public abstract Lorg/threeten/bp/zone/ZoneRulesProvider;
.super Ljava/lang/Object;
.source "ZoneRulesProvider.java"


# static fields
.field private static final PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/threeten/bp/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZONES:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lorg/threeten/bp/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x200

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/threeten/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    invoke-static {}, Lorg/threeten/bp/zone/ZoneRulesInitializer;->initialize()V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getProvider(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRulesProvider;
    .locals 3

    .line 162
    sget-object v0, Lorg/threeten/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/zone/ZoneRulesProvider;

    if-nez v0, :cond_1

    .line 164
    sget-object v0, Lorg/threeten/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance p0, Lorg/threeten/bp/zone/ZoneRulesException;

    const-string v0, "No time-zone data files registered"

    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :cond_0
    new-instance v0, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown time-zone ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public static getRules(Ljava/lang/String;Z)Lorg/threeten/bp/zone/ZoneRules;
    .locals 1

    const-string v0, "zoneId"

    .line 121
    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    invoke-static {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;->getProvider(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRulesProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/zone/ZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Lorg/threeten/bp/zone/ZoneRules;

    move-result-object p0

    return-object p0
.end method

.method public static registerProvider(Lorg/threeten/bp/zone/ZoneRulesProvider;)V
    .locals 1

    const-string v0, "provider"

    .line 189
    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    invoke-static {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;->registerProvider0(Lorg/threeten/bp/zone/ZoneRulesProvider;)V

    .line 191
    sget-object v0, Lorg/threeten/bp/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static registerProvider0(Lorg/threeten/bp/zone/ZoneRulesProvider;)V
    .locals 4

    .line 201
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneRulesProvider;->provideZoneIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "zoneId"

    .line 202
    invoke-static {v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    sget-object v2, Lorg/threeten/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/zone/ZoneRulesProvider;

    if-nez v2, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance v0, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register zone as one already registered with that ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currently loading from provider: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract provideRules(Ljava/lang/String;Z)Lorg/threeten/bp/zone/ZoneRules;
.end method

.method protected abstract provideZoneIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
