.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindLoadMoreHolder$1;
.super Ljava/lang/Object;
.source "InAppNotificationsAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->onBindLoadMoreHolder(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindLoadMoreHolder$1;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindLoadMoreHolder$1;->$holder:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$LoadMoreViewHolder;->refreshView()V

    return-void
.end method
