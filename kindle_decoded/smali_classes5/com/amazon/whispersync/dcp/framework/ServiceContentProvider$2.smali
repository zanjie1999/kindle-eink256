.class Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$2;
.super Ljava/lang/Object;
.source "ServiceContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->shutdown()V
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

    .line 273
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$2;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$2;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$100(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    return-void
.end method
