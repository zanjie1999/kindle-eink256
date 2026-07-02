.class public final Lcom/google/android/gms/internal/ads/zzdzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeao;


# static fields
.field private static final zzf:Ljava/util/regex/Pattern;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdyq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfar;

.field private final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zze:Lcom/google/android/gms/internal/ads/zzecu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdzp;->zzf:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfar;Lcom/google/android/gms/internal/ads/zzdyq;Lcom/google/android/gms/internal/ads/zzfsn;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzecu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzc:Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zza:Lcom/google/android/gms/internal/ads/zzdyq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zze:Lcom/google/android/gms/internal/ads/zzecu;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdzp;)Lcom/google/android/gms/internal/ads/zzecu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zze:Lcom/google/android/gms/internal/ads/zzecu;

    return-object p0
.end method

.method static synthetic zzb()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdzp;->zzf:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzfal;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zza:Lcom/google/android/gms/internal/ads/zzdyq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzm;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdzm;-><init>(Lcom/google/android/gms/internal/ads/zzdzp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzdO:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzdP:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzh(Lcom/google/android/gms/internal/ads/zzfsm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    const-class v0, Ljava/util/concurrent/TimeoutException;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdzn;->zza:Lcom/google/android/gms/internal/ads/zzfrk;

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 10
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzg(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzo;

    .line 11
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdzo;-><init>(Lcom/google/android/gms/internal/ads/zzdzp;)V

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method final synthetic zzd(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfal;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdzp;->zzc:Lcom/google/android/gms/internal/ads/zzfar;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfai;-><init>(Lcom/google/android/gms/internal/ads/zzfar;)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfak;->zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzfak;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfal;-><init>(Lcom/google/android/gms/internal/ads/zzfai;Lcom/google/android/gms/internal/ads/zzfak;)V

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
