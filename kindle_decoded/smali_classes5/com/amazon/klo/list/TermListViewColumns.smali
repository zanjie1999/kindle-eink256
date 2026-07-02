.class public Lcom/amazon/klo/list/TermListViewColumns;
.super Landroid/view/ViewGroup;
.source "TermListViewColumns.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final SELECTOR_DELAY_TIME:I = 0xfa

.field private static placeholderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/klo/list/TermListItemPlaceholder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentlySelectedView:Landroid/view/View;

.field private currentlyVisibleEndIndexes:[I

.field private currentlyVisibleStartIndexes:[I

.field private final handler:Landroid/os/Handler;

.field private newlyAddedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private overlaySelectedView:Ljava/lang/Runnable;

.field private placeholders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/klo/list/TermListItemPlaceholder;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedItemOverlay:Landroid/graphics/drawable/Drawable;

.field private selectedItemOverlayRect:Landroid/graphics/Rect;

.field private termListItemProvider:Lcom/amazon/klo/list/ITermListViewProvider;

.field private viewEndY:I

.field private viewRecycleBin:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewStartY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/klo/list/TermListViewColumns$1;

    invoke-direct {v0}, Lcom/amazon/klo/list/TermListViewColumns$1;-><init>()V

    sput-object v0, Lcom/amazon/klo/list/TermListViewColumns;->placeholderComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/klo/list/ITermListViewProvider;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->handler:Landroid/os/Handler;

    .line 36
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewRecycleBin:Ljava/util/Stack;

    .line 51
    new-instance p1, Lcom/amazon/klo/list/TermListViewColumns$2;

    invoke-direct {p1, p0}, Lcom/amazon/klo/list/TermListViewColumns$2;-><init>(Lcom/amazon/klo/list/TermListViewColumns;)V

    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->overlaySelectedView:Ljava/lang/Runnable;

    .line 70
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/klo/list/TermListViewColumns;->initializeView(Lcom/amazon/klo/list/ITermListViewProvider;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/klo/list/TermListViewColumns;)Landroid/graphics/Rect;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/klo/list/TermListViewColumns;->selectedItemOverlayRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private addTermToBottomOfVisibleColumn(ILandroid/graphics/Rect;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/klo/list/TermListItemPlaceholder;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/amazon/klo/list/TermListViewColumns;->addViewFromProvider(Lcom/amazon/klo/list/TermListItemPlaceholder;IZLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private addTermToTopOfVisibleColumn(ILandroid/graphics/Rect;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v1, v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/klo/list/TermListItemPlaceholder;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/amazon/klo/list/TermListViewColumns;->addViewFromProvider(Lcom/amazon/klo/list/TermListItemPlaceholder;IZLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private addViewFromProvider(Lcom/amazon/klo/list/TermListItemPlaceholder;IZLandroid/graphics/Rect;)V
    .locals 7

    if-eqz p3, :cond_0

    .line 217
    invoke-direct {p0, p2}, Lcom/amazon/klo/list/TermListViewColumns;->getChildrenBeforeColumn(I)I

    move-result p3

    invoke-direct {p0, p2}, Lcom/amazon/klo/list/TermListViewColumns;->getChildCount(I)I

    move-result v0

    add-int/2addr p3, v0

    .line 218
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v1, v0, p2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p2

    .line 219
    aget v0, v0, p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/klo/list/TermListViewColumns;->getChildrenBeforeColumn(I)I

    move-result p3

    .line 224
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v1, v0, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p2

    .line 225
    aget v0, v0, p2

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->termListItemProvider:Lcom/amazon/klo/list/ITermListViewProvider;

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getRecycledView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getTermState()Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    move-result-object v5

    .line 229
    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getDescriptionState()Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    move-result-object v6

    move-object v4, p0

    .line 228
    invoke-interface/range {v1 .. v6}, Lcom/amazon/klo/list/ITermListViewProvider;->getTermListView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)Landroid/view/View;

    move-result-object v1

    .line 230
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 232
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getTermState()Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;->getFullText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getDescriptionState()Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;->getFullText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->newlyAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Stack;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p0, v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 240
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 242
    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 246
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result p2

    iget p3, p4, Landroid/graphics/Rect;->top:I

    if-ge p2, p3, :cond_2

    .line 248
    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result p2

    iput p2, p4, Landroid/graphics/Rect;->top:I

    .line 251
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    iget p3, p4, Landroid/graphics/Rect;->bottom:I

    if-le p2, p3, :cond_3

    .line 253
    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p4, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_1
    return-void
.end method

.method private addViewsWithinViewBounds(I)Landroid/graphics/Rect;
    .locals 9

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 285
    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 289
    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListViewColumns;->getChildCount(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v1, v1, p1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    .line 294
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v2, v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/klo/list/TermListItemPlaceholder;

    iget v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewStartY:I

    iget v3, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewEndY:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/klo/list/TermListItemPlaceholder;->intersectsBounds(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-direct {p0, p1, v0}, Lcom/amazon/klo/list/TermListViewColumns;->addTermToTopOfVisibleColumn(ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 301
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    .line 302
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/klo/list/TermListItemPlaceholder;

    iget v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewStartY:I

    iget v3, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewEndY:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/klo/list/TermListItemPlaceholder;->intersectsBounds(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    invoke-direct {p0, p1, v0}, Lcom/amazon/klo/list/TermListViewColumns;->addTermToBottomOfVisibleColumn(ILandroid/graphics/Rect;)V

    goto :goto_1

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/klo/list/TermListItemPlaceholder;

    iget v3, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewStartY:I

    iget v4, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewEndY:I

    invoke-virtual {v2, v3, v4}, Lcom/amazon/klo/list/TermListItemPlaceholder;->intersectsBounds(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 316
    new-instance v1, Lcom/amazon/klo/list/TermListItemPlaceholder;

    iget v4, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewStartY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/klo/list/TermListItemPlaceholder;-><init>(IIILcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)V

    .line 317
    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/amazon/klo/list/TermListViewColumns;->placeholderComparator:Ljava/util/Comparator;

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-gez v1, :cond_2

    .line 320
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 326
    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aput v1, v2, p1

    .line 327
    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aput v1, v2, p1

    .line 329
    :goto_2
    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    .line 330
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/klo/list/TermListItemPlaceholder;

    iget v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewStartY:I

    iget v3, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewEndY:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/klo/list/TermListItemPlaceholder;->intersectsBounds(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/amazon/klo/list/TermListViewColumns;->addTermToBottomOfVisibleColumn(ILandroid/graphics/Rect;)V

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method private clearSelection()V
    .locals 2

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    .line 496
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->overlaySelectedView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 497
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->selectedItemOverlayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 498
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private getChildCount(I)I
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget p1, v1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getChildrenBeforeColumn(I)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz p1, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListViewColumns;->getChildCount(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getColumnCount()I
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private getPlaceholderWithViewAtIndex(I)Lcom/amazon/klo/list/TermListItemPlaceholder;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 503
    :goto_0
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 505
    invoke-direct {p0, v1}, Lcom/amazon/klo/list/TermListViewColumns;->getChildrenBeforeColumn(I)I

    move-result v2

    .line 506
    invoke-direct {p0, v1}, Lcom/amazon/klo/list/TermListViewColumns;->getChildCount(I)I

    move-result v3

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_0

    .line 508
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v1, v2, v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/klo/list/TermListItemPlaceholder;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_1
    iget-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/klo/list/TermListItemPlaceholder;

    return-object p1
.end method

.method private getRecycledView()Landroid/view/View;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewRecycleBin:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewRecycleBin:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTallestColumn()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 378
    :goto_0
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 380
    invoke-virtual {p0, v0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnHeight(I)I

    move-result v3

    if-le v3, v2, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private initializeView(Lcom/amazon/klo/list/ITermListViewProvider;Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 75
    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->termListItemProvider:Lcom/amazon/klo/list/ITermListViewProvider;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->newlyAddedViews:Ljava/util/ArrayList;

    .line 79
    new-array p1, p3, [I

    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    .line 80
    new-array p1, p3, [I

    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->termListItemProvider:Lcom/amazon/klo/list/ITermListViewProvider;

    invoke-interface {v2}, Lcom/amazon/klo/list/ITermListViewProvider;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->newlyAddedViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->selectedItemOverlayRect:Landroid/graphics/Rect;

    .line 88
    iput-object p2, p0, Lcom/amazon/klo/list/TermListViewColumns;->selectedItemOverlay:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private layoutChildren()V
    .locals 10

    .line 626
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnCount()I

    move-result v0

    .line 627
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnWidth()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 631
    invoke-direct {p0, v2}, Lcom/amazon/klo/list/TermListViewColumns;->getChildrenBeforeColumn(I)I

    move-result v3

    .line 633
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/amazon/klo/list/TermListViewColumns;->newlyAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-lez v1, :cond_1

    .line 635
    iget-object v4, p0, Lcom/amazon/klo/list/TermListViewColumns;->newlyAddedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 636
    iget-object v5, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v6, v5, v2

    sub-int v6, v4, v6

    add-int/2addr v6, v3

    .line 637
    aget v5, v5, v2

    if-lt v4, v5, :cond_0

    iget-object v5, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v5, v5, v2

    if-ge v4, v5, :cond_0

    .line 639
    iget-object v5, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/klo/list/TermListItemPlaceholder;

    .line 640
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    mul-int v6, v1, v2

    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result v7

    add-int/lit8 v8, v2, 0x1

    mul-int v8, v8, v1

    .line 641
    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result v9

    invoke-virtual {v4}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getHeight()I

    move-result v4

    add-int/2addr v9, v4

    .line 640
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private notifySelectedViewClicked()V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 534
    invoke-direct {p0, v0}, Lcom/amazon/klo/list/TermListViewColumns;->getPlaceholderWithViewAtIndex(I)Lcom/amazon/klo/list/TermListItemPlaceholder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getIndex()I

    move-result v0

    .line 535
    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->termListItemProvider:Lcom/amazon/klo/list/ITermListViewProvider;

    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Lcom/amazon/klo/list/ITermListViewProvider;->itemClicked(Landroid/view/View;I)V

    .line 536
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->clearSelection()V

    return-void
.end method

.method private recycleView(IZ)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 135
    iget-object p2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v1, p2, p1

    sub-int/2addr v1, v0

    aput v1, p2, p1

    .line 136
    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListViewColumns;->getChildrenBeforeColumn(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListViewColumns;->getChildCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    .line 140
    :cond_0
    iget-object p2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v1, p2, p1

    add-int/2addr v1, v0

    aput v1, p2, p1

    .line 141
    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListViewColumns;->getChildrenBeforeColumn(I)I

    move-result p2

    .line 144
    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 146
    sget v2, Lcom/amazon/klo/R$id;->termListViewColumnRecycledView:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewRecycleBin:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 150
    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListViewColumns;->getChildCount(I)I

    move-result p2

    if-nez p2, :cond_1

    .line 152
    iget-object p2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    const/4 v0, 0x0

    aput v0, p2, p1

    .line 153
    iget-object p2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aput v0, p2, p1

    :cond_1
    return-void
.end method

.method private removeViewsOutsideViewBounds(I)V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 168
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListViewColumns;->getChildCount(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/klo/list/TermListItemPlaceholder;

    iget v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewStartY:I

    iget v3, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewEndY:I

    invoke-virtual {v0, v1, v3}, Lcom/amazon/klo/list/TermListItemPlaceholder;->intersectsBounds(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0, p1, v2}, Lcom/amazon/klo/list/TermListViewColumns;->recycleView(IZ)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v0, v0, v2

    if-eqz v0, :cond_1

    .line 181
    :goto_1
    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListViewColumns;->getChildCount(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleEndIndexes:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/klo/list/TermListItemPlaceholder;

    iget v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewStartY:I

    iget v3, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewEndY:I

    invoke-virtual {v0, v1, v3}, Lcom/amazon/klo/list/TermListItemPlaceholder;->intersectsBounds(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    invoke-direct {p0, p1, v2}, Lcom/amazon/klo/list/TermListViewColumns;->recycleView(IZ)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private selectView(Landroid/view/View;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    .line 486
    iget-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->overlaySelectedView:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 487
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private selectViewWithDelay(Landroid/view/View;)V
    .locals 3

    .line 473
    iput-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    .line 474
    iget-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->overlaySelectedView:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method


# virtual methods
.method public addPlaceholder(Lcom/amazon/klo/list/TermListItemPlaceholder;Z)V
    .locals 2

    .line 416
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getShortestColumn()I

    move-result v0

    .line 417
    invoke-virtual {p0, v0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnHeight(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->setY(I)V

    .line 418
    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 421
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public clearPlaceholders()V
    .locals 3

    .line 432
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 435
    :goto_1
    invoke-direct {p0, v1}, Lcom/amazon/klo/list/TermListViewColumns;->getChildCount(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 437
    invoke-direct {p0, v1, v2}, Lcom/amazon/klo/list/TermListViewColumns;->recycleView(IZ)V

    goto :goto_1

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 605
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 607
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->selectedItemOverlayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->selectedItemOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->selectedItemOverlayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 611
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getColumnHeight(I)I
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/klo/list/TermListItemPlaceholder;

    .line 463
    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getColumnWidth()I
    .locals 2

    .line 446
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method getShortestColumn()I
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 394
    :goto_0
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 396
    invoke-virtual {p0, v0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnHeight(I)I

    move-result v3

    if-ge v3, v2, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public measureChildren()V
    .locals 11

    .line 668
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_3

    .line 670
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnCount()I

    move-result v0

    .line 671
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnWidth()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 675
    invoke-direct {p0, v3}, Lcom/amazon/klo/list/TermListViewColumns;->getChildCount(I)I

    move-result v4

    .line 676
    invoke-direct {p0, v3}, Lcom/amazon/klo/list/TermListViewColumns;->getChildrenBeforeColumn(I)I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_2

    add-int v7, v6, v5

    .line 680
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 681
    iget-object v8, p0, Lcom/amazon/klo/list/TermListViewColumns;->placeholders:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlyVisibleStartIndexes:[I

    aget v9, v9, v3

    add-int/2addr v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/klo/list/TermListItemPlaceholder;

    invoke-virtual {v8}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getHeight()I

    move-result v8

    .line 684
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ne v9, v1, :cond_0

    sget v9, Lcom/amazon/klo/R$id;->termListViewColumnRecycledView:I

    .line 685
    invoke-virtual {v7, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 687
    :cond_0
    sget v9, Lcom/amazon/klo/R$id;->termListViewColumnRecycledView:I

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/high16 v9, 0x40000000    # 2.0f

    .line 688
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 689
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 688
    invoke-virtual {v7, v10, v8}, Landroid/view/View;->measure(II)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/amazon/klo/R$id;->klo_termlist_item:I

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 522
    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListViewColumns;->selectView(Landroid/view/View;)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object p2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    if-ne p1, p2, :cond_1

    .line 526
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->clearSelection()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 549
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->notifySelectedViewClicked()V

    return v0

    .line 555
    :cond_0
    invoke-super {p0, p2, p3}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->layoutChildren()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 658
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 659
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getTallestColumn()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnHeight(I)I

    move-result v1

    .line 661
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 663
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListViewColumns;->measureChildren()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/amazon/klo/R$id;->klo_termlist_item:I

    if-ne v0, v1, :cond_4

    .line 570
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 572
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->notifySelectedViewClicked()V

    return v1

    .line 575
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 577
    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListViewColumns;->selectViewWithDelay(Landroid/view/View;)V

    return v1

    .line 580
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 582
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->clearSelection()V

    return v1

    .line 585
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 588
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_3

    .line 589
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/amazon/klo/list/TermListViewColumns;->currentlySelectedView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    .line 591
    :cond_3
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->clearSelection()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public updateViewRange(II)V
    .locals 1

    .line 358
    iput p1, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewStartY:I

    .line 359
    iput p2, p0, Lcom/amazon/klo/list/TermListViewColumns;->viewEndY:I

    .line 361
    invoke-direct {p0}, Lcom/amazon/klo/list/TermListViewColumns;->getColumnCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 365
    invoke-direct {p0, v0}, Lcom/amazon/klo/list/TermListViewColumns;->removeViewsOutsideViewBounds(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p2, p1, :cond_1

    .line 370
    invoke-direct {p0, p2}, Lcom/amazon/klo/list/TermListViewColumns;->addViewsWithinViewBounds(I)Landroid/graphics/Rect;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
