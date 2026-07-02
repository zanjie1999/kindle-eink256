.class public Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;
.super Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;
.source "BarcodeIdentifier.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private barcodeData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.BarcodeIdentifier"

    aput-object v2, v0, v1

    .line 20
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 38
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 42
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;

    .line 45
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;->barcodeData:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;->barcodeData:Ljava/lang/String;

    .line 46
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBarcodeData()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;->barcodeData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    invoke-super {p0}, Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;->classNameHashCode:I

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;->barcodeData:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 27
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBarcodeData(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/BarcodeIdentifier;->barcodeData:Ljava/lang/String;

    return-void
.end method
