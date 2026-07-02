.class public interface abstract Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;
.super Ljava/lang/Object;
.source "IHushpuppySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;,
        Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;
    }
.end annotation


# virtual methods
.method public abstract getLong(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/Long;)Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logError(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract setLong(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/Long;)V
.end method
