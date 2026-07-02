.class Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput$1;
.super Ljava/io/ByteArrayOutputStream;
.source "ConnectionWithBufferedOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;)V

    .line 23
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method
