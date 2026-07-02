.class Lcom/audible/hushpuppy/controller/LocationSeekerController$3;
.super Ljava/lang/Object;
.source "LocationSeekerController.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/IVoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/LocationSeekerController;->onFileLoadedChromePlayClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

.field final synthetic val$ebookPageStartPosition:I


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/LocationSeekerController;I)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$3;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iput p2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$3;->val$ebookPageStartPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$3;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iget-object v0, v0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iget v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$3;->val$ebookPageStartPosition:I

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition(I)I

    move-result v0

    .line 685
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$3;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-static {v1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->access$500(Lcom/audible/hushpuppy/controller/LocationSeekerController;)Lcom/audible/hushpuppy/controller/SeekController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(IZ)V

    .line 686
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$3;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iget-object v1, v1, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v1, v2, :cond_0

    .line 687
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$3;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iget-object v2, v1, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v2, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->access$600(Lcom/audible/hushpuppy/controller/LocationSeekerController;I)V

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$3;->this$0:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    iget-object v1, v1, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readAlongController:Lcom/audible/hushpuppy/controller/ReadAlongController;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->forceOnAudioPositionUpdate(I)V

    return-void
.end method
