.class Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$4;
.super Ljava/lang/Object;
.source "ServiceContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->onLowMemory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$4;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$4;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$500(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$4;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$600(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->onLowMemory()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 328
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$4;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$100(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    throw v0

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$4;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$100(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    return-void
.end method
