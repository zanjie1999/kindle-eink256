.class Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTableQuery;
.super Ljava/lang/Object;
.source "RecentSearchDatabaseTableQuery.java"


# static fields
.field static final ALL_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "BookId"

    const-string v1, "Term"

    const-string v2, "Timestamp"

    .line 44
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTableQuery;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method
