.class Lcom/audible/hushpuppy/controller/ReadAlongController$1;
.super Ljava/lang/Object;
.source "ReadAlongController.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/IVoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/ReadAlongController;->launchJumpDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/ReadAlongController;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/ReadAlongController;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController$1;->this$0:Lcom/audible/hushpuppy/controller/ReadAlongController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController$1;->this$0:Lcom/audible/hushpuppy/controller/ReadAlongController;

    iget-object v0, v0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getEBookPosition()I

    move-result v0

    .line 456
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController$1;->this$0:Lcom/audible/hushpuppy/controller/ReadAlongController;

    iget-object v1, v1, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition(I)I

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController$1;->this$0:Lcom/audible/hushpuppy/controller/ReadAlongController;

    iget-object v1, v1, Lcom/audible/hushpuppy/controller/ReadAlongController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(IZ)V

    .line 458
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController$1;->this$0:Lcom/audible/hushpuppy/controller/ReadAlongController;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->forceOnAudioPositionUpdate(I)V

    return-void
.end method
