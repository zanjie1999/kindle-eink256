.class public interface abstract Lcom/google/crypto/tink/shaded/protobuf/LazyStringList;
.super Ljava/lang/Object;
.source "LazyStringList.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/ProtocolStringList;


# virtual methods
.method public abstract add(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
.end method

.method public abstract getRaw(I)Ljava/lang/Object;
.end method

.method public abstract getUnderlyingElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getUnmodifiableView()Lcom/google/crypto/tink/shaded/protobuf/LazyStringList;
.end method
