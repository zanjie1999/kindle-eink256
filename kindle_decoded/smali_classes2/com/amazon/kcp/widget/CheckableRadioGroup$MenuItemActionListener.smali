.class public interface abstract Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;
.super Ljava/lang/Object;
.source "CheckableRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/widget/CheckableRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MenuItemActionListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onMenuItemChecked(Ljava/lang/CharSequence;)V
.end method

.method public abstract onMenuItemSelected(Lcom/amazon/kcp/widget/LibraryCheckableItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/widget/LibraryCheckableItem<",
            "TT;>;)V"
        }
    .end annotation
.end method
