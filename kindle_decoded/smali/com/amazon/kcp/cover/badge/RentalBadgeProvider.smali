.class public Lcom/amazon/kcp/cover/badge/RentalBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/SashBadgeProvider;
.source "RentalBadgeProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/SashBadgeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBadgeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Rental"

    return-object v0
.end method

.method protected getStringId()I
    .locals 1

    .line 25
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->rental_book_label:I

    return v0
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 0

    .line 15
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Rental"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
