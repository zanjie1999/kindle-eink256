.class Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$DisplayableOccurrenceLoader;
.super Ljava/lang/Object;
.source "OccurrenceGroupListAdapter.java"

# interfaces
.implements Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayableOccurrenceLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/xray/model/loader/AsyncListLoader$ValueLoader<",
        "Lcom/amazon/xray/model/object/DisplayableOccurrence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$DisplayableOccurrenceLoader;->this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$1;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$DisplayableOccurrenceLoader;-><init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;)V

    return-void
.end method


# virtual methods
.method public loadInBackground(I)Lcom/amazon/xray/model/object/DisplayableOccurrence;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$DisplayableOccurrenceLoader;->this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildItemForPosition(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$DisplayableOccurrenceLoader;->this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildItemForPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/PositionRange;

    .line 236
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$DisplayableOccurrenceLoader;->this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    invoke-static {v0}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->access$400(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;)Lcom/amazon/xray/model/object/DisplayableOccurrenceFactory;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1, v1}, Lcom/amazon/xray/model/object/DisplayableOccurrenceFactory;->getDisplayableOccurrence(Lcom/amazon/xray/model/object/PositionRange;II)Lcom/amazon/xray/model/object/DisplayableOccurrence;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic loadInBackground(I)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$DisplayableOccurrenceLoader;->loadInBackground(I)Lcom/amazon/xray/model/object/DisplayableOccurrence;

    move-result-object p1

    return-object p1
.end method
