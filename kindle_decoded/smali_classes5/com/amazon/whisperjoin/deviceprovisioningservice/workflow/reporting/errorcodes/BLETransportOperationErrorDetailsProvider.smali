.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;
.super Ljava/lang/Object;
.source "BLETransportOperationErrorDetailsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTransportErrorOperationOffset(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)I
    .locals 3

    .line 28
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider$1;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$exceptions$BLETransportOperationError$Operation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled Operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p1, 0x6d60

    return p1

    :pswitch_1
    const/16 p1, 0x6978

    return p1

    :pswitch_2
    const/16 p1, 0x6590

    return p1

    :pswitch_3
    const/16 p1, 0x61a8

    return p1

    :pswitch_4
    const/16 p1, 0x5dc0

    return p1

    :pswitch_5
    const/16 p1, 0x59d8

    return p1

    :pswitch_6
    const/16 p1, 0x55f0

    return p1

    :pswitch_7
    const/16 p1, 0x5208

    return p1

    :pswitch_8
    const/16 p1, 0x4e20

    return p1

    :pswitch_9
    const/16 p1, 0x4a38

    return p1

    :pswitch_a
    const/16 p1, 0x4650

    return p1

    :pswitch_b
    const/16 p1, 0x4268

    return p1

    :pswitch_c
    const/16 p1, 0x3e80

    return p1

    :pswitch_d
    const/16 p1, 0x3a98

    return p1

    :pswitch_e
    const/16 p1, 0x36b0

    return p1

    :pswitch_f
    const/16 p1, 0x32c8

    return p1

    :pswitch_10
    const/16 p1, 0x2ee0

    return p1

    :pswitch_11
    const/16 p1, 0x2af8

    return p1

    :pswitch_12
    const/16 p1, 0x2710

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDetails(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;)I
    .locals 2

    .line 13
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->getOperation()Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;->getTransportErrorOperationOffset(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)I

    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->getGattStatus()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->getGattStatus()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v1, 0x186a0

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method
