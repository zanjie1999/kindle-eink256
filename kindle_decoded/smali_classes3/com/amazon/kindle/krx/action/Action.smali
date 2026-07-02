.class public interface abstract Lcom/amazon/kindle/krx/action/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lcom/amazon/kindle/krx/foundation/Prioritized;


# virtual methods
.method public abstract execute()V
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getMetricsTag()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method
