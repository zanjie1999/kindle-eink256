.class final Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;


# instance fields
.field private final checkInitialized:[I

.field private final defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

.field private final fields:[Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;

.field private final messageSetWireFormat:Z

.field private final syntax:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;


# virtual methods
.method public getCheckInitialized()[I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->checkInitialized:[I

    return-object v0
.end method

.method public getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object v0
.end method

.method public getFields()[Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->fields:[Lcom/google/crypto/tink/shaded/protobuf/FieldInfo;

    return-object v0
.end method

.method public getSyntax()Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->syntax:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return v0
.end method
