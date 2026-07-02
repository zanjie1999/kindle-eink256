.class Lcom/amazon/xray/ui/adapter/LabeledListAdapter$ForwardingDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "LabeledListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/LabeledListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardingDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/adapter/LabeledListAdapter;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/adapter/LabeledListAdapter;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter$ForwardingDataSetObserver;->this$0:Lcom/amazon/xray/ui/adapter/LabeledListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/LabeledListAdapter;Lcom/amazon/xray/ui/adapter/LabeledListAdapter$1;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/adapter/LabeledListAdapter$ForwardingDataSetObserver;-><init>(Lcom/amazon/xray/ui/adapter/LabeledListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter$ForwardingDataSetObserver;->this$0:Lcom/amazon/xray/ui/adapter/LabeledListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter$ForwardingDataSetObserver;->this$0:Lcom/amazon/xray/ui/adapter/LabeledListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
