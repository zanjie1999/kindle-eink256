.class final Lcom/google/android/gms/internal/measurement/zzbr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzbs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbk;

    .line 1
    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzbk;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzQ(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbq;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbq;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzQ(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbn;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzQ(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbm;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbm;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzQ(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzn;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzbp;

    .line 2
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzbp;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzbs;->zzQ(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzbh;)V

    const-wide/16 v1, 0x32

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzn;->zzd(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbl;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbl;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzQ(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzbo;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzbo;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzQ(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzbh;)V

    return-void
.end method
