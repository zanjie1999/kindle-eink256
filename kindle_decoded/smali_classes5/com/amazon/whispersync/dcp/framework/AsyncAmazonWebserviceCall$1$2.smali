.class Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$2;
.super Ljava/lang/Object;
.source "AsyncAmazonWebserviceCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->onHeadersReceived(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

.field final synthetic val$arg0:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$2;->this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$2;->val$arg0:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$2;->this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->val$callback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$2;->val$arg0:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onHeadersReceived(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    return-void
.end method
