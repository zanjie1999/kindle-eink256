.class Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator$1;
.super Ljava/lang/Object;
.source "SSLTrustConfigurator.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/settings/SettingsCache$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;->configure(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator$1;->this$0:Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheUpdated()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator$1;->this$0:Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;->access$000(Lcom/amazon/whispersync/dcp/framework/SSLTrustConfigurator;)V

    return-void
.end method
