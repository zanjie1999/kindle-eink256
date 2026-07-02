.class public final Lcom/amazon/kcp/library/fragments/LibraryViewOptionsModelFetcher;
.super Ljava/lang/Object;
.source "LibraryViewOptionsModelFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/LibraryViewOptionsModelFetcher$LazyHolder;
    }
.end annotation


# static fields
.field private static final LIBRARY_PREFS:Ljava/lang/String; = "LibrarySettings"


# direct methods
.method public static getLibraryViewOptionsModel()Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kcp/library/fragments/LibraryViewOptionsModelFetcher$LazyHolder;->INSTANCE:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    return-object v0
.end method
