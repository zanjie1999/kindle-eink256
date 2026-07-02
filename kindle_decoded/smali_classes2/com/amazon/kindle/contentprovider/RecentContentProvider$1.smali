.class Lcom/amazon/kindle/contentprovider/RecentContentProvider$1;
.super Ljava/lang/Object;
.source "RecentContentProvider.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/SQLQueryFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/contentprovider/RecentContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/contentprovider/RecentContentProvider;

.field final synthetic val$limitStr:Ljava/lang/String;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/contentprovider/RecentContentProvider;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/contentprovider/RecentContentProvider$1;->this$0:Lcom/amazon/kindle/contentprovider/RecentContentProvider;

    iput-object p2, p0, Lcom/amazon/kindle/contentprovider/RecentContentProvider$1;->val$selection:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/contentprovider/RecentContentProvider$1;->val$selectionArgs:[Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/contentprovider/RecentContentProvider$1;->val$limitStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLimit()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/RecentContentProvider$1;->val$limitStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/RecentContentProvider$1;->val$selectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getWhereClause()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/RecentContentProvider$1;->val$selection:Ljava/lang/String;

    return-object v0
.end method

.method public orderBy()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
