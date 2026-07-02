.class Lcom/amazon/kedu/flashcards/DeckOverviewActivity$4;
.super Ljava/lang/Object;
.source "DeckOverviewActivity.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$4;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteItemClicked(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$4;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {v0, p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$500(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;Lcom/amazon/kedu/flashcards/models/CardModel;)V

    return-void
.end method

.method public onItemClicked(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 2

    .line 191
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->markCardEditedFromDeckOverview()V

    .line 192
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$4;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-static {v0, p1, v1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$400(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;Lcom/amazon/kedu/flashcards/models/CardModel;Lcom/amazon/kedu/flashcards/utils/Side;)V

    return-void
.end method

.method public onItemMarkedForDeletion(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$4;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {v0, p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$602(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    return-void
.end method
