.class final Lcom/google/android/gms/internal/measurement/zzar;
.super Lcom/google/android/gms/internal/measurement/zzbh;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzn;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzar;->zzb:Lcom/google/android/gms/internal/measurement/zzbs;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzar;->zza:Lcom/google/android/gms/internal/measurement/zzn;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbh;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzar;->zzb:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzP(Lcom/google/android/gms/internal/measurement/zzbs;)Lcom/google/android/gms/internal/measurement/zzq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzq;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzar;->zza:Lcom/google/android/gms/internal/measurement/zzn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzq;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzt;)V

    return-void
.end method

.method protected final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzar;->zza:Lcom/google/android/gms/internal/measurement/zzn;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzn;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
