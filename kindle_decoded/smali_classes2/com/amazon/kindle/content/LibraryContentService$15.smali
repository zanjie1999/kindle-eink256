.class Lcom/amazon/kindle/content/LibraryContentService$15;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/ContentMetadataFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService;->duplicateUnregisteredUserSideloadedContent(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryContentService;

.field final synthetic val$areSideloadChangesEnabed:Z

.field final synthetic val$isCNUser:Z

.field final synthetic val$sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;ZZLcom/amazon/kindle/content/SideloadedContentUtils;)V
    .locals 0

    .line 2301
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$15;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iput-boolean p2, p0, Lcom/amazon/kindle/content/LibraryContentService$15;->val$isCNUser:Z

    iput-boolean p3, p0, Lcom/amazon/kindle/content/LibraryContentService$15;->val$areSideloadChangesEnabed:Z

    iput-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService$15;->val$sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 3

    .line 2309
    iget-boolean v0, p0, Lcom/amazon/kindle/content/LibraryContentService$15;->val$isCNUser:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/jsr75/filesystem/Lab126FileSystemPathDescriptor;->isPreloadedDictionaryPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2310
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2316
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/content/LibraryContentService$15;->val$areSideloadChangesEnabed:Z

    if-eqz v0, :cond_1

    .line 2317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2318
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$15;->val$sideloadedContentUtils:Lcom/amazon/kindle/content/SideloadedContentUtils;

    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService$15;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-static {v2}, Lcom/amazon/kindle/content/LibraryContentService;->access$1400(Lcom/amazon/kindle/content/LibraryContentService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/amazon/kindle/content/SideloadedContentUtils;->isSideloadedDirectoryEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
