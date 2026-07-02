.class public Lcom/amazon/kcp/library/returns/KUReturnType;
.super Ljava/lang/Object;
.source "KUReturnType.java"

# interfaces
.implements Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isKUSubscriptionOrigin(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "KUSubscription"

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getTypeStringId()I
    .locals 1

    .line 19
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->kindle_unlimited:I

    return v0
.end method

.method public matches(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 24
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getOriginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->isKUOriginType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getOriginType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/returns/KUReturnType;->isKUSubscriptionOrigin(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
