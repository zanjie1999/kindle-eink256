.class public Lcom/amazon/kcp/library/AudibleFilterHelper;
.super Ljava/lang/Object;
.source "AudibleFilterHelper.java"


# direct methods
.method public static createOwnsCompanionBookPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;
    .locals 1

    .line 42
    new-instance v0, Lcom/amazon/kcp/library/AudibleFilterHelper$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/AudibleFilterHelper$1;-><init>()V

    return-object v0
.end method
