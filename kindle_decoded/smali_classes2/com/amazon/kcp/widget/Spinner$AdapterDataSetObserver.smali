.class Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/amazon/kcp/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/widget/Spinner;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->this$0:Lcom/amazon/kcp/widget/Spinner;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->this$0:Lcom/amazon/kcp/widget/Spinner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amazon/kcp/widget/Spinner;->mDataChanged:Z

    .line 173
    iget v1, v0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    iput v1, v0, Lcom/amazon/kcp/widget/Spinner;->mOldItemCount:I

    .line 174
    invoke-virtual {v0}, Lcom/amazon/kcp/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->this$0:Lcom/amazon/kcp/widget/Spinner;

    invoke-virtual {v0}, Lcom/amazon/kcp/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->this$0:Lcom/amazon/kcp/widget/Spinner;

    iget v2, v1, Lcom/amazon/kcp/widget/Spinner;->mOldItemCount:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    if-lez v2, :cond_0

    .line 178
    invoke-static {v1, v0}, Lcom/amazon/kcp/widget/Spinner;->access$000(Lcom/amazon/kcp/widget/Spinner;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->this$0:Lcom/amazon/kcp/widget/Spinner;

    invoke-virtual {v0}, Lcom/amazon/kcp/widget/Spinner;->rememberSyncState()V

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->this$0:Lcom/amazon/kcp/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->this$0:Lcom/amazon/kcp/widget/Spinner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amazon/kcp/widget/Spinner;->mDataChanged:Z

    .line 190
    invoke-virtual {v0}, Lcom/amazon/kcp/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->this$0:Lcom/amazon/kcp/widget/Spinner;

    invoke-static {v0}, Lcom/amazon/kcp/widget/Spinner;->access$100(Lcom/amazon/kcp/widget/Spinner;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/widget/Spinner$AdapterDataSetObserver;->this$0:Lcom/amazon/kcp/widget/Spinner;

    iget v1, v0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    iput v1, v0, Lcom/amazon/kcp/widget/Spinner;->mOldItemCount:I

    const/4 v1, 0x0

    .line 197
    iput v1, v0, Lcom/amazon/kcp/widget/Spinner;->mItemCount:I

    const/4 v1, -0x1

    .line 198
    iput v1, v0, Lcom/amazon/kcp/widget/Spinner;->mSelectedPosition:I

    iput v1, v0, Lcom/amazon/kcp/widget/Spinner;->mNextSelectedPosition:I

    .line 199
    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method
