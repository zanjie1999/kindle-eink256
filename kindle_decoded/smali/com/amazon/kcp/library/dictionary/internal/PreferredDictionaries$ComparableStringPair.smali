.class public Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;
.super Landroid/util/Pair;
.source "PreferredDictionaries.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComparableStringPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 583
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;)I
    .locals 1

    .line 588
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 580
    check-cast p1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;->compareTo(Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;)I

    move-result p1

    return p1
.end method
