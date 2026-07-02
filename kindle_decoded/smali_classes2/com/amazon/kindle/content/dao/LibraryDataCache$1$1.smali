.class Lcom/amazon/kindle/content/dao/LibraryDataCache$1$1;
.super Ljava/lang/Object;
.source "LibraryDataCache.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/SQLQueryFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/dao/LibraryDataCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/content/dao/LibraryDataCache$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/dao/LibraryDataCache$1;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache$1$1;->this$1:Lcom/amazon/kindle/content/dao/LibraryDataCache$1;

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
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWhereClause()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public orderBy()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
