.class public interface abstract Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;
.super Ljava/lang/Object;
.source "IMobileWeblabClientAttributes.java"


# virtual methods
.method public abstract addWeblab(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/amazon/weblab/mobile/TooManyRegisteredWeblabsException;
        }
    .end annotation
.end method

.method public abstract getApplicationName()Ljava/lang/String;
.end method

.method public abstract getApplicationVersion()Ljava/lang/String;
.end method

.method public abstract getClientAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDomain()Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getOSName()Lcom/amazon/weblab/mobile/settings/MobileWeblabOS;
.end method

.method public abstract getOSVersion()Ljava/lang/String;
.end method

.method public abstract getWeblabs()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
