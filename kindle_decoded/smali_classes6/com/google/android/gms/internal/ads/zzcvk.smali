.class final Lcom/google/android/gms/internal/ads/zzcvk;
.super Lcom/google/android/gms/internal/ads/zzcvh;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Landroid/view/View;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfaa;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcxe;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdmx;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdiq;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzgku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzekj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzk:Ljava/util/concurrent/Executor;

.field private zzl:Lcom/google/android/gms/internal/ads/zzbdl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfaa;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzcxe;Lcom/google/android/gms/internal/ads/zzdmx;Lcom/google/android/gms/internal/ads/zzdiq;Lcom/google/android/gms/internal/ads/zzgku;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcxf;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzfaa;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/zzcml;",
            "Lcom/google/android/gms/internal/ads/zzcxe;",
            "Lcom/google/android/gms/internal/ads/zzdmx;",
            "Lcom/google/android/gms/internal/ads/zzdiq;",
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzekj;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcvh;-><init>(Lcom/google/android/gms/internal/ads/zzcxf;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzd:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zze:Lcom/google/android/gms/internal/ads/zzcml;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzf:Lcom/google/android/gms/internal/ads/zzfaa;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzg:Lcom/google/android/gms/internal/ads/zzcxe;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzh:Lcom/google/android/gms/internal/ads/zzdmx;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzi:Lcom/google/android/gms/internal/ads/zzdiq;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzj:Lcom/google/android/gms/internal/ads/zzgku;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzk:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zzS()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzk:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcvj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcvj;-><init>(Lcom/google/android/gms/internal/ads/zzcvk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcxg;->zzS()V

    return-void
.end method

.method public final zza()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzd:Landroid/view/View;

    return-object v0
.end method

.method public final zzb(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zze:Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcob;->zza(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcml;->zzaf(Lcom/google/android/gms/internal/ads/zzcob;)V

    .line 2
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbdl;->zzc:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 3
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbdl;->zzf:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzl:Lcom/google/android/gms/internal/ads/zzbdl;

    :cond_0
    return-void
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbhc;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzg:Lcom/google/android/gms/internal/ads/zzcxe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcxe;->zza()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfaw; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfaa;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzl:Lcom/google/android/gms/internal/ads/zzbdl;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfav;->zzc(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/zzfaa;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxg;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzY:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "FirstParty"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzd:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzd:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfaa;-><init>(IIZ)V

    return-object v0

    .line 3
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxg;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzr:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzf:Lcom/google/android/gms/internal/ads/zzfaa;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfav;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfaa;)Lcom/google/android/gms/internal/ads/zzfaa;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzfaa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzf:Lcom/google/android/gms/internal/ads/zzfaa;

    return-object v0
.end method

.method public final zzg()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfB:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxg;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzad:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfC:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxg;->zza:Lcom/google/android/gms/internal/ads/zzfal;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfac;->zzc:I

    return v0
.end method

.method public final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzi:Lcom/google/android/gms/internal/ads/zzdiq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiq;->zza()V

    return-void
.end method

.method final bridge synthetic zzj()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzh:Lcom/google/android/gms/internal/ads/zzdmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmx;->zzd()Lcom/google/android/gms/internal/ads/zzbns;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzh:Lcom/google/android/gms/internal/ads/zzdmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmx;->zzd()Lcom/google/android/gms/internal/ads/zzbns;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzj:Lcom/google/android/gms/internal/ads/zzgku;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgku;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvk;->zzc:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbns;->zze(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
