.class Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$AsyncListOnLoadListener;
.super Ljava/lang/Object;
.source "OccurrenceGroupListAdapter.java"

# interfaces
.implements Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncListOnLoadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener<",
        "Lcom/amazon/xray/model/object/DisplayableOccurrence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$AsyncListOnLoadListener;->this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$1;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$AsyncListOnLoadListener;-><init>(Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;)V

    return-void
.end method


# virtual methods
.method public onLoad(Lcom/amazon/xray/model/loader/AsyncListLoader;ILcom/amazon/xray/model/object/DisplayableOccurrence;)V
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$AsyncListOnLoadListener;->this$0:Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onLoad(Lcom/amazon/xray/model/loader/AsyncListLoader;ILjava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p3, Lcom/amazon/xray/model/object/DisplayableOccurrence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter$AsyncListOnLoadListener;->onLoad(Lcom/amazon/xray/model/loader/AsyncListLoader;ILcom/amazon/xray/model/object/DisplayableOccurrence;)V

    return-void
.end method
