.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindLoadMoreHolder$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "InAppNotificationsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->onBindLoadMoreHolder(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindLoadMoreHolder$2;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindLoadMoreHolder$2;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->setLoadMoreIfShown()V

    return-void
.end method
