.class Lcom/audible/hushpuppy/view/player/view/FullPlayerView$7;
.super Ljava/lang/Object;
.source "FullPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->configureCoverArtOnClickListener()V
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

    .line 277
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 280
    sget-object p1, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$11;->$SwitchMap$com$audible$hushpuppy$view$player$view$FullPlayerView$NavigationButtonsMode:[I

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->access$000(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToEBook()Z

    goto :goto_0

    .line 286
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    sget-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->JUMP_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->access$002(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;)Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    .line 287
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->refresh()V

    goto :goto_0

    .line 282
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    sget-object v0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;->CHAPTER_BUTTONS_CONTROLS:Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->access$002(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;)Lcom/audible/hushpuppy/view/player/view/FullPlayerView$NavigationButtonsMode;

    .line 283
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->refresh()V

    :goto_0
    return-void
.end method
