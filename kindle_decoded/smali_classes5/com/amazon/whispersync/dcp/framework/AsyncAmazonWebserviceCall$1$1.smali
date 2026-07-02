.class Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$1;
.super Ljava/lang/Object;
.source "AsyncAmazonWebserviceCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->onBodyChunkReceived([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

.field final synthetic val$arg0:[B

.field final synthetic val$arg1:I


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;[BI)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$1;->this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$1;->val$arg0:[B

    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$1;->val$arg1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$1;->this$1:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->val$callback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$1;->val$arg0:[B

    iget v2, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$1;->val$arg1:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onBodyChunkReceived([BI)V

    return-void
.end method
