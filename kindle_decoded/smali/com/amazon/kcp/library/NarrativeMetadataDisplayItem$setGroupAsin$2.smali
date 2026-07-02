.class final Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$2;
.super Ljava/lang/Object;
.source "NarrativeMetadataDisplayItem.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->setGroupAsin(Lcom/amazon/kindle/model/content/IBookID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $coverBookId:Lcom/amazon/kindle/model/content/IBookID;

.field final synthetic this$0:Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$2;->this$0:Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;

    iput-object p2, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$2;->$coverBookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$2;->this$0:Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;

    sget-object v1, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;->INSTANCE:Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v3, "Utils.getFactory()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$2;->$coverBookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/content/IGroupService;->getSeriesIdFromItemId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;->invoke(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->access$setGroupAsin$p(Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;Ljava/lang/String;)V

    return-void
.end method
