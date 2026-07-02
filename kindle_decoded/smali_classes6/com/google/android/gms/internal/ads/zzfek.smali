.class public abstract Lcom/google/android/gms/internal/ads/zzfek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfel<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfek;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfsn;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfsn;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/zzfel<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfek;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfek;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfek;->zzd:Lcom/google/android/gms/internal/ads/zzfel;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfek;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzfek;)Lcom/google/android/gms/internal/ads/zzfsn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfek;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzfek;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfek;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzfek;)Lcom/google/android/gms/internal/ads/zzfel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfek;->zzd:Lcom/google/android/gms/internal/ads/zzfel;

    return-object p0
.end method


# virtual methods
.method public final zze(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfej;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TI;>;)",
            "Lcom/google/android/gms/internal/ads/zzfej<",
            "TI;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfej;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfej;-><init>(Lcom/google/android/gms/internal/ads/zzfek;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfsm;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfeb;)V

    return-object v8
.end method

.method public final varargs zzf(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfea;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzfea;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfea;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfea;-><init>(Lcom/google/android/gms/internal/ads/zzfek;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfeb;)V

    return-object v0
.end method

.method protected abstract zzg(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
