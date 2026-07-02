.class Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$3;
.super Ljava/lang/Object;
.source "AsyncAmazonWebserviceCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->onNetworkError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$3;->this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$3;->this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->val$callback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onNetworkError()V

    return-void
.end method
