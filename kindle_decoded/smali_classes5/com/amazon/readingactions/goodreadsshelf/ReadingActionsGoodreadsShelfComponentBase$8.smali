.class Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$8;
.super Ljava/lang/Object;
.source "ReadingActionsGoodreadsShelfComponentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->initializeManualShelfAccessibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$8;->this$0:Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 728
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$8;->this$0:Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;

    iget-object p1, p1, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method
