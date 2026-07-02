.class public Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThumbnailServiceStopReceiver.java"


# static fields
.field public static final STOP_INTENT:Ljava/lang/String; = "com.amazon.kindle.thumbnailService.STOP"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.amazon.kindle.thumbnailService.STOP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 31
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/amazon/kcp/reader/ui/ThumbnailService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 34
    new-instance p1, Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver$1;-><init>(Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver;)V

    invoke-static {p1}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->destroy(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
