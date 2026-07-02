.class Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput$1;
.super Ljava/io/ByteArrayOutputStream;
.source "ConnectionWithBufferedOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;


# direct methods
.method constructor <init>(Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput$1;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;

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

    .line 18
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput$1;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;

    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;->access$000(Lcom/amazon/messaging/odot/webservices/ConnectionWithBufferedOutput;)V

    .line 19
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method
