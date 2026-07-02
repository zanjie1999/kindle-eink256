.class public interface abstract Lcom/amazon/kcp/cover/badge/service/IBadgeService;
.super Ljava/lang/Object;
.source "IBadgeService.java"


# virtual methods
.method public abstract bindBadges(Lcom/amazon/kcp/cover/badge/IBadgeable;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kindle/callback/ICallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/cover/badge/IBadgeable;",
            "Landroid/content/res/Resources;",
            "Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelBinding(Lcom/amazon/kcp/cover/badge/IBadgeable;)V
.end method

.method public abstract isBinding(Lcom/amazon/kcp/cover/badge/IBadgeable;)Z
.end method
