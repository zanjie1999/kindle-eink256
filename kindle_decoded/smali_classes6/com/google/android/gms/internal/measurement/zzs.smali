.class public abstract Lcom/google/android/gms/internal/measurement/zzs;
.super Lcom/google/android/gms/internal/measurement/zzb;
.source "com.google.android.gms:play-services-measurement-base@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzt;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzt;->zzb(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
