.class Lcom/amazon/whispersync/communication/authentication/DcpUriSanitizer;
.super Ljava/lang/Object;


# static fields
.field private static final DEVICE_EVENT_PROXY:Ljava/lang/String; = "DeviceEventProxy"

.field private static final FAKE_URI:Landroid/net/Uri;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.DcpUriUtil"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/authentication/DcpUriSanitizer;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v0, "http://www.amazon.com/workAroundDcpBlackList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/communication/authentication/DcpUriSanitizer;->FAKE_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static sanitizeUriForDcp(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceEventProxy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/amazon/whispersync/communication/authentication/DcpUriSanitizer;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "sanitizeUriForDcp"

    const-string v2, "Using fake URI to work-around DCP blacklist."

    invoke-virtual {p0, v1, v2, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/amazon/whispersync/communication/authentication/DcpUriSanitizer;->FAKE_URI:Landroid/net/Uri;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/amazon/whispersync/communication/authentication/DcpUriSanitizer;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "signRequest"

    const-string v3, "No path or null path in URI, appending / as a workaround"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "ws://"

    const-string v3, "http://"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "wss://"

    const-string v3, "https://"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string p0, "/"

    goto :goto_0

    :cond_4
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
