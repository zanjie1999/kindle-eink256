.class final Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownload$1;
.super Ljava/lang/Object;
.source "FalkorDownloadManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/download/FalkorDownloadManager;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/download/FalkorDownloadManager;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownload$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    iput-object p2, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownload$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownload$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    iget-object v1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownload$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0, v1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->access$initiateDownloadAsync(Lcom/amazon/falkor/download/FalkorDownloadManager;Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method
