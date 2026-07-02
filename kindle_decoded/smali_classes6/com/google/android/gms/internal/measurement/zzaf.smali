.class final Lcom/google/android/gms/internal/measurement/zzaf;
.super Lcom/google/android/gms/internal/measurement/zzbh;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# instance fields
.field final synthetic zza:Landroid/app/Activity;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzbs;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zzd:Lcom/google/android/gms/internal/measurement/zzbs;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zzc:Ljava/lang/String;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbh;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zzd:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzP(Lcom/google/android/gms/internal/measurement/zzbs;)Lcom/google/android/gms/internal/measurement/zzq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzq;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Landroid/app/Activity;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zzc:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zzh:J

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzq;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
