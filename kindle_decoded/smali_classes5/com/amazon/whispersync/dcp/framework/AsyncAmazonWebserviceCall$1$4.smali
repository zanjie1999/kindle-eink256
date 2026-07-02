.class Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$4;
.super Ljava/lang/Object;
.source "AsyncAmazonWebserviceCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->onProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

.field final synthetic val$arg0:I

.field final synthetic val$arg1:I


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;II)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$4;->this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

    iput p2, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$4;->val$arg0:I

    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$4;->val$arg1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$4;->this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->val$callback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    iget v1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$4;->val$arg0:I

    iget v2, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$4;->val$arg1:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onProgress(II)V

    return-void
.end method
