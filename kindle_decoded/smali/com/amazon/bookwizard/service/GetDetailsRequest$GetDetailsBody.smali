.class Lcom/amazon/bookwizard/service/GetDetailsRequest$GetDetailsBody;
.super Ljava/lang/Object;
.source "GetDetailsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/service/GetDetailsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetDetailsBody"
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
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bookDetail"

    .line 118
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/bookwizard/service/GetDetailsRequest$GetDetailsBody;->dataKeys:[Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/bookwizard/service/GetDetailsRequest$GetDetailsBody;->payloadByDataKey:Ljava/util/Map;

    .line 124
    new-instance v2, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailPayload;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailPayload;-><init>(Ljava/lang/String;Lcom/amazon/bookwizard/service/GetDetailsRequest$1;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/bookwizard/service/GetDetailsRequest$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/service/GetDetailsRequest$GetDetailsBody;-><init>(Ljava/lang/String;)V

    return-void
.end method
