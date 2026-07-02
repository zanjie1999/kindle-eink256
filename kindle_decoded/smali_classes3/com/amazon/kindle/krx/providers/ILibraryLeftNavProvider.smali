.class public interface abstract Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider;
.super Ljava/lang/Object;
.source "ILibraryLeftNavProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getLeftNavPanelRows(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProvider$LeftNavSection;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPriority()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
