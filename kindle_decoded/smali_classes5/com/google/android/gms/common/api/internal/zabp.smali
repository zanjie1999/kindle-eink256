.class public final Lcom/google/android/gms/common/api/internal/zabp;
.super Lcom/google/android/gms/common/api/internal/zaad;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Lcom/google/android/gms/common/api/internal/zaad;"
    }
.end annotation


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "TO;>;)V"
        }
    .end annotation

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaad;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabp;->zaa:Lcom/google/android/gms/common/api/GoogleApi;

    return-void
.end method


# virtual methods
.method public final zap(Lcom/google/android/gms/common/api/internal/zacv;)V
    .locals 0

    return-void
.end method
