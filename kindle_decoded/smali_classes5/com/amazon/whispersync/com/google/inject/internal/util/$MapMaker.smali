.class public final Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
.super Ljava/lang/Object;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongValueReference;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftValueReference;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$WeakValueReference;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$LinkedWeakEntry;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$WeakEntry;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$LinkedSoftEntry;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftEntry;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$LinkedStrongEntry;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongEntry;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$QueueHolder;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ComputationExceptionReference;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$NullOutputExceptionReference;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;
    }
.end annotation


# static fields
.field private static final COMPUTING:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final builder:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

.field private expirationNanos:J

.field private keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

.field private useCustomMap:Z

.field private valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 724
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->COMPUTING:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->STRONG:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    .line 91
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->expirationNanos:J

    .line 94
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->builder:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->expirationNanos:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->builder:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    return-object p0
.end method

.method static synthetic access$500()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;
    .locals 1

    .line 89
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->COMPUTING:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    return-object v0
.end method

.method static synthetic access$600()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;
    .locals 1

    .line 89
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->computing()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object v0

    return-object v0
.end method

.method private static computing()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 744
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->COMPUTING:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    return-object v0
.end method

.method private setKeyStrength(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->STRONG:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    if-ne v0, v1, :cond_0

    .line 183
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    const/4 p1, 0x1

    .line 184
    iput-boolean p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->useCustomMap:Z

    return-object p0

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key strength was already set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->keyStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setValueStrength(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->STRONG:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    if-ne v0, v1, :cond_0

    .line 215
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    const/4 p1, 0x1

    .line 216
    iput-boolean p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->useCustomMap:Z

    return-object p0

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value strength was already set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->valueStrength:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public concurrencyLevel(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->builder:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->concurrencyLevel(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    return-object p0
.end method

.method public expiration(JLjava/util/concurrent/TimeUnit;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
    .locals 5

    .line 231
    iget-wide v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->expirationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 238
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->expirationNanos:J

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->useCustomMap:Z

    return-object p0

    .line 236
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 232
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expiration time of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->expirationNanos:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " ns was already set"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialCapacity(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->builder:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->initialCapacity(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    return-object p0
.end method

.method public loadFactor(F)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->builder:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->loadFactor(F)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    return-object p0
.end method

.method public makeComputingMap(Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
            "-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 292
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)V

    iget-object p1, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object p1
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 251
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->useCustomMap:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;)V

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->builder:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;

    iget v2, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->initialCapacity:I

    iget v3, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->loadFactor:F

    iget v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    :goto_0
    return-object v0
.end method

.method public softKeys()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
    .locals 1

    .line 175
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->SOFT:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->setKeyStrength(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public softValues()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
    .locals 1

    .line 207
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->SOFT:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->setValueStrength(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakKeys()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
    .locals 1

    .line 164
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->WEAK:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->setKeyStrength(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
    .locals 1

    .line 196
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;->WEAK:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->setValueStrength(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;

    move-result-object v0

    return-object v0
.end method
