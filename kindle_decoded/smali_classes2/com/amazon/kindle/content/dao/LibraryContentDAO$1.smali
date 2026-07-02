.class Lcom/amazon/kindle/content/dao/LibraryContentDAO$1;
.super Ljava/lang/Object;
.source "LibraryContentDAO.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/SQLQueryFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/LibraryContentDAO;->addUserToFilter(Lcom/amazon/kindle/content/filter/SQLQueryFilter;Ljava/lang/String;)Lcom/amazon/kindle/content/filter/SQLQueryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$filter:Lcom/amazon/kindle/content/filter/SQLQueryFilter;

.field final synthetic val$newArgs:[Ljava/lang/String;

.field final synthetic val$whereClause:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/LibraryContentDAO;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)V
    .locals 0

    .line 1450
    iput-object p2, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$1;->val$whereClause:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$1;->val$newArgs:[Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$1;->val$filter:Lcom/amazon/kindle/content/filter/SQLQueryFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLimit()Ljava/lang/String;
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$1;->val$filter:Lcom/amazon/kindle/content/filter/SQLQueryFilter;

    invoke-interface {v0}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getLimit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$1;->val$newArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getWhereClause()Ljava/lang/String;
    .locals 1

    .line 1454
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$1;->val$whereClause:Ljava/lang/String;

    return-object v0
.end method

.method public orderBy()Ljava/lang/String;
    .locals 1

    .line 1469
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$1;->val$filter:Lcom/amazon/kindle/content/filter/SQLQueryFilter;

    invoke-interface {v0}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->orderBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
