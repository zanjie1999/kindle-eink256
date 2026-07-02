.class public Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;
.super Landroid/app/Activity;
.source "ServiceUtilityContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityInvocationHelper"
.end annotation


# static fields
.field public static final CLASS_NAME:Ljava/lang/String;

.field public static final EXTRA_CALLBACK_INTENT:Ljava/lang/String;

.field public static final EXTRA_INNER_ACTIVITY_INTENT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->CLASS_NAME:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_INNER_ACTIVITY_INTENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->EXTRA_INNER_ACTIVITY_INTENT:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_CALLBACK_INTENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->EXTRA_CALLBACK_INTENT:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->CLASS_NAME:Ljava/lang/String;

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->EXTRA_CALLBACK_INTENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->EXTRA_INNER_ACTIVITY_RESULT_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->EXTRA_INNER_ACTIVITY_RESULT_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    :try_start_0
    invoke-virtual {p1, p0, p2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    sget-object p2, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->TAG:Ljava/lang/String;

    const-string p3, "Failed to send activity result"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 39
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->EXTRA_INNER_ACTIVITY_INTENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
