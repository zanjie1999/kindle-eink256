.class public Lcom/amazon/kcp/search/searchhistory/SearchHistoryModel;
.super Ljava/lang/Object;
.source "SearchHistoryModel.java"


# instance fields
.field private query:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryModel;->userId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryModel;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/search/searchhistory/SearchHistoryModel;->query:Ljava/lang/String;

    return-object v0
.end method
