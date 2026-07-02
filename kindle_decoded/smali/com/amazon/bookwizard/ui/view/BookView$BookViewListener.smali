.class public interface abstract Lcom/amazon/bookwizard/ui/view/BookView$BookViewListener;
.super Ljava/lang/Object;
.source "BookView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/ui/view/BookView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BookViewListener"
.end annotation


# virtual methods
.method public abstract onBookRatingChanged(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V
.end method

.method public abstract onCoverClicked(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;)V
.end method

.method public abstract onWantToReadClicked(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;Z)V
.end method
