.class final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 0

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/amazon/whispersync/google/protobuf/Internal$EnumLite;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode$1;->findValueByNumber(I)Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object p1

    return-object p1
.end method
