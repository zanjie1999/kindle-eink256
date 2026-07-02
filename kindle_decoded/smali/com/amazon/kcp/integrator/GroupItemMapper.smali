.class public abstract Lcom/amazon/kcp/integrator/GroupItemMapper;
.super Ljava/lang/Object;
.source "SortMapper.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/SortMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/integrator/SortMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final groupItem:Lcom/amazon/kindle/content/GroupItemMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/GroupItemMetadata;)V
    .locals 1

    const-string v0, "groupItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/GroupItemMapper;->groupItem:Lcom/amazon/kindle/content/GroupItemMetadata;

    return-void
.end method


# virtual methods
.method public generateId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/integrator/GroupItemMapper;->groupItem:Lcom/amazon/kindle/content/GroupItemMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "groupItem.itemId ?: return null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->bookItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
