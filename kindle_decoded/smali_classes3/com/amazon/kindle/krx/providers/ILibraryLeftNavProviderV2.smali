.class public interface abstract Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;
.super Ljava/lang/Object;
.source "ILibraryLeftNavProviderV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;
    }
.end annotation


# virtual methods
.method public abstract getLeftNavPanelRows(Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;",
            "Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPriority()I
.end method
