.class public Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Landroid/os/Bundle;

.field private final zzc:Landroid/os/Bundle;

.field private final zzd:Landroid/content/Context;

.field private final zze:Z

.field private final zzf:Landroid/location/Location;

.field private final zzg:I

.field private final zzh:I

.field private final zzi:Ljava/lang/String;

.field private final zzj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzb:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzc:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzd:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zze:Z

    iput-object p6, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzf:Landroid/location/Location;

    iput p7, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzg:I

    iput p8, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzh:I

    iput-object p9, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzi:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzj:Ljava/lang/String;

    return-void
.end method
