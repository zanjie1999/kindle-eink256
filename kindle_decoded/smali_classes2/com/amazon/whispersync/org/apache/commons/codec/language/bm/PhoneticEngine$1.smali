.class final Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$1;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine;->cacheSubSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:[[Ljava/lang/CharSequence;

.field final synthetic val$cached:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cache:[[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    if-ne p1, p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cache:[[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 276
    iget-object p2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cache:[[Ljava/lang/CharSequence;

    aget-object p1, p2, p1

    aput-object v0, p1, v1

    :cond_1
    return-object v0
.end method
