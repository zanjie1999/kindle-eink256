.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "InAppNotificationsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContentViewHolder"
.end annotation


# instance fields
.field private final bodyTextView:Landroid/widget/TextView;

.field private final footerTextView:Landroid/widget/TextView;

.field private final imageView:Landroid/widget/ImageView;

.field private isRead:Z

.field private leftDeleteLayout:Landroid/widget/RelativeLayout;

.field private notificationItemBackground:Landroid/widget/RelativeLayout;

.field private notificationItemForeground:Landroid/widget/RelativeLayout;

.field private rightDeleteLayout:Landroid/widget/RelativeLayout;

.field private selectedNotificationCheckMark:Landroid/widget/ImageView;

.field private separatorView:Landroid/widget/LinearLayout;

.field private final titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string p1, "itemView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 95
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_cell_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz p1, :cond_8

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 96
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_cell_body:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->bodyTextView:Landroid/widget/TextView;

    .line 97
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_cell_footer:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->footerTextView:Landroid/widget/TextView;

    .line 98
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_cell_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    if-eqz p1, :cond_5

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->imageView:Landroid/widget/ImageView;

    .line 99
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_cell_check_mark:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->selectedNotificationCheckMark:Landroid/widget/ImageView;

    .line 100
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_item_foreground:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.RelativeLayout"

    if-eqz p1, :cond_3

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->notificationItemForeground:Landroid/widget/RelativeLayout;

    .line 101
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_item_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->notificationItemBackground:Landroid/widget/RelativeLayout;

    .line 102
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_left_delete_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->leftDeleteLayout:Landroid/widget/RelativeLayout;

    .line 103
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_right_delete_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->rightDeleteLayout:Landroid/widget/RelativeLayout;

    .line 104
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$id;->notification_cell_separator:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->separatorView:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->isRead:Z

    return-void

    .line 103
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getBodyTextView()Landroid/widget/TextView;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->bodyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getFooterTextView()Landroid/widget/TextView;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->footerTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getLeftDeleteLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->leftDeleteLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getNotificationItemBackground()Landroid/widget/RelativeLayout;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->notificationItemBackground:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getNotificationItemForeground()Landroid/widget/RelativeLayout;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->notificationItemForeground:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getRightDeleteLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->rightDeleteLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getSelectedNotificationCheckMark()Landroid/widget/ImageView;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->selectedNotificationCheckMark:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final isRead()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->isRead:Z

    return v0
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->notificationItemForeground:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->separatorView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public final setRead(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->isRead:Z

    return-void
.end method
