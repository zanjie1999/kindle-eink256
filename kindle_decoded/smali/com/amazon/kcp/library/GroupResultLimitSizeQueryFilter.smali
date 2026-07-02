.class public Lcom/amazon/kcp/library/GroupResultLimitSizeQueryFilter;
.super Lcom/amazon/kcp/library/LibraryController$BaseFilter;
.source "GroupResultLimitSizeQueryFilter.java"


# static fields
.field private static final GROUP_SEARCH:Ljava/lang/String;


# instance fields
.field private limitSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " LIKE \'%\' || ? || \'%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_AUTHORS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\') AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AsinCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/GroupResultLimitSizeQueryFilter;->GROUP_SEARCH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryController$BaseFilter;-><init>(Ljava/lang/String;)V

    .line 19
    iput p2, p0, Lcom/amazon/kcp/library/GroupResultLimitSizeQueryFilter;->limitSize:I

    return-void
.end method


# virtual methods
.method public getLimit()Ljava/lang/String;
    .locals 1

    .line 33
    iget v0, p0, Lcom/amazon/kcp/library/GroupResultLimitSizeQueryFilter;->limitSize:I

    if-gez v0, :cond_0

    .line 34
    invoke-super {p0}, Lcom/amazon/kcp/library/LibraryController$BaseFilter;->getLimit()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhereClause()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kcp/library/GroupResultLimitSizeQueryFilter;->GROUP_SEARCH:Ljava/lang/String;

    return-object v0
.end method

.method public orderBy()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
