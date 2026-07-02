.class public Lcom/amazon/kindle/s2k/SendToKindleService;
.super Lcom/amazon/kcp/service/ReddingService;
.source "SendToKindleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;
    }
.end annotation


# static fields
.field private static final METRICS_EVENT_DOCUMENT_SENT:Ljava/lang/String; = "DocumentSendSuccess"

.field private static final METRICS_EVENT_INTERNAL_ERROR:Ljava/lang/String; = "InternalError"

.field private static final METRICS_EVENT_NETWORK_ERROR:Ljava/lang/String; = "NetworkError"

.field private static final METRICS_EVENT_SERVER_ERROR:Ljava/lang/String; = "ServerError"

.field private static final METRIC_CLASS_NAME:Ljava/lang/String; = "SendToKindleService"

.field private static final TAG:Ljava/lang/String;

.field public static final feedbackUrl:Ljava/lang/String; = "mailto:sendtokindle-feedback@amazon.com?subject=Send to Kindle for Android feedback"

.field public static final maxFileSize:J = 0x3200000L

.field public static final validInputFileFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 61
    const-class v0, Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/s2k/SendToKindleService;->TAG:Ljava/lang/String;

    const-string v1, "doc"

    const-string v2, "docx"

    const-string v3, "jpg"

    const-string v4, "jpeg"

    const-string v5, "gif"

    const-string v6, "png"

    const-string v7, "bmp"

    const-string v8, "pdf"

    const-string v9, "azw"

    const-string v10, "mobi"

    .line 62
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/s2k/SendToKindleService;->validInputFileFormats:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 674
    invoke-direct {p0}, Lcom/amazon/kcp/service/ReddingService;-><init>()V

    .line 676
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleService;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "SendToKindleService: SendToKindleService constructor."

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/s2k/SendToKindleService;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleService;->m_handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 689
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleService;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "SendToKindleService onCreate."

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 708
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleService;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "onDestroy(): SendToKindleService done."

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 696
    sget-object p2, Lcom/amazon/kindle/s2k/SendToKindleService;->TAG:Ljava/lang/String;

    const/4 p3, 0x2

    const-string v0, "SendToKindleService onStart."

    invoke-static {p2, p3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 697
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/s2k/SendToKindleService;->m_handler:Landroid/os/Handler;

    .line 698
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;-><init>(Lcom/amazon/kindle/s2k/SendToKindleService;Landroid/content/Intent;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 699
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return p3
.end method
