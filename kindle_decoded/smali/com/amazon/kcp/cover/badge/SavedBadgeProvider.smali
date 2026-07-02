.class public Lcom/amazon/kcp/cover/badge/SavedBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/SashBadgeProvider;
.source "SavedBadgeProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/SashBadgeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBadgeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Saved"

    return-object v0
.end method

.method protected getStringId()I
    .locals 1

    .line 18
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->cover_saved_tag:I

    return v0
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 0

    .line 13
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isKept()Z

    move-result p1

    return p1
.end method
