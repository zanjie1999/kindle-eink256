.class final Lcom/google/android/gms/internal/ads/zzcqd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwj;


# instance fields
.field private final zza:Ljava/lang/Long;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcqu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcqf;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcqd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcqu;Lcom/google/android/gms/internal/ads/zzcqf;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcql;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zze:Lcom/google/android/gms/internal/ads/zzcqd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzc:Lcom/google/android/gms/internal/ads/zzcqu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzd:Lcom/google/android/gms/internal/ads/zzcqf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zza:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdwt;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zza:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzd:Lcom/google/android/gms/internal/ads/zzcqf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqf;->zza(Lcom/google/android/gms/internal/ads/zzcqf;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzd:Lcom/google/android/gms/internal/ads/zzcqf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqf;->zzb(Lcom/google/android/gms/internal/ads/zzcqf;)Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzc:Lcom/google/android/gms/internal/ads/zzcqu;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzb:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdwu;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdwm;Lcom/google/android/gms/internal/ads/zzcoj;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdwx;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zza:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzd:Lcom/google/android/gms/internal/ads/zzcqf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqf;->zza(Lcom/google/android/gms/internal/ads/zzcqf;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzd:Lcom/google/android/gms/internal/ads/zzcqf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqf;->zzb(Lcom/google/android/gms/internal/ads/zzcqf;)Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzc:Lcom/google/android/gms/internal/ads/zzcqu;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzb:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdwy;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdwm;Lcom/google/android/gms/internal/ads/zzcoj;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwx;

    move-result-object v0

    return-object v0
.end method
