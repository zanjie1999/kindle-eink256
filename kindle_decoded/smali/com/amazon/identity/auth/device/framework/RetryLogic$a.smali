.class public Lcom/amazon/identity/auth/device/framework/RetryLogic$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/framework/RetryLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private kR:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

.field private kS:Ljava/io/IOException;

.field private kT:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->kT:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->kT:Z

    .line 34
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->kR:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->kT:Z

    .line 40
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->kS:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public dM()Ljava/io/IOException;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->kS:Ljava/io/IOException;

    return-object v0
.end method

.method public dN()Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->kR:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    return-object v0
.end method

.method public dO()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->kR:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->BackoffError:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$a;->kT:Z

    return v0
.end method
