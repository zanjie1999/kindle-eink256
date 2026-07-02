.class Lcom/amazon/kindle/content/LibraryContentService$10;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/SQLQueryFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryContentService;

.field final synthetic val$prefix:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1685
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$10;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iput-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService$10;->val$prefix:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/content/LibraryContentService$10;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLimit()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .line 1694
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$10;->val$userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    .line 1695
    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService$10;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/LibraryContentService;->getUserId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 1697
    iget-object v2, p0, Lcom/amazon/kindle/content/LibraryContentService$10;->val$userId:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getWhereClause()Ljava/lang/String;
    .locals 2

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService$10;->val$prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public orderBy()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
