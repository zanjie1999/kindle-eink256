.class public Lcom/amazon/kcp/library/returns/CUReturnType;
.super Ljava/lang/Object;
.source "CUReturnType.java"

# interfaces
.implements Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeStringId()I
    .locals 1

    .line 12
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->comixology_unlimited:I

    return v0
.end method

.method public matches(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 17
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getOriginType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->isCUOriginType(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
