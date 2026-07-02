.class public Lcom/amazon/identity/auth/device/fb$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private lR:Ljava/lang/String;

.field private lS:Ljava/lang/String;

.field private lT:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bH(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fb$a;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fb$a;->name:Ljava/lang/String;

    return-object p0
.end method

.method public bI(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fb$a;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fb$a;->lS:Ljava/lang/String;

    return-object p0
.end method

.method public bJ(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fb$a;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fb$a;->lT:Ljava/lang/String;

    return-object p0
.end method

.method public en()Lcom/amazon/identity/auth/device/fb;
    .locals 5

    .line 12
    new-instance v0, Lcom/amazon/identity/auth/device/fb;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fb$a;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/fb$a;->lR:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/fb$a;->lS:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/fb$a;->lT:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/fb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomerInformation.CustomerInformationBuilder(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fb$a;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", namePron="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fb$a;->lR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fb$a;->lS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fb$a;->lT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
