.class public Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;
.super Ljava/lang/Object;
.source "GetCustomerDevicesCredentialsOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private credentialsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/SmartHomeCredential;",
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

    const-string v2, "com.amazon.devicesetupservice.smarthome.GetCustomerDevicesCredentialsOutput"

    aput-object v2, v0, v1

    .line 20
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 37
    instance-of v0, p1, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 41
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;

    .line 43
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;->credentialsList:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;->credentialsList:Ljava/util/List;

    .line 44
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCredentialsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/SmartHomeCredential;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;->credentialsList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    sget v1, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;->classNameHashCode:I

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;->credentialsList:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 27
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCredentialsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/smarthome/SmartHomeCredential;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;->credentialsList:Ljava/util/List;

    return-void
.end method
