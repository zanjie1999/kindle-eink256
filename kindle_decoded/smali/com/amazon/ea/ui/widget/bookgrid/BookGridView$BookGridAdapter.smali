.class public interface abstract Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$BookGridAdapter;
.super Ljava/lang/Object;
.source "BookGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BookGridAdapter"
.end annotation


# virtual methods
.method public abstract getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getCount()I
.end method

.method public abstract getCoverContentDescription(I)Ljava/lang/String;
.end method

.method public abstract getCoverDrawable(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract onAccessibilityCoverAction(I)V
.end method

.method public abstract onExpand(I)V
.end method
