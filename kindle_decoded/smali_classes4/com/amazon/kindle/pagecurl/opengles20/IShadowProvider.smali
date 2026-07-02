.class public interface abstract Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;
.super Ljava/lang/Object;
.source "IShadowProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;
    }
.end annotation


# virtual methods
.method public abstract getBackShadow(DD)Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;
.end method

.method public abstract getDropShadow(DDDD)Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;
.end method

.method public abstract getSelfShadow(DDDD)Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider$Shadow;
.end method

.method public abstract getShadowInnerColor()[F
.end method

.method public abstract getShadowOuterColor()[F
.end method
