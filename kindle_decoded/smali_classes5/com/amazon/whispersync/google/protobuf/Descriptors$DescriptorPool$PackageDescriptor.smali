.class final Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/Descriptors$GenericDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->fullName:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toProto()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->toProto()Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method
