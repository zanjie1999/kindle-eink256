.class final Lcom/google/android/gms/internal/ads/zzewi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Lcom/google/android/gms/internal/ads/zzcvh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzelx;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcwe;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzewj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzewj;Lcom/google/android/gms/internal/ads/zzelx;Lcom/google/android/gms/internal/ads/zzcwe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzewi;->zza:Lcom/google/android/gms/internal/ads/zzelx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzb:Lcom/google/android/gms/internal/ads/zzcwe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzb:Lcom/google/android/gms/internal/ads/zzcwe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwe;->zzY()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcyj;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzewj;->zzh(Lcom/google/android/gms/internal/ads/zzewj;Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzb:Lcom/google/android/gms/internal/ads/zzcwe;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcwe;->zzX()Lcom/google/android/gms/internal/ads/zzdbe;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzdbe;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzfO:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzewj;->zzc(Lcom/google/android/gms/internal/ads/zzewj;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzewh;

    .line 6
    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzewh;-><init>(Lcom/google/android/gms/internal/ads/zzewi;Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzewj;->zzg(Lcom/google/android/gms/internal/ads/zzewj;)Lcom/google/android/gms/internal/ads/zzddr;

    move-result-object v2

    const/16 v3, 0x3c

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzddr;->zzd(I)V

    .line 8
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    const-string v2, "BannerAdLoader.onFailure"

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfbh;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzewi;->zza:Lcom/google/android/gms/internal/ads/zzelx;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzelx;->zza()V

    .line 10
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcvh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzewj;->zzh(Lcom/google/android/gms/internal/ads/zzewj;Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfsm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzewj;->zzf(Lcom/google/android/gms/internal/ads/zzewj;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvh;->zza()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvh;->zza()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 6
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxg;->zzm()Lcom/google/android/gms/internal/ads/zzdav;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxg;->zzm()Lcom/google/android/gms/internal/ads/zzdav;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdav;->zze()Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Banner view provided from "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a parent view. Removing its old parent."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 10
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvh;->zza()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfO:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxg;->zzo()Lcom/google/android/gms/internal/ads/zzdfj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzewj;->zzd(Lcom/google/android/gms/internal/ads/zzewj;)Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdfj;->zza(Lcom/google/android/gms/internal/ads/zzeli;)Lcom/google/android/gms/internal/ads/zzdfj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzewj;->zze(Lcom/google/android/gms/internal/ads/zzewj;)Lcom/google/android/gms/internal/ads/zzelm;

    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdfj;->zzb(Lcom/google/android/gms/internal/ads/zzelm;)Lcom/google/android/gms/internal/ads/zzdfj;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzewj;->zzf(Lcom/google/android/gms/internal/ads/zzewj;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvh;->zza()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewi;->zza:Lcom/google/android/gms/internal/ads/zzelx;

    .line 17
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzelx;->zzb(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfO:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzewj;->zzc(Lcom/google/android/gms/internal/ads/zzewj;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzewj;->zzd(Lcom/google/android/gms/internal/ads/zzewj;)Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzewg;->zza(Lcom/google/android/gms/internal/ads/zzeli;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewi;->zzc:Lcom/google/android/gms/internal/ads/zzewj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzewj;->zzg(Lcom/google/android/gms/internal/ads/zzewj;)Lcom/google/android/gms/internal/ads/zzddr;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvh;->zzg()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzddr;->zzd(I)V

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
