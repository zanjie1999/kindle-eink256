.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1$onCompletion$1;
.super Ljava/lang/Object;
.source "InAppNotificationsAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;->onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $image:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1$onCompletion$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1$onCompletion$1;->$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1$onCompletion$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;

    iget-object v0, v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;->$holderRef:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1$onCompletion$1;->$image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
