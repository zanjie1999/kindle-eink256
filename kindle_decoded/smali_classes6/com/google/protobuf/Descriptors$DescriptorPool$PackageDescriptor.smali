.class final Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;
.super Lcom/google/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$DescriptorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 0

    .line 2356
    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;-><init>()V

    .line 2357
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2358
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->fullName:Ljava/lang/String;

    .line 2359
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 2352
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 2348
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2344
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toProto()Lcom/google/protobuf/Message;
    .locals 1

    .line 2340
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->toProto()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method
