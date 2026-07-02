.class public Lcom/amazon/kcp/cover/badge/AlertBadgeProvider;
.super Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;
.source "AlertBadgeProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kcp/cover/badge/BaseBadgeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBadgeLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "Error"

    return-object v0
.end method

.method protected getBadgeResourceId(Lcom/amazon/kindle/krx/library/LibraryViewType;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)I
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kcp/cover/badge/AlertBadgeProvider$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryViewType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 26
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->BadgeableCover_gridAlertBadge:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getGridBadgeId(I)I

    move-result p1

    return p1

    .line 29
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$styleable;->LibraryBookRow_listAlertBadge:I

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;->getListBadgeId(I)I

    move-result p1

    return p1
.end method

.method public shouldShowBadge(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/cover/badge/BadgeContext;)Z
    .locals 0

    .line 15
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    .line 16
    sget-object p2, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/amazon/kindle/model/content/ContentState;->UNSUPPORTED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
