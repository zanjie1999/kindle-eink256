.class public interface abstract Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
.super Ljava/lang/Object;
.source "MessageLite.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    }
.end annotation


# virtual methods
.method public abstract getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
.end method

.method public abstract toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
.end method

.method public abstract toByteArray()[B
.end method

.method public abstract toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
.end method

.method public abstract writeTo(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
