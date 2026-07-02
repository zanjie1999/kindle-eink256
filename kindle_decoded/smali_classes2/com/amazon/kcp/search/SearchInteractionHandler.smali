.class public interface abstract Lcom/amazon/kcp/search/SearchInteractionHandler;
.super Ljava/lang/Object;
.source "SearchInteractionHandler.java"


# virtual methods
.method public abstract onGoToStoreSelected(I)V
.end method

.method public abstract onLibraryItemSelected(ILcom/amazon/kindle/model/content/IListableBook;ILandroid/view/View;)V
.end method

.method public abstract onSpellCorrectionRejected(ILcom/amazon/kcp/search/store/model/SpellCorrectionInfo;)V
.end method

.method public abstract onStoreItemSelected(ILcom/amazon/kcp/search/store/StoreContentMetadata;I)V
.end method

.method public abstract onSuggestionSelected(ILjava/lang/String;I)V
.end method
