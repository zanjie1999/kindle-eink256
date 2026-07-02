.class public final Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$executeTransfer$$inlined$sortedByDescending$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->executeTransfer(Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 TransferLibrary.kt\ncom/amazon/kindle/sdcard/librarytransfer/TransferLibrary\n*L\n1#1,319:1\n152#2:320\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 121
    check-cast p2, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;

    .line 320
    invoke-virtual {p2}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast p1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;

    invoke-virtual {p1}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
