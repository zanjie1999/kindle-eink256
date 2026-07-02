.class public final Lcom/google/android/gms/appset/AppSet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-appset@@16.0.0"


# direct methods
.method public static getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/appset/zzr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/appset/zzr;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
