.class Lcom/amazon/kindle/contentprovider/SearchProvider$1;
.super Ljava/lang/Object;
.source "SearchProvider.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/SQLQueryFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/contentprovider/SearchProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/contentprovider/SearchProvider;

.field final synthetic val$limitStr:Ljava/lang/String;

.field final synthetic val$selectionArgsList:Ljava/util/List;

.field final synthetic val$selectionBuilder:Ljava/lang/StringBuilder;

.field final synthetic val$sortOrder:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/contentprovider/SearchProvider;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/kindle/contentprovider/SearchProvider$1;->this$0:Lcom/amazon/kindle/contentprovider/SearchProvider;

    iput-object p2, p0, Lcom/amazon/kindle/contentprovider/SearchProvider$1;->val$sortOrder:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/contentprovider/SearchProvider$1;->val$selectionBuilder:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/amazon/kindle/contentprovider/SearchProvider$1;->val$selectionArgsList:Ljava/util/List;

    iput-object p5, p0, Lcom/amazon/kindle/contentprovider/SearchProvider$1;->val$limitStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLimit()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/SearchProvider$1;->val$limitStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/SearchProvider$1;->val$selectionArgsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/amazon/kindle/contentprovider/SearchProvider$1;->val$selectionArgsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWhereClause()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/SearchProvider$1;->val$selectionBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public orderBy()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/SearchProvider$1;->val$sortOrder:Ljava/lang/String;

    return-object v0
.end method
