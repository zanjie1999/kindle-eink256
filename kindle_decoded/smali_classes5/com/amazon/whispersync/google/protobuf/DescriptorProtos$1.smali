.class final Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;
    .locals 11

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$20602(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$002(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$000()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "File"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet;

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$102(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$702(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$700()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "Package"

    const-string v4, "Dependency"

    const-string v5, "MessageType"

    const-string v6, "EnumType"

    const-string v7, "Service"

    const-string v8, "Extension"

    const-string v9, "Options"

    const-string v10, "SourceCodeInfo"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto;

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$802(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$2302(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$2300()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "Field"

    const-string v4, "Extension"

    const-string v5, "NestedType"

    const-string v6, "EnumType"

    const-string v7, "ExtensionRange"

    const-string v8, "Options"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto;

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$2402(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$2300()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$2502(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$2500()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Start"

    const-string v3, "End"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$2602(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$4602(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$4600()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "Number"

    const-string v4, "Label"

    const-string v5, "Type"

    const-string v6, "TypeName"

    const-string v7, "Extendee"

    const-string v8, "DefaultValue"

    const-string v9, "Options"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$4702(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$6102(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$6100()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Options"

    const-string v3, "Name"

    const-string v4, "Value"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const-class v6, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {p1, v1, v4, v5, v6}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$6202(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$7102(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$7100()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v4, "Number"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const-class v6, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-direct {p1, v1, v4, v5, v6}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$7202(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$8102(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$8100()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v4, "Method"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const-class v6, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-direct {p1, v1, v4, v5, v6}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$8202(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$9102(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$9100()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v4, "InputType"

    const-string v5, "OutputType"

    filled-new-array {v3, v4, v5, v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$9202(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$10202(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$10200()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "JavaPackage"

    const-string v3, "JavaOuterClassname"

    const-string v4, "JavaMultipleFiles"

    const-string v5, "JavaGenerateEqualsAndHash"

    const-string v6, "OptimizeFor"

    const-string v7, "CcGenericServices"

    const-string v8, "JavaGenericServices"

    const-string v9, "PyGenericServices"

    const-string v10, "UninterpretedOption"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions;

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$10302(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$11802(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$11800()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "UninterpretedOption"

    const-string v3, "MessageSetWireFormat"

    const-string v4, "NoStandardDescriptorAccessor"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions;

    const-class v5, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$11902(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$12802(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$12800()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v3, "Ctype"

    const-string v4, "Packed"

    const-string v5, "Deprecated"

    const-string v6, "ExperimentalMapKey"

    filled-new-array {v3, v4, v5, v6, v2}, [Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions;

    const-class v5, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$12902(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$14002(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$14000()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions;

    const-class v5, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$14102(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xc

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$14702(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$14700()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueOptions;

    const-class v5, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$14802(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xd

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$15402(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$15400()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions;

    const-class v5, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$15502(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xe

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$16102(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$16100()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodOptions;

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$16202(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$16802(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$16800()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "IdentifierValue"

    const-string v4, "PositiveIntValue"

    const-string v5, "NegativeIntValue"

    const-string v6, "DoubleValue"

    const-string v7, "StringValue"

    const-string v8, "AggregateValue"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption;

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$16902(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$16800()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$17002(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$17000()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "NamePart"

    const-string v3, "IsExtension"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$17102(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$19102(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$19100()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Location"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo;

    const-class v4, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$19202(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$19100()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$19302(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$19300()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "Path"

    const-string v2, "Span"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const-class v3, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/DescriptorProtos;->access$19402(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const/4 p1, 0x0

    return-object p1
.end method
