.class public final Lcom/amazon/kcp/integrator/NarrativeByASINStringSortMapper;
.super Lcom/amazon/kcp/integrator/NarrativeByASINSortMapper;
.source "SortMapper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/integrator/NarrativeByASINSortMapper<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 1

    const-string v0, "groupMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/amazon/kcp/integrator/NarrativeByASINSortMapper;-><init>(Lcom/amazon/kindle/content/GroupMetadata;)V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/NarrativeByASINStringSortMapper;->groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

    return-void
.end method


# virtual methods
.method public bridge synthetic generateSort(I)Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/NarrativeByASINStringSortMapper;->generateSort(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateSort(I)Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/integrator/NarrativeByASINStringSortMapper;->groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-static {v0, p1}, Lcom/amazon/kcp/integrator/BookDataHelper;->stringForSortTypeFromGroupData(Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
