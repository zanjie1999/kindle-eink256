.class final synthetic Lcom/google/android/gms/internal/ads/zzcmt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrj;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaas;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzd:Lcom/google/android/gms/ads/internal/zza;

.field private final zze:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/ads/internal/zza;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzb:Lcom/google/android/gms/internal/ads/zzaas;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzc:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzd:Lcom/google/android/gms/ads/internal/zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zza:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzb:Lcom/google/android/gms/internal/ads/zzaas;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzc:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zzd:Lcom/google/android/gms/ads/internal/zza;

    iget-object v14, p0, Lcom/google/android/gms/internal/ads/zzcmt;->zze:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzd()Lcom/google/android/gms/internal/ads/zzcmx;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcob;->zzb()Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazb;->zza()Lcom/google/android/gms/internal/ads/zzazb;

    move-result-object v11

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 3
    invoke-static/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzcmx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcob;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzbkk;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzbka;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzazb;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzcml;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzR()Lcom/google/android/gms/internal/ads/zzcnz;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcmv;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzcmv;-><init>(Lcom/google/android/gms/internal/ads/zzchk;)V

    .line 6
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcnz;->zzy(Lcom/google/android/gms/internal/ads/zzcnx;)V

    .line 7
    invoke-interface {v0, v14}, Lcom/google/android/gms/internal/ads/zzcml;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
