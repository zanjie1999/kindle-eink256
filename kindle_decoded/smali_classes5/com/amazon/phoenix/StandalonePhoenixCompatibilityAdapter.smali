.class public Lcom/amazon/phoenix/StandalonePhoenixCompatibilityAdapter;
.super Ljava/lang/Object;
.source "StandalonePhoenixCompatibilityAdapter.java"

# interfaces
.implements Lcom/amazon/phoenix/IPhoenixCompatibilityAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollator(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/amazon/ebook/util/text/SortUtil;->getCollator(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;

    move-result-object p1

    return-object p1
.end method
