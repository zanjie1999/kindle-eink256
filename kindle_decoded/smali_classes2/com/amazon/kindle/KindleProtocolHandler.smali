.class public final Lcom/amazon/kindle/KindleProtocolHandler;
.super Ljava/lang/Object;
.source "KindleProtocolHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final androidDeviceClassFactory:Lcom/amazon/kcp/application/AndroidDeviceClassFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kindle/KindleProtocolHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/KindleProtocolHandler;->TAG:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/KindleProtocolHandler;->androidDeviceClassFactory:Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static getIntentForLaunchActivity(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 62
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/amazon/kindle/KindleProtocolHandler;->androidDeviceClassFactory:Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    invoke-virtual {v1, p0}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getLaunchActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static handle(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 35
    invoke-static {p1}, Lcom/amazon/kindle/KindleProtocolHandler;->parseScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleProtocol;->isKindleScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 39
    :cond_0
    sget-object v0, Lcom/amazon/kindle/KindleProtocolHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/KindleProtocolHandler;->getIntentForLaunchActivity(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static parseScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
