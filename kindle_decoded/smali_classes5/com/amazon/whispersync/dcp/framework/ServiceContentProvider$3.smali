.class Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$3;
.super Ljava/lang/Object;
.source "ServiceContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

.field final synthetic val$newConfig:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;Landroid/content/res/Configuration;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$3;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$3;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$3;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$500(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$3;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$600(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)Lcom/amazon/whispersync/dcp/framework/IContentProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$3;->val$newConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/dcp/framework/IContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 302
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$3;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$100(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    throw v0

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$3;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$100(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    return-void
.end method
