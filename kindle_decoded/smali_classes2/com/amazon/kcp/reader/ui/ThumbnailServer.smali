.class public Lcom/amazon/kcp/reader/ui/ThumbnailServer;
.super Landroid/app/IntentService;
.source "ThumbnailServer.java"


# static fields
.field public static final ActionKey:Ljava/lang/String; = "ThumbnailServer"

.field public static final HeightKey:Ljava/lang/String; = "height"

.field public static final ImageIDKey:Ljava/lang/String; = "imageID"

.field private static final Invalid:I = -0x1

.field public static final IsFromScrubberKey:Ljava/lang/String; = "isFromScrubber"

.field public static final PageIndexKey:Ljava/lang/String; = "pageIndex"

.field public static final ThumbnailKey:Ljava/lang/String; = "thumbnail"

.field public static final WidthKey:Ljava/lang/String; = "width"

.field private static isPaused:Z = false

.field private static pageToViewIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static pdfDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

.field private static thumbnailCount:I

.field private static thumbnailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ThumbnailServer"

    .line 31
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static pause()V
    .locals 1

    const/4 v0, 0x1

    .line 103
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->isPaused:Z

    return-void
.end method

.method public static setThumbnailParams(Lcom/amazon/android/docviewer/pdf/PdfDoc;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/pdf/PdfDoc;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 82
    sput-object p0, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->pdfDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    .line 83
    sput p1, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->thumbnailCount:I

    .line 84
    new-instance p0, Ljava/util/HashMap;

    sget p1, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->thumbnailCount:I

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    sput-object p0, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->thumbnailMap:Ljava/util/HashMap;

    .line 85
    sput-object p2, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->pageToViewIdMap:Ljava/util/Map;

    return-void
.end method

.method public static unpause()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->isPaused:Z

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    .line 45
    :goto_0
    sget-boolean v0, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->isPaused:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    .line 47
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In \'OnHandleIntent()\', exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "pageIndex"

    const/4 v1, -0x1

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "imageID"

    .line 53
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "width"

    .line 54
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "height"

    .line 55
    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x0

    const-string v8, "isFromScrubber"

    .line 56
    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    sget-object p1, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->thumbnailMap:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->thumbnailMap:Ljava/util/HashMap;

    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    if-le v2, v1, :cond_2

    sget-object p1, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->pageToViewIdMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 63
    :cond_1
    sget-object p1, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->pdfDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {p1, v2, v5, v6}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getGraphicForPageIndex(III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-string v5, "ThumbnailServer"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    const-class v5, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "thumbnail"

    .line 67
    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string v0, "isFromScrubber"

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/amazon/kcp/reader/ui/ThumbnailServer;->thumbnailMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    const-string v2, "imageID"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pageIndex"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
