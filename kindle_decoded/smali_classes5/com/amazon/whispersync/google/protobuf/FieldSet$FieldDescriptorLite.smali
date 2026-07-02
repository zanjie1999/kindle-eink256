.class public interface abstract Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FieldDescriptorLite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/whispersync/google/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getEnumType()Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getLiteJavaType()Lcom/amazon/whispersync/google/protobuf/WireFormat$JavaType;
.end method

.method public abstract getLiteType()Lcom/amazon/whispersync/google/protobuf/WireFormat$FieldType;
.end method

.method public abstract getNumber()I
.end method

.method public abstract internalMergeFrom(Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;Lcom/amazon/whispersync/google/protobuf/MessageLite;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
.end method

.method public abstract isPacked()Z
.end method

.method public abstract isRepeated()Z
.end method
