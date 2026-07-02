.class public Lcom/amazon/identity/auth/device/fd$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mg:Z

.field private mh:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bK(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fd$a;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fd$a;->mh:Ljava/lang/String;

    return-object p0
.end method

.method public es()Lcom/amazon/identity/auth/device/fd;
    .locals 3

    .line 12
    new-instance v0, Lcom/amazon/identity/auth/device/fd;

    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/fd$a;->mg:Z

    iget-object v2, p0, Lcom/amazon/identity/auth/device/fd$a;->mh:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/fd;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public f(Z)Lcom/amazon/identity/auth/device/fd$a;
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/fd$a;->mg:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegisterMAPSmsReceiverResult.RegisterMAPSmsReceiverResultBuilder(isRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/fd$a;->mg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fd$a;->mh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
