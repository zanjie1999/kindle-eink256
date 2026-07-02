.class public final Lcom/google/android/gms/internal/ads/zzdss;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcmx;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaas;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbkk;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzf:Lcom/google/android/gms/ads/internal/zza;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzazb;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzddr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcmx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzbkk;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzazb;Lcom/google/android/gms/internal/ads/zzddr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdss;->zza:Lcom/google/android/gms/internal/ads/zzcmx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdss;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdss;->zzc:Lcom/google/android/gms/internal/ads/zzaas;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdss;->zzd:Lcom/google/android/gms/internal/ads/zzbkk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdss;->zze:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdss;->zzf:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdss;->zzg:Lcom/google/android/gms/internal/ads/zzazb;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdss;->zzh:Lcom/google/android/gms/internal/ads/zzddr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdss;)Lcom/google/android/gms/internal/ads/zzddr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdss;->zzh:Lcom/google/android/gms/internal/ads/zzddr;

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzcml;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcmw;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdss;->zzb:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcob;->zza(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v2

    move-object/from16 v3, p1

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbdl;->zza:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdss;->zzc:Lcom/google/android/gms/internal/ads/zzaas;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdss;->zzd:Lcom/google/android/gms/internal/ads/zzbkk;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzdss;->zze:Lcom/google/android/gms/internal/ads/zzcgz;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdsh;

    invoke-direct {v10, p0}, Lcom/google/android/gms/internal/ads/zzdsh;-><init>(Lcom/google/android/gms/internal/ads/zzdss;)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdss;->zzf:Lcom/google/android/gms/ads/internal/zza;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdss;->zzg:Lcom/google/android/gms/internal/ads/zzazb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 2
    invoke-static/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzcmx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcob;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzbkk;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzbka;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzazb;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzcml;

    move-result-object v1

    return-object v1
.end method
