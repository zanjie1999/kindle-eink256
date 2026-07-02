.class public Lcom/amazon/kcp/cover/badge/TrialBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/SashBadgeProvider;
.source "TrialBadgeProvider.java"


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

    const-string v0, "Trial"

    return-object v0
.end method

.method protected getStringId()I
    .locals 1

    .line 23
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->trial_book_label:I

    return v0
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 0

    .line 14
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
