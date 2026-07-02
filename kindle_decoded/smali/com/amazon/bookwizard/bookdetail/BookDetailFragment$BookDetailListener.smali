.class public interface abstract Lcom/amazon/bookwizard/bookdetail/BookDetailFragment$BookDetailListener;
.super Ljava/lang/Object;
.source "BookDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/bookdetail/BookDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BookDetailListener"
.end annotation


# virtual methods
.method public abstract onBookRatingChanged(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;I)V
.end method

.method public abstract onWantToReadClicked(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;Z)V
.end method
