.class public final enum Lcom/audible/android/kcp/activation/ActivationStatus;
.super Ljava/lang/Enum;
.source "ActivationStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/activation/ActivationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/activation/ActivationStatus;

.field public static final enum FAILURE:Lcom/audible/android/kcp/activation/ActivationStatus;

.field public static final enum SUCCESS:Lcom/audible/android/kcp/activation/ActivationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/audible/android/kcp/activation/ActivationStatus;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/audible/android/kcp/activation/ActivationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/activation/ActivationStatus;->SUCCESS:Lcom/audible/android/kcp/activation/ActivationStatus;

    new-instance v0, Lcom/audible/android/kcp/activation/ActivationStatus;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v2}, Lcom/audible/android/kcp/activation/ActivationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/android/kcp/activation/ActivationStatus;->FAILURE:Lcom/audible/android/kcp/activation/ActivationStatus;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/android/kcp/activation/ActivationStatus;

    .line 9
    sget-object v4, Lcom/audible/android/kcp/activation/ActivationStatus;->SUCCESS:Lcom/audible/android/kcp/activation/ActivationStatus;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/android/kcp/activation/ActivationStatus;->$VALUES:[Lcom/audible/android/kcp/activation/ActivationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/activation/ActivationStatus;
    .locals 1

    .line 9
    const-class v0, Lcom/audible/android/kcp/activation/ActivationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/activation/ActivationStatus;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/activation/ActivationStatus;
    .locals 1

    .line 9
    sget-object v0, Lcom/audible/android/kcp/activation/ActivationStatus;->$VALUES:[Lcom/audible/android/kcp/activation/ActivationStatus;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/activation/ActivationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/activation/ActivationStatus;

    return-object v0
.end method
