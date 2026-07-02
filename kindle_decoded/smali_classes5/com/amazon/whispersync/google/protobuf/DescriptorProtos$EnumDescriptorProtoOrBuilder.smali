.class public interface abstract Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnumDescriptorProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOptions()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;
.end method

.method public abstract getOptionsOrBuilder()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;
.end method

.method public abstract getValue(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
.end method

.method public abstract getValueCount()I
.end method

.method public abstract getValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValueOrBuilder(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;
.end method

.method public abstract getValueOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasOptions()Z
.end method
