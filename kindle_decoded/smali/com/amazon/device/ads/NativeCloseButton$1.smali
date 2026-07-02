.class Lcom/amazon/device/ads/NativeCloseButton$1;
.super Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;
.source "NativeCloseButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/NativeCloseButton;->enable(ZLcom/amazon/device/ads/RelativePosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/NativeCloseButton;

.field final synthetic val$buttonSize:I

.field final synthetic val$position:Lcom/amazon/device/ads/RelativePosition;

.field final synthetic val$showImage:Z

.field final synthetic val$tapTargetSize:I


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/NativeCloseButton;IZLcom/amazon/device/ads/RelativePosition;I)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->this$0:Lcom/amazon/device/ads/NativeCloseButton;

    iput p2, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->val$tapTargetSize:I

    iput-boolean p3, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->val$showImage:Z

    iput-object p4, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->val$position:Lcom/amazon/device/ads/RelativePosition;

    iput p5, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->val$buttonSize:I

    invoke-direct {p0}, Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/NativeCloseButton$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->this$0:Lcom/amazon/device/ads/NativeCloseButton;

    iget v0, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->val$tapTargetSize:I

    invoke-static {p1, v0}, Lcom/amazon/device/ads/NativeCloseButton;->access$000(Lcom/amazon/device/ads/NativeCloseButton;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/NativeCloseButton$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .line 107
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->this$0:Lcom/amazon/device/ads/NativeCloseButton;

    iget-boolean v0, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->val$showImage:Z

    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->val$position:Lcom/amazon/device/ads/RelativePosition;

    iget v2, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->val$buttonSize:I

    iget v3, p0, Lcom/amazon/device/ads/NativeCloseButton$1;->val$tapTargetSize:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/device/ads/NativeCloseButton;->access$100(Lcom/amazon/device/ads/NativeCloseButton;ZLcom/amazon/device/ads/RelativePosition;II)V

    return-void
.end method
