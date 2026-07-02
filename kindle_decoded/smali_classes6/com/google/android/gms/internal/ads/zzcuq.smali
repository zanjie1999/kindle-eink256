.class public final Lcom/google/android/gms/internal/ads/zzcuq;
.super Lcom/google/android/gms/internal/ads/zzcxg;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zzc:Landroid/view/View;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfaa;

.field private final zzf:I

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcui;

.field private zzj:Lcom/google/android/gms/internal/ads/zzaya;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxf;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzfaa;IZZLcom/google/android/gms/internal/ads/zzcui;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcxg;-><init>(Lcom/google/android/gms/internal/ads/zzcxf;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzc:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzd:Lcom/google/android/gms/internal/ads/zzcml;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zze:Lcom/google/android/gms/internal/ads/zzfaa;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzf:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzg:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzi:Lcom/google/android/gms/internal/ads/zzcui;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfaa;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxg;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zze:Lcom/google/android/gms/internal/ads/zzfaa;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfav;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfaa;)Lcom/google/android/gms/internal/ads/zzfaa;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzc:Landroid/view/View;

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzf:I

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzg:Z

    return v0
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzh:Z

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzd:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzR()Lcom/google/android/gms/internal/ads/zzcnz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzd:Lcom/google/android/gms/internal/ads/zzcml;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzR()Lcom/google/android/gms/internal/ads/zzcnz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcnz;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzd:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzT()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzaxq;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzd:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzax(Lcom/google/android/gms/internal/ads/zzaxq;)V

    return-void
.end method

.method public final zzi(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzi:Lcom/google/android/gms/internal/ads/zzcui;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcui;->zza(JI)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzaya;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzj:Lcom/google/android/gms/internal/ads/zzaya;

    return-void
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/zzaya;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuq;->zzj:Lcom/google/android/gms/internal/ads/zzaya;

    return-object v0
.end method
