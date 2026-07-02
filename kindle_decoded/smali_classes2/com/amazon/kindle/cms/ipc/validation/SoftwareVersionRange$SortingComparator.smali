.class public final Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange$SortingComparator;
.super Ljava/lang/Object;
.source "SoftwareVersionRange.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SortingComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;)I
    .locals 2

    .line 17
    invoke-static {p1}, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->access$000(Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;)Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    move-result-object v0

    invoke-static {p2}, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->access$000(Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;)Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result v0

    .line 18
    invoke-static {p1}, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->access$100(Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;)Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    move-result-object p1

    invoke-static {p2}, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;->access$100(Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;)Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result p1

    if-gez v0, :cond_0

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    if-ltz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;

    check-cast p2, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange$SortingComparator;->compare(Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;Lcom/amazon/kindle/cms/ipc/validation/SoftwareVersionRange;)I

    move-result p1

    return p1
.end method
