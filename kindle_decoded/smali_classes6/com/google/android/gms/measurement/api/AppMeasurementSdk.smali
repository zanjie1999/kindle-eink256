.class public Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzbs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzbs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzbs;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzbs;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzb()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzu(Ljava/lang/String;)V

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzbs;->zzl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzv(Ljava/lang/String;)V

    return-void
.end method

.method public generateEventId()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppIdOrigin()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbs;->zzm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentScreenClass()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzz()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzE(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzbs;->zzB(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzbs;->zzh(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public performAction(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzD(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    return-void
.end method

.method public performActionWithResponse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzD(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzk(Landroid/os/Bundle;)V

    return-void
.end method

.method public setConsent(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzq(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzbs;->zzo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method
