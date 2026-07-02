.class public interface abstract Lcom/amazon/kcp/cover/badge/IBadgeable;
.super Ljava/lang/Object;
.source "IBadgeable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;
    }
.end annotation


# virtual methods
.method public abstract getBadgeImageViewMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBadgeTextViewMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/BadgePosition;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBadgeableSource()Lcom/amazon/kcp/cover/badge/BadgeSource;
.end method

.method public abstract getDisplayItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;
.end method

.method public abstract getSashBadgeType()Lcom/amazon/kcp/cover/badge/IBadgeable$SashBadgeType;
.end method

.method public abstract getViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;
.end method

.method public abstract isConsolidated()Z
.end method
