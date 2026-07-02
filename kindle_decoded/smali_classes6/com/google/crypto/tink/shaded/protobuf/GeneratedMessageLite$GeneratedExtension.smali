.class public Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;
.super Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneratedExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field final descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

.field final messageDefaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;


# virtual methods
.method public getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v0

    return-object v0
.end method

.method public getMessageDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v0, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method
