.class public final Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TOCListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TOCEntryViewHolder"
.end annotation


# instance fields
.field private final tocEntryView:Lcom/amazon/android/tableofcontents/ui/TOCEntryView;


# direct methods
.method public constructor <init>(Lcom/amazon/android/tableofcontents/ui/TOCEntryView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;->tocEntryView:Lcom/amazon/android/tableofcontents/ui/TOCEntryView;

    return-void
.end method


# virtual methods
.method public final getTocEntryView()Lcom/amazon/android/tableofcontents/ui/TOCEntryView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;->tocEntryView:Lcom/amazon/android/tableofcontents/ui/TOCEntryView;

    return-object v0
.end method
