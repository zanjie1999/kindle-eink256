.class public final enum Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/metrics/SSOMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CredentialActionFailureReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

.field public static final enum DidnotReturnAuthToken:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

.field public static final enum RequestTimeOut:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

.field public static final enum UnrecognizedFailure:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 93
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    const/4 v1, 0x0

    const-string v2, "RequestTimeOut"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;->RequestTimeOut:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    .line 94
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    const/4 v2, 0x1

    const-string v3, "DidnotReturnAuthToken"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;->DidnotReturnAuthToken:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    .line 95
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    const/4 v3, 0x2

    const-string v4, "UnrecognizedFailure"

    invoke-direct {v0, v4, v3, v4}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;->UnrecognizedFailure:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    .line 91
    sget-object v5, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;->RequestTimeOut:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;->DidnotReturnAuthToken:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;->$VALUES:[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;
    .locals 1

    .line 91
    const-class v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;
    .locals 1

    .line 91
    sget-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;->$VALUES:[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;->mName:Ljava/lang/String;

    return-object v0
.end method
