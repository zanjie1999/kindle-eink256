.class public final Lcom/amazon/messaging/odot/webservices/util/StreamHelpers;
.super Ljava/lang/Object;
.source "StreamHelpers.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/messaging/odot/webservices/util/StreamHelpers;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/util/StreamHelpers;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeStream(Ljava/io/OutputStream;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    sget-object p0, Lcom/amazon/messaging/odot/webservices/util/StreamHelpers;->TAG:Ljava/lang/String;

    const-string v0, "IOException thrown closing output stream"

    invoke-static {p0, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
