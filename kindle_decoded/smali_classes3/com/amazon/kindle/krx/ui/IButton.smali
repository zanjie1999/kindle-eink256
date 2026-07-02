.class public interface abstract Lcom/amazon/kindle/krx/ui/IButton;
.super Ljava/lang/Object;
.source "IButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIconKey()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
.end method

.method public abstract getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/amazon/kindle/krx/ui/ComponentStatus;"
        }
    .end annotation
.end method

.method public abstract onClick(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
