.class final Lcom/google/android/gms/common/api/internal/zacm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/signin/internal/zak;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zaco;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaco;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacm;->zab:Lcom/google/android/gms/common/api/internal/zaco;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacm;->zaa:Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacm;->zab:Lcom/google/android/gms/common/api/internal/zaco;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacm;->zaa:Lcom/google/android/gms/signin/internal/zak;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaco;->zaf(Lcom/google/android/gms/common/api/internal/zaco;Lcom/google/android/gms/signin/internal/zak;)V

    return-void
.end method
