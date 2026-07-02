.class final Lcom/google/android/gms/internal/measurement/zzav;
.super Lcom/google/android/gms/internal/measurement/zzbh;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# instance fields
.field final synthetic zza:Landroid/os/Bundle;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzn;

.field final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzbs;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzav;->zzc:Lcom/google/android/gms/internal/measurement/zzbs;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzav;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzav;->zzb:Lcom/google/android/gms/internal/measurement/zzn;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzav;->zzc:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzP(Lcom/google/android/gms/internal/measurement/zzbs;)Lcom/google/android/gms/internal/measurement/zzq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzq;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzav;->zza:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzav;->zzb:Lcom/google/android/gms/internal/measurement/zzn;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zzh:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzq;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzt;J)V

    return-void
.end method

.method protected final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzav;->zzb:Lcom/google/android/gms/internal/measurement/zzn;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzn;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
