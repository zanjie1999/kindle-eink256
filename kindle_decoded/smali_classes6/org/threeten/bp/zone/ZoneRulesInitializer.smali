.class public abstract Lorg/threeten/bp/zone/ZoneRulesInitializer;
.super Ljava/lang/Object;
.source "ZoneRulesInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/ZoneRulesInitializer$ServiceLoaderZoneRulesInitializer;,
        Lorg/threeten/bp/zone/ZoneRulesInitializer$DoNothingZoneRulesInitializer;
    }
.end annotation


# static fields
.field private static final INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final INITIALIZER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/threeten/bp/zone/ZoneRulesInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lorg/threeten/bp/zone/ZoneRulesInitializer$DoNothingZoneRulesInitializer;

    invoke-direct {v0}, Lorg/threeten/bp/zone/ZoneRulesInitializer$DoNothingZoneRulesInitializer;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/threeten/bp/zone/ZoneRulesInitializer;->INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/threeten/bp/zone/ZoneRulesInitializer;->INITIALIZER:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initialize()V
    .locals 3

    .line 84
    sget-object v0, Lorg/threeten/bp/zone/ZoneRulesInitializer;->INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lorg/threeten/bp/zone/ZoneRulesInitializer;->INITIALIZER:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lorg/threeten/bp/zone/ZoneRulesInitializer$ServiceLoaderZoneRulesInitializer;

    invoke-direct {v2}, Lorg/threeten/bp/zone/ZoneRulesInitializer$ServiceLoaderZoneRulesInitializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lorg/threeten/bp/zone/ZoneRulesInitializer;->INITIALIZER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/zone/ZoneRulesInitializer;

    invoke-virtual {v0}, Lorg/threeten/bp/zone/ZoneRulesInitializer;->initializeProviders()V

    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setInitializer(Lorg/threeten/bp/zone/ZoneRulesInitializer;)V
    .locals 2

    .line 73
    sget-object v0, Lorg/threeten/bp/zone/ZoneRulesInitializer;->INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    sget-object v0, Lorg/threeten/bp/zone/ZoneRulesInitializer;->INITIALIZER:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Initializer was already set, possibly with a default during initialization"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected abstract initializeProviders()V
.end method
