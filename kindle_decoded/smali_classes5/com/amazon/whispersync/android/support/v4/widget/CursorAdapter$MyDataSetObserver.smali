.class Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$1;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$MyDataSetObserver;-><init>(Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 473
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amazon/whispersync/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 479
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
