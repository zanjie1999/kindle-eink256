.class Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$GetRelatedBooksBody;
.super Ljava/lang/Object;
.source "GetRelatedBooksRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetRelatedBooksRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetRelatedBooksBody"
.end annotation


# instance fields
.field private dataKeys:[Ljava/lang/String;

.field private payloadByDataKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/bookwizard/service/State;Lcom/amazon/bookwizard/data/Book;)V
    .locals 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "relatedBooks"

    .line 98
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$GetRelatedBooksBody;->dataKeys:[Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$GetRelatedBooksBody;->payloadByDataKey:Ljava/util/Map;

    .line 104
    new-instance v2, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooksPayload;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$RelatedBooksPayload;-><init>(Lcom/amazon/bookwizard/service/State;Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$1;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/bookwizard/service/State;Lcom/amazon/bookwizard/data/Book;Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/amazon/bookwizard/service/GetRelatedBooksRequest$GetRelatedBooksBody;-><init>(Lcom/amazon/bookwizard/service/State;Lcom/amazon/bookwizard/data/Book;)V

    return-void
.end method
