.class Lcom/amazon/bookwizard/data/DataProvider$4;
.super Ljava/lang/Object;
.source "DataProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/data/DataProvider;->getCountries()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/bookwizard/data/Country;",
        ">;"
    }
.end annotation


# instance fields
.field collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/data/DataProvider;)V
    .locals 0

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/data/DataProvider$4;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/bookwizard/data/Country;Lcom/amazon/bookwizard/data/Country;)I
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/amazon/bookwizard/data/DataProvider$4;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/data/Country;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/bookwizard/data/Country;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 711
    check-cast p1, Lcom/amazon/bookwizard/data/Country;

    check-cast p2, Lcom/amazon/bookwizard/data/Country;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/bookwizard/data/DataProvider$4;->compare(Lcom/amazon/bookwizard/data/Country;Lcom/amazon/bookwizard/data/Country;)I

    move-result p1

    return p1
.end method
