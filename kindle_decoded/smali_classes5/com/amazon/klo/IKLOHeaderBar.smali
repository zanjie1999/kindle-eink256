.class public interface abstract Lcom/amazon/klo/IKLOHeaderBar;
.super Ljava/lang/Object;
.source "IKLOHeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;,
        Lcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;
    }
.end annotation


# virtual methods
.method public abstract getSelectedChapterPosition()I
.end method

.method public abstract loadContent(Landroidx/appcompat/app/ActionBarActivity;Ljava/util/List;ZILcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/ActionBarActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI",
            "Lcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;",
            "Lcom/amazon/klo/IKLOHeaderBar$IKLOOnHeaderActionBarClickListener;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract restoreChapterSelection(I)Ljava/lang/String;
.end method
