.class public abstract Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;
.super Ljava/lang/Object;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LanguageSet"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljava/util/Set;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;"
        }
    .end annotation

    .line 64
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->NO_LANGUAGES:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$SomeLanguages;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$SomeLanguages;-><init>(Ljava/util/Set;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract getAny()Ljava/lang/String;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isSingleton()Z
.end method

.method public abstract restrictTo(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;
.end method
