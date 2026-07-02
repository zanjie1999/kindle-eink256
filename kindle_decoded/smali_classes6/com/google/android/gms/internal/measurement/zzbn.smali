.class final Lcom/google/android/gms/internal/measurement/zzbn;
.super Lcom/google/android/gms/internal/measurement/zzbh;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# instance fields
.field final synthetic zza:Landroid/app/Activity;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzbr;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbn;->zzb:Lcom/google/android/gms/internal/measurement/zzbr;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbn;->zza:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbh;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbn;->zzb:Lcom/google/android/gms/internal/measurement/zzbr;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzbr;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzP(Lcom/google/android/gms/internal/measurement/zzbs;)Lcom/google/android/gms/internal/measurement/zzq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzq;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbn;->zza:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zzi:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzq;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    return-void
.end method
