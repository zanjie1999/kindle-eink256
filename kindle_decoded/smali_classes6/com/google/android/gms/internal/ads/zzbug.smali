.class public final Lcom/google/android/gms/internal/ads/zzbug;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field static final zza:Lcom/google/android/gms/ads/internal/util/zzbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzbe<",
            "Lcom/google/android/gms/internal/ads/zzbsn;",
            ">;"
        }
    .end annotation
.end field

.field static final zzb:Lcom/google/android/gms/ads/internal/util/zzbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzbe<",
            "Lcom/google/android/gms/internal/ads/zzbsn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzbts;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbue;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbue;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbug;->zza:Lcom/google/android/gms/ads/internal/util/zzbe;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbuf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbug;->zzb:Lcom/google/android/gms/ads/internal/util/zzbe;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbts;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbug;->zza:Lcom/google/android/gms/ads/internal/util/zzbe;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbug;->zzb:Lcom/google/android/gms/ads/internal/util/zzbe;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbts;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbe;Lcom/google/android/gms/ads/internal/util/zzbe;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzbug;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbty;)Lcom/google/android/gms/internal/ads/zzbtw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbtz<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzbty<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzbtw<",
            "TI;TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbug;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbuk;-><init>(Lcom/google/android/gms/internal/ads/zzbts;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbty;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbup;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbug;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbup;-><init>(Lcom/google/android/gms/internal/ads/zzbts;)V

    return-object v0
.end method
