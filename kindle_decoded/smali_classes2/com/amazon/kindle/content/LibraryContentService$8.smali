.class Lcom/amazon/kindle/content/LibraryContentService$8;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService;->addLocalContent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryContentService;

.field final synthetic val$metadata:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    .line 1484
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$8;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iput-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService$8;->val$metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1487
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$8;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService$8;->val$metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->checkAndRemoveOldestBackIssues(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void
.end method
