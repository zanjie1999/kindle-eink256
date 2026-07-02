.class final Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final enumTypeMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end field

.field final isPacked:Z

.field final isRepeated:Z

.field final number:I

.field final type:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;


# virtual methods
.method public compareTo(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I
    .locals 1

    .line 1137
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget p1, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1077
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->compareTo(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I

    move-result p1

    return p1
.end method

.method public getEnumType()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public getLiteJavaType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1100
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return v0
.end method

.method public internalMergeFrom(Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 0

    .line 1131
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    return-object p1
.end method

.method public isPacked()Z
    .locals 1

    .line 1120
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    .line 1115
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method
