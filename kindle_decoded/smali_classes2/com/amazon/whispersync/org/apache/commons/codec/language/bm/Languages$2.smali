.class final Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$2;
.super Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getAny()Ljava/lang/String;
    .locals 2

    .line 232
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Can\'t fetch any language from the any language set."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSingleton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public restrictTo(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;
    .locals 0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ANY_LANGUAGE"

    return-object v0
.end method
