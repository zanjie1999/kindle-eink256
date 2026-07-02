.class public final Lcom/amazon/whispersync/google/protobuf/ByteString$Output;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# instance fields
.field private final bout:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/ByteString$Output;->bout:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/ByteArrayOutputStream;Lcom/amazon/whispersync/google/protobuf/ByteString$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method


# virtual methods
.method public toByteString()Lcom/amazon/whispersync/google/protobuf/ByteString;
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ByteString$Output;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/ByteString;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/amazon/whispersync/google/protobuf/ByteString;-><init>([BLcom/amazon/whispersync/google/protobuf/ByteString$1;)V

    return-object v1
.end method
