.class public final Lcom/google/android/gms/internal/ads/zzehp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzehq;

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzeeh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzehq;Lcom/google/android/gms/internal/ads/zzeeh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzc:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zza:Lcom/google/android/gms/common/util/Clock;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzb:Lcom/google/android/gms/internal/ads/zzehq;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfd:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzd:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehp;->zze:Lcom/google/android/gms/internal/ads/zzeeh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/common/util/Clock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zza:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/internal/ads/zzehq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzb:Lcom/google/android/gms/internal/ads/zzehq;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzehp;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzd:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/internal/ads/zzeeh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zze:Lcom/google/android/gms/internal/ads/zzeeh;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzehp;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p3

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzc:Ljava/util/List;

    .line 4
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method final zze(Lcom/google/android/gms/internal/ads/zzfac;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzfac;",
            "Lcom/google/android/gms/internal/ads/zzezz;",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zza:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    .line 2
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzw:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeho;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    move-object v7, p1

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzeho;-><init>(Lcom/google/android/gms/internal/ads/zzehp;JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfac;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object p3
.end method

.method public final zzg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehp;->zzc:Ljava/util/List;

    const-string v1, "_"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
