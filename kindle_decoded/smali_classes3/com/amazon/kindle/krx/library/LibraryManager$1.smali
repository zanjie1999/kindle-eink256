.class Lcom/amazon/kindle/krx/library/LibraryManager$1;
.super Ljava/lang/Object;
.source "LibraryManager.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/SQLQueryFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/library/LibraryManager;->listContentsFromOriginType(Ljava/lang/String;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/library/LibraryManager;

.field final synthetic val$originType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/library/LibraryManager;Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/amazon/kindle/krx/library/LibraryManager$1;->this$0:Lcom/amazon/kindle/krx/library/LibraryManager;

    iput-object p2, p0, Lcom/amazon/kindle/krx/library/LibraryManager$1;->val$originType:Ljava/lang/String;

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

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/amazon/kindle/krx/library/LibraryManager$1;->val$originType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getWhereClause()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

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
