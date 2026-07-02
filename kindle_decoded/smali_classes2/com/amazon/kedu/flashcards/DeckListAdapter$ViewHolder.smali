.class Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DeckListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/DeckListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private cardCount:Landroid/widget/TextView;

.field private correctLabel:Landroid/widget/TextView;

.field private deckEdited:Landroid/widget/TextView;

.field private deckName:Landroid/widget/TextView;

.field private indefiniteProgressBar:Landroid/widget/ProgressBar;

.field private infoContainer:Landroid/view/View;

.field private quizPercentage:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kedu/flashcards/DeckListAdapter$1;)V
    .locals 0

    .line 386
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->deckName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->deckName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->deckEdited:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->deckEdited:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->cardCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->cardCount:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/ProgressBar;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->indefiniteProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->indefiniteProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->quizPercentage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->quizPercentage:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->correctLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->correctLabel:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->infoContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->infoContainer:Landroid/view/View;

    return-object p1
.end method
