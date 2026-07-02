.class Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;
.super Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;
.source "PurchaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/purchase/PurchaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LibraryEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/purchase/PurchaseManager;


# direct methods
.method private constructor <init>(Lcom/amazon/ea/purchase/PurchaseManager;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/purchase/PurchaseManager;Lcom/amazon/ea/purchase/PurchaseManager$1;)V
    .locals 0

    .line 1030
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;-><init>(Lcom/amazon/ea/purchase/PurchaseManager;)V

    return-void
.end method

.method private onDownloadStateChange(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1054
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1055
    :goto_0
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1060
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->DOWNLOADING:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-static {v0}, Lcom/amazon/ea/purchase/PurchaseManager;->access$1400(Lcom/amazon/ea/purchase/PurchaseManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    :cond_2
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$900(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onContentAdd(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 1034
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;->onDownloadStateChange(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onContentDelete(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 1039
    invoke-direct {p0, p1}, Lcom/amazon/ea/purchase/PurchaseManager$LibraryEventListener;->onDownloadStateChange(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method
