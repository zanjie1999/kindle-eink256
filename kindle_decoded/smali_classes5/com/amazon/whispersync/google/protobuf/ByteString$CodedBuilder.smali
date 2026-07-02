.class final Lcom/amazon/whispersync/google/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final output:Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-static {p1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/ByteString$CodedBuilder;->output:Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;

    return-void
.end method

.method synthetic constructor <init>(ILcom/amazon/whispersync/google/protobuf/ByteString$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ByteString$CodedBuilder;->output:Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/google/protobuf/ByteString;-><init>([BLcom/amazon/whispersync/google/protobuf/ByteString$1;)V

    return-object v0
.end method

.method public getCodedOutput()Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ByteString$CodedBuilder;->output:Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;

    return-object v0
.end method
