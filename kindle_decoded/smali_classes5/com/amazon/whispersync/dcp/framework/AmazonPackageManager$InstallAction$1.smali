.class Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;
.super Ljava/lang/Object;
.source "AmazonPackageManager.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$IActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->startVisibleInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

.field final synthetic val$expectedRequestCode:I


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;I)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    iput p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;->val$expectedRequestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 285
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    iget-object p2, p2, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

    invoke-static {p2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$200(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;)Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    invoke-static {p3}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->access$800(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;)Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->access$802(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;)Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;

    .line 287
    iget p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;->val$expectedRequestCode:I

    if-ne p1, p2, :cond_0

    const p1, -0xea62

    .line 293
    :try_start_0
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    invoke-static {p2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->access$300(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 303
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Crash detected while checking for visible install result"

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    invoke-static {p2, p1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->access$900(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;I)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 297
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Crash detected while checking for visible install result."

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;->this$1:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;

    invoke-static {p2, p1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->access$900(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;I)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "Received unexpected request code %d...how did that happen?"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
