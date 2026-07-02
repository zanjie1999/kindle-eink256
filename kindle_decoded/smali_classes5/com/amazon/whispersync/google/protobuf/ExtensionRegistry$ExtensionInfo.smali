.class public final Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionInfo"
.end annotation


# instance fields
.field public final defaultInstance:Lcom/amazon/whispersync/google/protobuf/Message;

.field public final descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/Message;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    iput-object p2, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/amazon/whispersync/google/protobuf/Message;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;Lcom/amazon/whispersync/google/protobuf/Message;)V

    return-void
.end method
