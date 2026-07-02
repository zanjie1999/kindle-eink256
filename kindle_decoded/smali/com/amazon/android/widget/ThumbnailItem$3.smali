.class Lcom/amazon/android/widget/ThumbnailItem$3;
.super Ljava/lang/Object;
.source "ThumbnailItem.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/ThumbnailItem;->registerToToggleEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/ThumbnailItem;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/ThumbnailItem;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem$3;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem$3;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    invoke-static {v0}, Lcom/amazon/android/widget/ThumbnailItem;->access$600(Lcom/amazon/android/widget/ThumbnailItem;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem$3;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    .line 332
    invoke-static {v0}, Lcom/amazon/android/widget/ThumbnailItem;->access$700(Lcom/amazon/android/widget/ThumbnailItem;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/android/widget/ThumbnailItem$3;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    invoke-static {v0}, Lcom/amazon/android/widget/ThumbnailItem;->access$600(Lcom/amazon/android/widget/ThumbnailItem;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/widget/ThumbnailItem$3;->this$0:Lcom/amazon/android/widget/ThumbnailItem;

    invoke-static {p1}, Lcom/amazon/android/widget/ThumbnailItem;->access$800(Lcom/amazon/android/widget/ThumbnailItem;)V

    :cond_1
    return-void
.end method
