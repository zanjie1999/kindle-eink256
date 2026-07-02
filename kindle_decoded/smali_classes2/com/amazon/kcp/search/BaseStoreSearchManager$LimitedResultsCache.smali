.class public Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;
.super Ljava/util/LinkedHashMap;
.source "BaseStoreSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/BaseStoreSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LimitedResultsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/BaseStoreSearchManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/BaseStoreSearchManager;IFZ)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;->this$0:Lcom/amazon/kcp/search/BaseStoreSearchManager;

    .line 41
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
