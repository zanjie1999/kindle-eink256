.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;
.super Ljava/lang/Object;
.source "InAppNotificationsAdapter.kt"

# interfaces
.implements Lcom/amazon/kindle/inapp/notifications/image/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->onBindContentViewHolder(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$ContentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $holderRef:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            ")V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;->$holderRef:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "image"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getActivity()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1$onCompletion$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1$onCompletion$1;-><init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$onBindContentViewHolder$listener$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
