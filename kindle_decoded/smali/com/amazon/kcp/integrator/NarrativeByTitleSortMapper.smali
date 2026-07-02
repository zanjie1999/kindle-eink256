.class public abstract Lcom/amazon/kcp/integrator/NarrativeByTitleSortMapper;
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
.field private final groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 1

    const-string v0, "groupMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/NarrativeByTitleSortMapper;->groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

    return-void
.end method


# virtual methods
.method public generateId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 3

    .line 125
    sget-object v0, Lcom/amazon/kcp/integrator/NarrativeHelper;->INSTANCE:Lcom/amazon/kcp/integrator/NarrativeHelper;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/NarrativeByTitleSortMapper;->groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupMetadata.title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/integrator/NarrativeHelper;->narrativeItemWithTitleIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    return-object v0
.end method
