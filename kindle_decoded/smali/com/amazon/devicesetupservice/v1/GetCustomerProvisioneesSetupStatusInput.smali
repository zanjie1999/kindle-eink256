.class public Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;
.super Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;
.source "GetCustomerProvisioneesSetupStatusInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private provisioneeIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.GetCustomerProvisioneesSetupStatusInput"

    aput-object v2, v0, v1

    .line 21
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 39
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 43
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;

    .line 46
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;->provisioneeIdentifiers:Ljava/util/List;

    iget-object v0, v0, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;->provisioneeIdentifiers:Ljava/util/List;

    .line 47
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getProvisioneeIdentifiers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;->provisioneeIdentifiers:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    invoke-super {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;->classNameHashCode:I

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;->provisioneeIdentifiers:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 28
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setProvisioneeIdentifiers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/ProvisioneeIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusInput;->provisioneeIdentifiers:Ljava/util/List;

    return-void
.end method
