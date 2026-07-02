.class Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceUtilityContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->startActivityForResult(Landroid/content/Intent;ILcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$IActivityResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;

.field final synthetic val$listener:Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$IActivityResultListener;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$IActivityResultListener;I)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$1;->val$listener:Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$IActivityResultListener;

    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$1;->val$requestCode:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 122
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$1;->val$listener:Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$IActivityResultListener;

    iget v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$1;->val$requestCode:I

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->EXTRA_INNER_ACTIVITY_RESULT_CODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->EXTRA_INNER_ACTIVITY_RESULT_DATA:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-interface {p1, v0, v1, p2}, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$IActivityResultListener;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
