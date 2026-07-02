.class Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$2;
.super Ljava/lang/Object;
.source "AsyncAmazonWebserviceCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$2;->this$0:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$2;->this$0:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->access$200(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;)Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;->call()V

    return-void
.end method
