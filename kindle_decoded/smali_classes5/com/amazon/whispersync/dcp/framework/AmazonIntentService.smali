.class public abstract Lcom/amazon/whispersync/dcp/framework/AmazonIntentService;
.super Landroid/app/IntentService;
.source "AmazonIntentService.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/whispersync/dcp/framework/AmazonIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/AmazonIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 21
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/AmazonIntentService;->protectedOnHandleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p0}, Landroid/app/IntentService;->stopSelf()V

    .line 31
    throw p1

    :catch_1
    move-exception p1

    .line 25
    invoke-virtual {p0}, Landroid/app/IntentService;->stopSelf()V

    .line 26
    throw p1
.end method

.method protected abstract protectedOnHandleIntent(Landroid/content/Intent;)V
.end method
