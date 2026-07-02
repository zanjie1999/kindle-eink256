.class public final Lcom/amazon/kcp/oob/LandingScreenTabsKt$validate$$inlined$groupingBy$1;
.super Ljava/lang/Object;
.source "_Collections.kt"

# interfaces
.implements Lkotlin/collections/Grouping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/LandingScreenTabsKt;->validate(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/collections/Grouping<",
        "Lcom/amazon/kindle/krx/ui/LandingScreenTab;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Collections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt$groupingBy$1\n+ 2 LandingScreenTabs.kt\ncom/amazon/kcp/oob/LandingScreenTabsKt\n*L\n1#1,3517:1\n31#2:3518\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_groupingBy:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenTabsKt$validate$$inlined$groupingBy$1;->$this_groupingBy:Ljava/lang/Iterable;

    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/LandingScreenTab;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1506
    check-cast p1, Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    .line 3518
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sourceIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/kindle/krx/ui/LandingScreenTab;",
            ">;"
        }
    .end annotation

    .line 1505
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenTabsKt$validate$$inlined$groupingBy$1;->$this_groupingBy:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
