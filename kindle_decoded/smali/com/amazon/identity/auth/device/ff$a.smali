.class public Lcom/amazon/identity/auth/device/ff$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mn:Z

.field private mo:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bM(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ff$a;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ff$a;->mo:Ljava/lang/String;

    return-object p0
.end method

.method public eu()Lcom/amazon/identity/auth/device/ff;
    .locals 3

    .line 12
    new-instance v0, Lcom/amazon/identity/auth/device/ff;

    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/ff$a;->mn:Z

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ff$a;->mo:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/ff;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public g(Z)Lcom/amazon/identity/auth/device/ff$a;
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/ff$a;->mn:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmsRetrieverSupportInfo.SmsRetrieverSupportInfoBuilder(isSupported="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/ff$a;->mn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ff$a;->mo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
