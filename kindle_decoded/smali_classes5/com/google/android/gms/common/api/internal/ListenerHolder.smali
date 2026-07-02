.class public final Lcom/google/android/gms/common/api/internal/ListenerHolder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/zabv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zabv;"
        }
    .end annotation
.end field

.field private volatile zab:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private volatile zac:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zab:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->zac:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-void
.end method
