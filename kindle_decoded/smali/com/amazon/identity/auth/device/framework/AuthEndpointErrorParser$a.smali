.class public Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final iR:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field private final iS:Ljava/lang/String;

.field private final iT:Ljava/lang/String;

.field private final iU:Ljava/lang/String;

.field private final iV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->iR:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 116
    iput-object p2, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->iS:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->iT:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->iU:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->iV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->iR:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    return-object v0
.end method

.method public cG()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->iT:Ljava/lang/String;

    return-object v0
.end method

.method public cH()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->iU:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->iS:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationError()Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->iR:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getRegistrationError()Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v0

    return-object v0
.end method
