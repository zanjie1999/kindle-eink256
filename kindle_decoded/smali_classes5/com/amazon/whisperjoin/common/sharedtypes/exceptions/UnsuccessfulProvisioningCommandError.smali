.class public Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;
.super Ljava/lang/Exception;
.source "UnsuccessfulProvisioningCommandError.java"


# instance fields
.field private final mStatusCode:I

.field private final mUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 15
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Command: %s Failed with Status Code: %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;->mUUID:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;->mStatusCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 31
    const-class v2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;

    .line 33
    iget v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;->mStatusCode:I

    iget v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;->mStatusCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;->mUUID:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;->mUUID:Ljava/lang/String;

    .line 34
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getStatusCode()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;->mStatusCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;->mStatusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;->mUUID:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
