.class public abstract Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;
.super Ljava/lang/Object;
.source "StoreSearchCompleteEvent.java"


# instance fields
.field private query:Ljava/lang/String;

.field private searchUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;->query:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;->searchUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUrl()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;->searchUrl:Ljava/lang/String;

    return-object v0
.end method
