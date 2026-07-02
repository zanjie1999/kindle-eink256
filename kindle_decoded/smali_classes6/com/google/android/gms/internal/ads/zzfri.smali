.class abstract Lcom/google/android/gms/internal/ads/zzfri;
.super Lcom/google/android/gms/internal/ads/zzfqw$zzj;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfqw$zzj<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final zzaO:Lcom/google/android/gms/internal/ads/zzfre;

.field private static final zzaP:Ljava/util/logging/Logger;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfri;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfri;->zzaP:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfrg;

    const-class v2, Lcom/google/android/gms/internal/ads/zzfri;

    const-class v3, Ljava/util/Set;

    const-string v4, "seenExceptions"

    .line 2
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzfri;

    const-string v4, "remaining"

    .line 3
    invoke-static {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfrg;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfrh;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzfrh;-><init>(Lcom/google/android/gms/internal/ads/zzfrf;)V

    move-object v8, v1

    move-object v1, v2

    .line 3
    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/ads/zzfri;->zzaO:Lcom/google/android/gms/internal/ads/zzfre;

    if-eqz v8, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfri;->zzaP:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "com.google.common.util.concurrent.AggregateFutureState"

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    .line 4
    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqw$zzj;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfri;->seenExceptions:Ljava/util/Set;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->remaining:I

    return-void
.end method

.method static synthetic zzC(Lcom/google/android/gms/internal/ads/zzfri;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfri;->seenExceptions:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zzD(Lcom/google/android/gms/internal/ads/zzfri;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->seenExceptions:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic zzE(Lcom/google/android/gms/internal/ads/zzfri;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfri;->remaining:I

    return p0
.end method

.method static synthetic zzF(Lcom/google/android/gms/internal/ads/zzfri;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->remaining:I

    return p1
.end method


# virtual methods
.method final zzG()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfri;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfri;->zzw(Ljava/util/Set;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfri;->zzaO:Lcom/google/android/gms/internal/ads/zzfre;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzfre;->zza(Lcom/google/android/gms/internal/ads/zzfri;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfri;->seenExceptions:Ljava/util/Set;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method final zzH()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfri;->zzaO:Lcom/google/android/gms/internal/ads/zzfre;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfre;->zzb(Lcom/google/android/gms/internal/ads/zzfri;)I

    move-result v0

    return v0
.end method

.method final zzI()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfri;->seenExceptions:Ljava/util/Set;

    return-void
.end method

.method abstract zzw(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
