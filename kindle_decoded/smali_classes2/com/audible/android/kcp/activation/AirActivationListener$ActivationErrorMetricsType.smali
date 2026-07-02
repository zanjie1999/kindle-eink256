.class final enum Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;
.super Ljava/lang/Enum;
.source "AirActivationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/activation/AirActivationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActivationErrorMetricsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

.field public static final enum ERROR_TYPE_ACTIVATION:Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

.field public static final enum ERROR_TYPE_NETWORK:Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    const/4 v1, 0x0

    const-string v2, "ERROR_TYPE_NETWORK"

    invoke-direct {v0, v2, v1}, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;->ERROR_TYPE_NETWORK:Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    new-instance v0, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    const/4 v2, 0x1

    const-string v3, "ERROR_TYPE_ACTIVATION"

    invoke-direct {v0, v3, v2}, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;->ERROR_TYPE_ACTIVATION:Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    .line 26
    sget-object v4, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;->ERROR_TYPE_NETWORK:Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;->$VALUES:[Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;
    .locals 1

    .line 26
    const-class v0, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;
    .locals 1

    .line 26
    sget-object v0, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;->$VALUES:[Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    return-object v0
.end method
