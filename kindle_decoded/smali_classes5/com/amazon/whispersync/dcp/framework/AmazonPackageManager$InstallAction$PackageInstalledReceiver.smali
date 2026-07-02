.class Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AmazonPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstalledReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;-><init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;)V

    return-void
.end method

.method private isPackageUpdateIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 112
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;->isPackageUpdateIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->access$000(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->access$000(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Detected install of package %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    iget-object p1, p1, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$200(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;)Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->access$300(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;)V

    :cond_0
    return-void
.end method
