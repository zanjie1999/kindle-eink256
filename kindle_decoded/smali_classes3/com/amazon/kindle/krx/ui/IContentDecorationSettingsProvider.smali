.class public interface abstract Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;
.super Ljava/lang/Object;
.source "IContentDecorationSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;
    }
.end annotation


# virtual methods
.method public abstract getAdditionalLineSpacing(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAdditionalLineSpacing(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAdditionalLineSpacing(IILcom/amazon/kindle/krx/content/IBook;)I
.end method

.method public abstract getFooters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/IKRXFooter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSettings()Landroid/os/Bundle;
.end method
