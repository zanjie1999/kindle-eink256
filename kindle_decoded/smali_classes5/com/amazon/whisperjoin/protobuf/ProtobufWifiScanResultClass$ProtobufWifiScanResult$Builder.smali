.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufWifiScanResultClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private frequencyBand_:I

.field private signalStrength_:I

.field private ssid_:Ljava/lang/Object;

.field private wifiKeyManagement_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 562
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 722
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->ssid_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 822
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->wifiKeyManagement_:I

    .line 563
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$1;)V
    .locals 0

    .line 545
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 568
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 722
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->ssid_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 822
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->wifiKeyManagement_:I

    .line 569
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$1;)V
    .locals 0

    .line 545
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 573
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 0

    .line 655
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;
    .locals 2

    .line 599
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 601
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;
    .locals 5

    .line 607
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$1;)V

    .line 608
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 613
    :goto_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->ssid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 617
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->wifiKeyManagement_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 621
    :cond_2
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->frequencyBand_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;I)I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 625
    :cond_3
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->signalStrength_:I

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;I)I

    .line 626
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->access$1002(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;I)I

    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 1

    .line 632
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;
    .locals 1

    .line 595
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 591
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasFrequencyBand()Z
    .locals 2

    .line 883
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSignalStrength()Z
    .locals 2

    .line 931
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSsid()Z
    .locals 2

    .line 731
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasWifiKeyManagement()Z
    .locals 2

    .line 831
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 556
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    .line 557
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 688
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->hasSsid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->hasWifiKeyManagement()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->hasFrequencyBand()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 697
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->hasSignalStrength()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 1

    .line 667
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 668
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSsid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    .line 670
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->ssid_:Ljava/lang/Object;

    .line 671
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 673
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasWifiKeyManagement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getWifiKeyManagement()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->setWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    .line 676
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasFrequencyBand()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getFrequencyBand()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->setFrequencyBand(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    .line 679
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 680
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getSignalStrength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->setSignalStrength(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    .line 682
    :cond_4
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->access$1100(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    .line 683
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 709
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 715
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 711
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    .line 717
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 1

    .line 658
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    if-eqz v0, :cond_0

    .line 659
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    return-object p0

    .line 661
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 0

    .line 976
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 0

    .line 637
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFrequencyBand(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 1

    .line 903
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    .line 904
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->frequencyBand_:I

    .line 905
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSignalStrength(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 1

    .line 951
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    .line 952
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->signalStrength_:I

    .line 953
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 786
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    .line 787
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->ssid_:Ljava/lang/Object;

    .line 788
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 784
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 0

    .line 971
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 855
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->bitField0_:I

    .line 856
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->wifiKeyManagement_:I

    .line 857
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 853
    throw p1
.end method
