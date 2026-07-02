.class public Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;
.super Ljava/lang/Object;
.source "BookSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/BookSearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResultTextCacheValue"
.end annotation


# instance fields
.field final dimension:Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;

.field final text:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;Landroid/text/SpannableString;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;->dimension:Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;

    .line 60
    iput-object p2, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;->text:Landroid/text/SpannableString;

    return-void
.end method
