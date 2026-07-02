.class public Lcom/amazon/kcp/library/models/internal/APFAssetInfo;
.super Ljava/lang/Object;
.source "APFAssetInfo.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/APFAssetInfo;->id:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/APFAssetInfo;->fileName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/APFAssetInfo;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/APFAssetInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/APFAssetInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/APFAssetInfo;->metadata:Ljava/util/Map;

    return-object v0
.end method
