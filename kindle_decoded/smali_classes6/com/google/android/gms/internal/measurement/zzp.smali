.class public abstract Lcom/google/android/gms/internal/measurement/zzp;
.super Lcom/google/android/gms/internal/measurement/zzb;
.source "com.google.android.gms:play-services-measurement-base@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzq;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzq;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzq;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzq;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzo;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzo;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
