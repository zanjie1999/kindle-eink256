.class final Lcom/google/android/gms/internal/measurement/zzbk;
.super Lcom/google/android/gms/internal/measurement/zzbh;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# instance fields
.field final synthetic zza:Landroid/os/Bundle;

.field final synthetic zzb:Landroid/app/Activity;

.field final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzbr;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzc:Lcom/google/android/gms/internal/measurement/zzbr;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzb:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbh;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zza:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zza:Landroid/os/Bundle;

    const-string v2, "com.google.app_measurement.screen_service"

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zza:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 5
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzc:Lcom/google/android/gms/internal/measurement/zzbr;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzP(Lcom/google/android/gms/internal/measurement/zzbs;)Lcom/google/android/gms/internal/measurement/zzq;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzq;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzbk;->zzb:Landroid/app/Activity;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zzi:J

    .line 8
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzq;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    return-void
.end method
