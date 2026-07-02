.class final Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Holder;
.super Ljava/lang/Object;
.source "ImageDownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Holder;

.field private static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Holder;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Holder;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Holder;

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;

    invoke-direct {v1}, Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;-><init>()V

    new-instance v2, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadUtil;

    invoke-direct {v2}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadUtil;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;-><init>(Lcom/amazon/kindle/inapp/notifications/util/NetworkConnectionUtil;Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadUtil;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager$Holder;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadManager;

    return-object v0
.end method
