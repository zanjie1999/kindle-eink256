.class public final Lcom/google/android/gms/measurement/internal/zzhx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.3"


# direct methods
.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p0, "google_app_id"

    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfh;->zzb(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
