.class public abstract Lcom/amazon/kindle/content/BaseCoverOrderStrategy;
.super Ljava/lang/Object;
.source "CoverOrderStrategy.kt"

# interfaces
.implements Lcom/amazon/kindle/content/CoverOrderStrategyContract;


# instance fields
.field private final ASCENDING_ORDER:Lcom/amazon/kindle/db/OrderBy;

.field private final DESCENDING_ORDER:Lcom/amazon/kindle/db/OrderBy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/amazon/kindle/db/OrderBy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/db/OrderBy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;->DESCENDING_ORDER:Lcom/amazon/kindle/db/OrderBy;

    .line 16
    new-instance v0, Lcom/amazon/kindle/db/OrderBy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ASC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/db/OrderBy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;->ASCENDING_ORDER:Lcom/amazon/kindle/db/OrderBy;

    return-void
.end method


# virtual methods
.method protected final getASCENDING_ORDER()Lcom/amazon/kindle/db/OrderBy;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;->ASCENDING_ORDER:Lcom/amazon/kindle/db/OrderBy;

    return-object v0
.end method

.method protected final getDESCENDING_ORDER()Lcom/amazon/kindle/db/OrderBy;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/content/BaseCoverOrderStrategy;->DESCENDING_ORDER:Lcom/amazon/kindle/db/OrderBy;

    return-object v0
.end method

.method public final isFalkor(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lcom/amazon/kindle/utils/GroupContentHelper;->isFalkorGroup(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
