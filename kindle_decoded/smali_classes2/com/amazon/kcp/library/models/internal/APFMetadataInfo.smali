.class public Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;
.super Ljava/lang/Object;
.source "APFMetadataInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/internal/APFMetadataInfo$APFAuditInfo;
    }
.end annotation


# instance fields
.field private assetsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/models/internal/APFAssetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private auditInfo:Lcom/amazon/kcp/library/models/internal/APFMetadataInfo$APFAuditInfo;

.field private manifestMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/internal/APFMetadataInfo$APFAuditInfo;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/models/internal/APFMetadataInfo$APFAuditInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/models/internal/APFAssetInfo;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;->status:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;->auditInfo:Lcom/amazon/kcp/library/models/internal/APFMetadataInfo$APFAuditInfo;

    .line 33
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;->manifestMetadata:Ljava/util/Map;

    .line 34
    iput-object p4, p0, Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;->assetsInfo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAssetsInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/models/internal/APFAssetInfo;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/APFMetadataInfo;->assetsInfo:Ljava/util/List;

    return-object v0
.end method
