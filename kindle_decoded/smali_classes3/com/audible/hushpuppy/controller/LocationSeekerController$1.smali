.class Lcom/audible/hushpuppy/controller/LocationSeekerController$1;
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

.field final synthetic val$eBookPosition:I


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/LocationSeekerController;I)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$1;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iput p2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$1;->val$eBookPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$1;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iget-object v0, v0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iget v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$1;->val$eBookPosition:I

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition(I)I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$1;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iget-object v1, v1, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setCurrentlySelectedAudioPosition(I)V

    return-void
.end method
