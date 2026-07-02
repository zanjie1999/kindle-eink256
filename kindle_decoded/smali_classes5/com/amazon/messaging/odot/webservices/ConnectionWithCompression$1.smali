.class Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression$1;
.super Ljava/util/zip/GZIPOutputStream;
.source "ConnectionWithCompression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression;->createCompressedStream(Ljava/io/OutputStream;)Ljava/util/zip/GZIPOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression;


# direct methods
.method constructor <init>(Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression;Ljava/io/OutputStream;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression$1;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression;

    invoke-direct {p0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

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

    .line 55
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression$1;->this$0:Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression;

    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression;->access$000(Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression;)V

    .line 56
    invoke-super {p0}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-void
.end method
