.class Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;
.super Ljava/lang/Object;
.source "DeckOverviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlashcardListItemHolder"
.end annotation


# instance fields
.field private backGhl:Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

.field private backText:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

.field private flashcard:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

.field private frontGhl:Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

.field private frontText:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$1;)V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->frontGhl:Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->frontGhl:Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->frontText:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->frontText:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->backGhl:Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->backGhl:Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->backText:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->backText:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->flashcard:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->flashcard:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    return-object p1
.end method
