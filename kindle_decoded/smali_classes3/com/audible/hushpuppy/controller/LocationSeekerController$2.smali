.class Lcom/audible/hushpuppy/controller/LocationSeekerController$2;
.super Ljava/lang/Object;
.source "LocationSeekerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/LocationSeekerController;->onProgressChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/LocationSeekerController;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$2;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 225
    invoke-static {}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged ebook seekbar position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$2;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-static {v2}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->access$000(Lcom/audible/hushpuppy/controller/LocationSeekerController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$2;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iget-object v1, v0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->access$000(Lcom/audible/hushpuppy/controller/LocationSeekerController;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSeekBarEBookPosition(I)V

    return-void
.end method
