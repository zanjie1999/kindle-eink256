.class public Lcom/amazon/kcp/library/BookResultLimitSizeQueryFilter;
.super Lcom/amazon/kcp/library/LibraryController$BaseFilter;
.source "BookResultLimitSizeQueryFilter.java"


# instance fields
.field private limitSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryController$BaseFilter;-><init>(Ljava/lang/String;)V

    .line 15
    iput p2, p0, Lcom/amazon/kcp/library/BookResultLimitSizeQueryFilter;->limitSize:I

    return-void
.end method


# virtual methods
.method public getLimit()Ljava/lang/String;
    .locals 1

    .line 24
    iget v0, p0, Lcom/amazon/kcp/library/BookResultLimitSizeQueryFilter;->limitSize:I

    if-gez v0, :cond_0

    .line 25
    invoke-super {p0}, Lcom/amazon/kcp/library/LibraryController$BaseFilter;->getLimit()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 27
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
