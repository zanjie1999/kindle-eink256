.class final Lcom/google/android/gms/internal/ads/zzeuu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzelx<",
        "Lcom/google/android/gms/internal/ads/zzcuq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeuv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeuv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcuq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxg;->zzT()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzeuv;->zza:Lcom/google/android/gms/internal/ads/zzcuq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeuv;->zzb(Lcom/google/android/gms/internal/ads/zzeuv;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeuv;->zzb(Lcom/google/android/gms/internal/ads/zzeuv;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuq;->zzb()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zze()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzad;->zzj()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuq;->zzd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeuv;->zze(Lcom/google/android/gms/internal/ads/zzeuv;)Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcgz;->zzc:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzdB:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzeuv;->zzf(Lcom/google/android/gms/internal/ads/zzeuv;Lcom/google/android/gms/internal/ads/zzcuq;)Lcom/google/android/gms/ads/internal/overlay/zzq;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    .line 9
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuq;->zzf()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_2

    const/16 v2, 0x9

    goto :goto_0

    :cond_2
    const/16 v2, 0xb

    .line 12
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuq;->zzg()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuq;->zze()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zza(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeuv;->zzb(Lcom/google/android/gms/internal/ads/zzeuv;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcuq;->zzh(Lcom/google/android/gms/internal/ads/zzaxq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeuv;->zzb(Lcom/google/android/gms/internal/ads/zzeuv;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeuv;->zzh(Lcom/google/android/gms/internal/ads/zzeuv;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbdl;->zzc:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeuv;->zzb(Lcom/google/android/gms/internal/ads/zzeuv;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeuv;->zzh(Lcom/google/android/gms/internal/ads/zzeuv;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbdl;->zzf:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeuv;->zzc(Lcom/google/android/gms/internal/ads/zzeuv;)Lcom/google/android/gms/internal/ads/zzevv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcvd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeuu;->zza:Lcom/google/android/gms/internal/ads/zzeuv;

    .line 18
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzcvd;-><init>(Lcom/google/android/gms/internal/ads/zzcuq;Lcom/google/android/gms/internal/ads/zzbfn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzevv;->zzm(Lcom/google/android/gms/internal/ads/zzaxw;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxg;->zzS()V

    return-void
.end method
