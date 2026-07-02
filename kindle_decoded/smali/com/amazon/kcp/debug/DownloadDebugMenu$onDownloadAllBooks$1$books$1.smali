.class final Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1$books$1;
.super Ljava/lang/Object;
.source "DownloadDebugMenu.kt"

# interfaces
.implements Lcom/amazon/kindle/content/filter/ContentMetadataFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1$books$1;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFiltered(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 4

    const-string/jumbo v0, "metadata"

    .line 246
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 249
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1$books$1;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;

    iget-boolean v1, v1, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;->$shouldDownload:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1$books$1;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;

    iget-boolean v1, v1, Lcom/amazon/kcp/debug/DownloadDebugMenu$onDownloadAllBooks$1;->$shouldDownload:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    const-string/jumbo v1, "metadata.state"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/ContentState;->isTerminal()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2
.end method
