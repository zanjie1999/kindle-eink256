.class Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection$1;
.super Ljava/io/OutputStream;
.source "CustomResponseFailedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
