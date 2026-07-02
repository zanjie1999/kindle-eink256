.class Lcom/amazon/kindle/content/LibraryContentService$1;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Lcom/amazon/kindle/scan/LocalContentChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/LibraryContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryContentService;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$1;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteLocalFiles()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$1;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->deleteLocalFilesPendingRemoval(Z)V

    return-void
.end method

.method public onFileEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$1;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kindle/content/LibraryContentService;->handleFileEvent(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLocalPathChanged(Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$1;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/content/LibraryContentService;->scanPath(Ljava/lang/String;)V

    return-void
.end method
