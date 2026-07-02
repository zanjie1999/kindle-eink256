.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufWifiConfigurationClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private isHiddenNetwork_:Z

.field private networkPriority_:I

.field private psk_:Ljava/lang/Object;

.field private ssid_:Ljava/lang/Object;

.field private wepKey_:Ljava/lang/Object;

.field private wifiKeyManagement_:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 767
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 949
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->ssid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1049
    iput v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->wifiKeyManagement_:I

    .line 1197
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->wepKey_:Ljava/lang/Object;

    .line 1297
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->psk_:Ljava/lang/Object;

    .line 768
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$1;)V
    .locals 0

    .line 750
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 773
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 949
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->ssid_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1049
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->wifiKeyManagement_:I

    .line 1197
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->wepKey_:Ljava/lang/Object;

    .line 1297
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->psk_:Ljava/lang/Object;

    .line 774
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$1;)V
    .locals 0

    .line 750
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 778
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 0

    .line 872
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;
    .locals 2

    .line 808
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 810
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;
    .locals 5

    .line 816
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$1;)V

    .line 817
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 822
    :goto_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->ssid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 826
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->wifiKeyManagement_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 830
    :cond_2
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->networkPriority_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 834
    :cond_3
    iget-boolean v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->isHiddenNetwork_:Z

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;Z)Z

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 838
    :cond_4
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->wepKey_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$1002(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 842
    :cond_5
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->psk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$1102(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$1202(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;I)I

    .line 844
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 1

    .line 849
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

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

    .line 750
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;
    .locals 1

    .line 804
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 800
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasIsHiddenNetwork()Z
    .locals 2

    .line 1158
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

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

.method public hasNetworkPriority()Z
    .locals 2

    .line 1110
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

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

.method public hasSsid()Z
    .locals 2

    .line 958
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

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

    .line 1058
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

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

    .line 761
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    .line 762
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 915
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->hasSsid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 918
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->hasWifiKeyManagement()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 921
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->hasNetworkPriority()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 924
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->hasIsHiddenNetwork()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 1

    .line 884
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 885
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasSsid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    .line 887
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->ssid_:Ljava/lang/Object;

    .line 888
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 890
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasWifiKeyManagement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getWifiKeyManagement()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->setWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    .line 893
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasNetworkPriority()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 894
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getNetworkPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->setNetworkPriority(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    .line 896
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasIsHiddenNetwork()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 897
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getIsHiddenNetwork()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->setIsHiddenNetwork(Z)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    .line 899
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasWepKey()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 900
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    .line 901
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$1000(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->wepKey_:Ljava/lang/Object;

    .line 902
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 904
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasPsk()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 905
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    .line 906
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$1100(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->psk_:Ljava/lang/Object;

    .line 907
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 909
    :cond_6
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->access$1300(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    .line 910
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 936
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 942
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 938
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
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

    .line 942
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    .line 944
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 1

    .line 875
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    if-eqz v0, :cond_0

    .line 876
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    return-object p0

    .line 878
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

    .line 750
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 0

    .line 1403
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 0

    .line 854
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIsHiddenNetwork(Z)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 1

    .line 1178
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    .line 1179
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->isHiddenNetwork_:Z

    .line 1180
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNetworkPriority(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 1

    .line 1130
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    .line 1131
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->networkPriority_:I

    .line 1132
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPsk(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1361
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    .line 1362
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->psk_:Ljava/lang/Object;

    .line 1363
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1359
    throw p1
.end method

.method public setSsid(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1013
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    .line 1014
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->ssid_:Ljava/lang/Object;

    .line 1015
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1011
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 0

    .line 1398
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 750
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWepKey(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1261
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    .line 1262
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->wepKey_:Ljava/lang/Object;

    .line 1263
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1259
    throw p1
.end method

.method public setWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1082
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->bitField0_:I

    .line 1083
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->wifiKeyManagement_:I

    .line 1084
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1080
    throw p1
.end method
