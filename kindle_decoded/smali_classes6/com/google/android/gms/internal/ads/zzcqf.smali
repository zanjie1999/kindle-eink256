.class final Lcom/google/android/gms/internal/ads/zzcqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwr;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbqm;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcqu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcqf;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzdwr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzbqm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzdwm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzh:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Lcom/google/android/gms/internal/ads/zzdwo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcqu;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbqm;Lcom/google/android/gms/internal/ads/zzcql;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzd:Lcom/google/android/gms/internal/ads/zzcqf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzc:Lcom/google/android/gms/internal/ads/zzcqu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzb:Lcom/google/android/gms/internal/ads/zzbqm;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzglb;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgla;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zze:Lcom/google/android/gms/internal/ads/zzgln;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzglb;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgla;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzf:Lcom/google/android/gms/internal/ads/zzgln;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdwn;

    .line 3
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdwn;-><init>(Lcom/google/android/gms/internal/ads/zzgln;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzg:Lcom/google/android/gms/internal/ads/zzgln;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zze:Lcom/google/android/gms/internal/ads/zzgln;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdwp;

    .line 4
    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzdwp;-><init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzgln;)V

    .line 5
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgln;)Lcom/google/android/gms/internal/ads/zzgln;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzh:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcqf;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcqf;)Lcom/google/android/gms/internal/ads/zzdwm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzb:Lcom/google/android/gms/internal/ads/zzbqm;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwn;->zzc(Lcom/google/android/gms/internal/ads/zzbqm;)Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzdwo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzh:Lcom/google/android/gms/internal/ads/zzgln;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdwo;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdwi;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzc:Lcom/google/android/gms/internal/ads/zzcqu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzd:Lcom/google/android/gms/internal/ads/zzcqf;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcqc;-><init>(Lcom/google/android/gms/internal/ads/zzcqu;Lcom/google/android/gms/internal/ads/zzcqf;Lcom/google/android/gms/internal/ads/zzcql;)V

    return-object v0
.end method
