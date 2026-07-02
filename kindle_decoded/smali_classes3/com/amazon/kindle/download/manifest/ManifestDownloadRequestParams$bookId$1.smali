.class final Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams$bookId$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ManifestRequestParams.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;ZLjava/io/File;Lcom/amazon/kindle/services/download/IDownloadTracker;Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/model/content/IBookID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams$bookId$1;->this$0:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/model/content/IBookID;
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams$bookId$1;->this$0:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isSilentUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams$bookId$1;->this$0:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getAsin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams$bookId$1;->this$0:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/UpdateBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams$bookId$1;->this$0:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getAsin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams$bookId$1;->this$0:Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams$bookId$1;->invoke()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    return-object v0
.end method
