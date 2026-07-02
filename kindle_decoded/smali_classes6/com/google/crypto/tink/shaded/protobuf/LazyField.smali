.class public Lcom/google/crypto/tink/shaded/protobuf/LazyField;
.super Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;
.source "LazyField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/LazyField$LazyIterator;,
        Lcom/google/crypto/tink/shaded/protobuf/LazyField$LazyEntry;
    }
.end annotation


# instance fields
.field private final defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyField;->getValue()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getValue()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyField;->defaultInstance:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->getValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyField;->getValue()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyField;->getValue()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
