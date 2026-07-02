.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufCBLRegistrationDetailsClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetailsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private httpCode_:I

.field private message_:Ljava/lang/Object;

.field private state_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 636
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 778
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->state_:I

    const-string v0, ""

    .line 830
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->message_:Ljava/lang/Object;

    .line 637
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$1;)V
    .locals 0

    .line 619
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 642
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 778
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->state_:I

    const-string p1, ""

    .line 830
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->message_:Ljava/lang/Object;

    .line 643
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$1;)V
    .locals 0

    .line 619
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 647
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 0

    .line 723
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;
    .locals 2

    .line 671
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 673
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;
    .locals 5

    .line 679
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$1;)V

    .line 680
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 685
    :goto_0
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->state_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 689
    :cond_1
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->message_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 693
    :cond_2
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->httpCode_:I

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;I)I

    .line 694
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;I)I

    .line 695
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 1

    .line 700
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

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

    .line 619
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;
    .locals 1

    .line 667
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 663
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasState()Z
    .locals 2

    .line 787
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 630
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    .line 631
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->hasState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 1

    .line 735
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 736
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getState()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->setState(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    .line 739
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->bitField0_:I

    .line 741
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->access$700(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->message_:Ljava/lang/Object;

    .line 742
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 744
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasHttpCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getHttpCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->setHttpCode(I)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    .line 747
    :cond_3
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->access$1000(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    .line 748
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 765
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 771
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 767
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
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

    .line 771
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    .line 773
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 1

    .line 726
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    if-eqz v0, :cond_0

    .line 727
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object p0

    .line 729
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

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 619
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 619
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 0

    .line 984
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 619
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 619
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 0

    .line 705
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHttpCode(I)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 1

    .line 959
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->bitField0_:I

    .line 960
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->httpCode_:I

    .line 961
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 894
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->bitField0_:I

    .line 895
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->message_:Ljava/lang/Object;

    .line 896
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 892
    throw p1
.end method

.method public setState(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 811
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->bitField0_:I

    .line 812
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->state_:I

    .line 813
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 809
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 0

    .line 979
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 619
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 619
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object p1

    return-object p1
.end method
