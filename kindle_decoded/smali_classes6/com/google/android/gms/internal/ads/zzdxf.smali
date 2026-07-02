.class final synthetic Lcom/google/android/gms/internal/ads/zzdxf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdxk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfbi;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbrp;

.field private final zzd:Ljava/util/List;

.field private final zze:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxk;Lcom/google/android/gms/internal/ads/zzfbi;Lcom/google/android/gms/internal/ads/zzbrp;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzb:Lcom/google/android/gms/internal/ads/zzfbi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzc:Lcom/google/android/gms/internal/ads/zzbrp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzd:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzb:Lcom/google/android/gms/internal/ads/zzfbi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzc:Lcom/google/android/gms/internal/ads/zzbrp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzd:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zze:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdxk;->zzn(Lcom/google/android/gms/internal/ads/zzfbi;Lcom/google/android/gms/internal/ads/zzbrp;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
