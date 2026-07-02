.class final Lcom/amazon/klo/list/TermListViewColumns$1;
.super Ljava/lang/Object;
.source "TermListViewColumns.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/list/TermListViewColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/klo/list/TermListItemPlaceholder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/klo/list/TermListItemPlaceholder;Lcom/amazon/klo/list/TermListItemPlaceholder;)I
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getY()I

    move-result p1

    invoke-virtual {p2}, Lcom/amazon/klo/list/TermListItemPlaceholder;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/amazon/klo/list/TermListItemPlaceholder;

    check-cast p2, Lcom/amazon/klo/list/TermListItemPlaceholder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/klo/list/TermListViewColumns$1;->compare(Lcom/amazon/klo/list/TermListItemPlaceholder;Lcom/amazon/klo/list/TermListItemPlaceholder;)I

    move-result p1

    return p1
.end method
