.class public Lcom/amazon/identity/auth/device/fc$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mc:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

.field private md:Lcom/amazon/identity/auth/device/fb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/fb;)Lcom/amazon/identity/auth/device/fc$a;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fc$a;->md:Lcom/amazon/identity/auth/device/fb;

    return-object p0
.end method

.method public a(Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;)Lcom/amazon/identity/auth/device/fc$a;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fc$a;->mc:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    return-object p0
.end method

.method public eq()Lcom/amazon/identity/auth/device/fc;
    .locals 3

    .line 12
    new-instance v0, Lcom/amazon/identity/auth/device/fc;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fc$a;->mc:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/fc$a;->md:Lcom/amazon/identity/auth/device/fb;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/fc;-><init>(Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;Lcom/amazon/identity/auth/device/fb;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomerInformationResult.CustomerInformationResultBuilder(resultType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fc$a;->mc:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", information="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fc$a;->md:Lcom/amazon/identity/auth/device/fb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
