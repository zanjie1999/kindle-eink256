.class public interface abstract Lcom/amazon/kindle/collections/dto/ICollection;
.super Ljava/lang/Object;
.source "ICollection.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImportFlag()Ljava/lang/String;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getSortableTitle()Ljava/lang/String;
.end method

.method public abstract getThumbnailType()Lcom/amazon/kindle/collections/dto/ThumbnailType;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitlePronunciation()Ljava/lang/String;
.end method

.method public abstract isEnabledInMultiSelect()Z
.end method
