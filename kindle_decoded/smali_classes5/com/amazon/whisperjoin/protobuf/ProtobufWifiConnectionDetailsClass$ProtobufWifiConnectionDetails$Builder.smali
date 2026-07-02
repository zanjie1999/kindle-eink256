.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufWifiConnectionDetailsClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetailsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ssid_:Ljava/lang/Object;

.field private state_:I

.field private wifiKeyManagement_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 668
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 816
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->ssid_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 916
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->wifiKeyManagement_:I

    .line 968
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->state_:I

    .line 669
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$1;)V
    .locals 0

    .line 651
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 816
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->ssid_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 916
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->wifiKeyManagement_:I

    .line 968
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->state_:I

    .line 675
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$1;)V
    .locals 0

    .line 651
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 679
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 0

    .line 755
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    .locals 2

    .line 703
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 705
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    .locals 5

    .line 711
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$1;)V

    .line 712
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 717
    :goto_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->ssid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 721
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->wifiKeyManagement_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;I)I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 725
    :cond_2
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->state_:I

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;I)I

    .line 726
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;I)I

    .line 727
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 1

    .line 732
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

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

    .line 651
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    .locals 1

    .line 699
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 695
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasSsid()Z
    .locals 2

    .line 825
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasState()Z
    .locals 2

    .line 977
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

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

.method public hasWifiKeyManagement()Z
    .locals 2

    .line 925
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

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

    .line 662
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    .line 663
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 785
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->hasSsid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->hasWifiKeyManagement()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 791
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->hasState()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 1

    .line 767
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 768
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasSsid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

    .line 770
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->ssid_:Ljava/lang/Object;

    .line 771
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 773
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasWifiKeyManagement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getWifiKeyManagement()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->setWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    .line 776
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 777
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getState()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->setState(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    .line 779
    :cond_3
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->access$1000(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    .line 780
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 803
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 809
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 805
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
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

    .line 809
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    .line 811
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 1

    .line 758
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    if-eqz v0, :cond_0

    .line 759
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object p0

    .line 761
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

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 0

    .line 1026
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 0

    .line 737
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSsid(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 880
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

    .line 881
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->ssid_:Ljava/lang/Object;

    .line 882
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 878
    throw p1
.end method

.method public setState(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1001
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

    .line 1002
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->state_:I

    .line 1003
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 999
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 0

    .line 1021
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 949
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->bitField0_:I

    .line 950
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->wifiKeyManagement_:I

    .line 951
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 947
    throw p1
.end method
