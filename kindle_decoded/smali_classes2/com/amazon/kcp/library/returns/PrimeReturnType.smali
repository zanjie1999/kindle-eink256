.class public Lcom/amazon/kcp/library/returns/PrimeReturnType;
.super Ljava/lang/Object;
.source "PrimeReturnType.java"

# interfaces
.implements Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;


# static fields
.field private static final ORIGIN_TYPE_PRIME_READING:Ljava/lang/String; = "Prime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeStringId()I
    .locals 1

    .line 18
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->prime_reading:I

    return v0
.end method

.method public matches(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 23
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getOriginType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Prime"

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
