.class final Lcom/amazon/bookwizard/data/DataProvider$2;
.super Ljava/lang/Object;
.source "DataProvider.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/data/DataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Lcom/amazon/bookwizard/data/Genre;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/bookwizard/data/Genre;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Genre;->isPreferred()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 64
    check-cast p1, Lcom/amazon/bookwizard/data/Genre;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/data/DataProvider$2;->apply(Lcom/amazon/bookwizard/data/Genre;)Z

    move-result p1

    return p1
.end method
