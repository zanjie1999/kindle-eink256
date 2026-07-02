.class public abstract Lcom/amazon/identity/auth/device/framework/AmazonIntentService;
.super Landroid/app/IntentService;
.source "DCP"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/identity/auth/device/framework/AmazonIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AmazonIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract cw()V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    .line 26
    sget-object p1, Lcom/amazon/identity/auth/device/framework/AmazonIntentService;->TAG:Ljava/lang/String;

    const-string v0, "Ignore: Received (null) Intent"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_0
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/framework/AmazonIntentService;->TAG:Ljava/lang/String;

    const-string v1, "Service Received: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/framework/AmazonIntentService;->cw()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p0}, Landroid/app/IntentService;->stopSelf()V

    .line 42
    throw p1

    :catch_1
    move-exception p1

    .line 36
    invoke-virtual {p0}, Landroid/app/IntentService;->stopSelf()V

    .line 37
    throw p1
.end method
