.class Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;
.super Ljava/lang/Object;
.source "OccurrenceGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionToRowMap"
.end annotation


# instance fields
.field private map:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;->this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;-><init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;)V

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;->map:Ljava/util/TreeMap;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;->map:Ljava/util/TreeMap;

    const/4 v0, 0x0

    .line 210
    :goto_0
    iget-object v2, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;->this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    iget-object v2, v2, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;->this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    iget-object v2, v2, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->groups:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/xray/model/object/LabeledGroup;

    invoke-virtual {v2}, Lcom/amazon/xray/model/object/LabeledGroup;->getItems()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 212
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;->map:Ljava/util/TreeMap;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/xray/model/object/PositionRange;

    invoke-virtual {v5}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;->this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    invoke-virtual {v6, v0, v3}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getListPosition(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;->map:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 221
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 223
    :cond_2
    iget-object p1, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$PositionToRowMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    return v1
.end method
