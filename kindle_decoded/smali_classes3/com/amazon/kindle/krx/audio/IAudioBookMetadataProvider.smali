.class public interface abstract Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;
.super Ljava/lang/Object;
.source "IAudioBookMetadataProvider.java"


# virtual methods
.method public abstract getAudioBookFileSize(Lcom/amazon/kindle/krx/content/IBook;)J
.end method

.method public abstract getBadgeIcon(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/library/LibraryViewType;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getCompanionAudioBookAvailable(Lcom/amazon/kindle/krx/content/IBook;)Z
.end method

.method public abstract getContentDescription(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
.end method

.method public abstract getOwnsCompanionBook(Lcom/amazon/kindle/krx/content/IBook;)Z
.end method

.method public abstract isAudioBookNew(Lcom/amazon/kindle/krx/content/IBook;)Z
.end method
