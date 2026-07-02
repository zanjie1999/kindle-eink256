.class Lcom/audible/hushpuppy/view/player/view/FullPlayerView$5;
.super Ljava/lang/Object;
.source "FullPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->configurePlayerControlOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$5;->this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$5;->this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->chapterController:Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/ChapterController;->goToPreviousChapter()V

    return-void
.end method
