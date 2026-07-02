.class public final Lcom/amazon/kcp/cover/badge/ReadBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/SashBadgeProvider;
.source "ReadBadgeProvider.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/SashBadgeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBadgeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Read"

    return-object v0
.end method

.method protected getStringId()I
    .locals 1

    .line 12
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->read:I

    return v0
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 1

    const-string v0, "libraryItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected shouldShowWhenConsolidated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
