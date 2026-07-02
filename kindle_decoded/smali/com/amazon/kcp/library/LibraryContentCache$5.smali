.class Lcom/amazon/kcp/library/LibraryContentCache$5;
.super Ljava/lang/Object;
.source "LibraryContentCache.java"

# interfaces
.implements Lcom/amazon/kcp/library/cache/IContentMetadataLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryContentCache;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentCache;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentCache$5;->this$0:Lcom/amazon/kcp/library/LibraryContentCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetadata(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 160
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$5;->this$0:Lcom/amazon/kcp/library/LibraryContentCache;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryContentCache;->access$000(Lcom/amazon/kcp/library/LibraryContentCache;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentCache$5;->this$0:Lcom/amazon/kcp/library/LibraryContentCache;

    invoke-static {v1}, Lcom/amazon/kcp/library/LibraryContentCache;->access$000(Lcom/amazon/kcp/library/LibraryContentCache;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method
