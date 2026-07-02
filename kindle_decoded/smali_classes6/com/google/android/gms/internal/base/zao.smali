.class public final Lcom/google/android/gms/internal/base/zao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# static fields
.field private static final zaa:Lcom/google/android/gms/internal/base/zal;

.field private static volatile zab:Lcom/google/android/gms/internal/base/zal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/base/zan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/base/zan;-><init>(Lcom/google/android/gms/internal/base/zam;)V

    sput-object v0, Lcom/google/android/gms/internal/base/zao;->zaa:Lcom/google/android/gms/internal/base/zal;

    sput-object v0, Lcom/google/android/gms/internal/base/zao;->zab:Lcom/google/android/gms/internal/base/zal;

    return-void
.end method

.method public static zaa()Lcom/google/android/gms/internal/base/zal;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/base/zao;->zab:Lcom/google/android/gms/internal/base/zal;

    return-object v0
.end method
