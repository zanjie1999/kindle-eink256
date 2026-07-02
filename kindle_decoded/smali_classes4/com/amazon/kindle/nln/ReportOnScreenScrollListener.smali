.class public Lcom/amazon/kindle/nln/ReportOnScreenScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ReportOnScreenScrollListener.java"


# instance fields
.field private notifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/nln/ReportOnScreenScrollListener;->notifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReportOnScreenScrollListener;->notifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->updateVisibleViews(Z)V

    return-void
.end method
