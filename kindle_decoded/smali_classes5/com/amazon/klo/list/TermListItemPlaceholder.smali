.class public Lcom/amazon/klo/list/TermListItemPlaceholder;
.super Ljava/lang/Object;
.source "TermListItemPlaceholder.java"


# instance fields
.field private descriptionState:Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

.field private height:I

.field private index:I

.field private termState:Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

.field private y:I


# direct methods
.method public constructor <init>(IIILcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->setY(I)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/amazon/klo/list/TermListItemPlaceholder;->setHeight(I)V

    .line 30
    invoke-virtual {p0, p3}, Lcom/amazon/klo/list/TermListItemPlaceholder;->setIndex(I)V

    .line 31
    invoke-virtual {p0, p4}, Lcom/amazon/klo/list/TermListItemPlaceholder;->setTermState(Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)V

    .line 32
    invoke-virtual {p0, p5}, Lcom/amazon/klo/list/TermListItemPlaceholder;->setDescriptionState(Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)V

    return-void
.end method


# virtual methods
.method public getDescriptionState()Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItemPlaceholder;->descriptionState:Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/amazon/klo/list/TermListItemPlaceholder;->height:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/amazon/klo/list/TermListItemPlaceholder;->index:I

    return v0
.end method

.method public getTermState()Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/klo/list/TermListItemPlaceholder;->termState:Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    return-object v0
.end method

.method public getY()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/klo/list/TermListItemPlaceholder;->y:I

    return v0
.end method

.method public intersectsBounds(II)Z
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result p1

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setDescriptionState(Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/klo/list/TermListItemPlaceholder;->descriptionState:Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/amazon/klo/list/TermListItemPlaceholder;->height:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/amazon/klo/list/TermListItemPlaceholder;->index:I

    return-void
.end method

.method public setTermState(Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/klo/list/TermListItemPlaceholder;->termState:Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/amazon/klo/list/TermListItemPlaceholder;->y:I

    return-void
.end method
