.class public abstract Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;
.super Landroid/widget/RelativeLayout;
.source "AbstractSimpleSearchResultView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public abstract getChildResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;I)V
.end method

.method public abstract setChildResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setComponentVisibility(Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView$Component;Z)V
.end method

.method public abstract setDecoratorColor(I)V
.end method

.method public abstract setFooters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTitle(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)V
.end method
