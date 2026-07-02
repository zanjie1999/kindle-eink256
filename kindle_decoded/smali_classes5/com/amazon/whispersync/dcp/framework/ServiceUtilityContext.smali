.class public Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;
.super Landroid/content/ContextWrapper;
.source "ServiceUtilityContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$IActivityResultListener;,
        Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;
    }
.end annotation


# static fields
.field public static final ACTION_INNER_ACTIVITY_RESULT:Ljava/lang/String;

.field public static final CLASS_NAME:Ljava/lang/String;

.field public static final EXTRA_INNER_ACTIVITY_RESULT_CODE:Ljava/lang/String;

.field public static final EXTRA_INNER_ACTIVITY_RESULT_DATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const-class v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->CLASS_NAME:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ACTION_INNER_ACTIVITY_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->ACTION_INNER_ACTIVITY_RESULT:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_INNER_ACTIVITY_RESULT_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->EXTRA_INNER_ACTIVITY_RESULT_CODE:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_INNER_ACTIVITY_RESULT_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->EXTRA_INNER_ACTIVITY_RESULT_DATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public startActivityForResult(Landroid/content/Intent;ILcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$IActivityResultListener;)V
    .locals 3

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->EXTRA_INNER_ACTIVITY_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    new-instance p1, Landroid/content/Intent;

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->ACTION_INNER_ACTIVITY_RESULT:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, p2, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 113
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$ActivityInvocationHelper;->EXTRA_CALLBACK_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$1;

    invoke-direct {p1, p0, p3, p2}, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$1;-><init>(Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$IActivityResultListener;I)V

    .line 129
    new-instance p2, Landroid/content/IntentFilter;

    sget-object p3, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->ACTION_INNER_ACTIVITY_RESULT:Ljava/lang/String;

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
