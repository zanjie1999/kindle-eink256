.class public Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;
.super Ljava/lang/Object;
.source "RecentSearchDatabaseTermData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bookId:Ljava/lang/String;

.field private term:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->bookId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->term:Ljava/lang/String;

    .line 38
    iput-wide p3, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->time:J

    return-void
.end method


# virtual methods
.method public getTerm()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->term:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->time:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentSearchDatabaseTermData{BookId = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->bookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Term"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->term:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Timestamp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
