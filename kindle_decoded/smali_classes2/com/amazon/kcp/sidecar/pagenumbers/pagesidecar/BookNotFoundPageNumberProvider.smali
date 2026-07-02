.class public Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BookNotFoundPageNumberProvider;
.super Ljava/lang/Object;
.source "BookNotFoundPageNumberProvider.java"

# interfaces
.implements Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final UNLABELED_PAGE_PAIR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 21
    sput-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BookNotFoundPageNumberProvider;->EMPTY_INT_ARRAY:[I

    const-string v0, ""

    .line 22
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BookNotFoundPageNumberProvider;->UNLABELED_PAGE_PAIR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxPageLabel()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPageBreakPositionsInSpan(II)[I
    .locals 0

    .line 36
    sget-object p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BookNotFoundPageNumberProvider;->EMPTY_INT_ARRAY:[I

    return-object p1
.end method

.method public getPageLabelForFirstPosition(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getPageLabelPairInSpan(II)[Ljava/lang/String;
    .locals 0

    .line 71
    sget-object p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BookNotFoundPageNumberProvider;->UNLABELED_PAGE_PAIR:[Ljava/lang/String;

    return-object p1
.end method

.method public getPageRangeSummary()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPositionForPageLabel(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getTotalArabicPages()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTotalPages()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTotalRomanPages()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPageNumberingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPaginationNumericOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
