.class public Lcom/google/ads/mediation/MediationAdRequest;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Ljava/util/Date;

.field private final zzb:Lcom/google/ads/AdRequest$Gender;

.field private final zzc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Z

.field private final zze:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/ads/AdRequest$Gender;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Landroid/location/Location;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/google/ads/AdRequest$Gender;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/MediationAdRequest;->zza:Ljava/util/Date;

    iput-object p2, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzb:Lcom/google/ads/AdRequest$Gender;

    iput-object p3, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzc:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/google/ads/mediation/MediationAdRequest;->zzd:Z

    iput-object p5, p0, Lcom/google/ads/mediation/MediationAdRequest;->zze:Landroid/location/Location;

    return-void
.end method
