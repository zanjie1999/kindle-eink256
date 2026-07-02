.class final Lcom/amazon/kindle/content/GroupItemMetadata$1;
.super Ljava/lang/Object;
.source "GroupItemMetadata.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/GroupItemMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/content/GroupItemMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/content/GroupItemMetadata;Lcom/amazon/kindle/content/GroupItemMetadata;)I
    .locals 0

    .line 21
    invoke-static {p1}, Lcom/amazon/kindle/content/GroupItemMetadata;->access$000(Lcom/amazon/kindle/content/GroupItemMetadata;)F

    move-result p1

    invoke-static {p2}, Lcom/amazon/kindle/content/GroupItemMetadata;->access$000(Lcom/amazon/kindle/content/GroupItemMetadata;)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lcom/amazon/kindle/content/GroupItemMetadata;

    check-cast p2, Lcom/amazon/kindle/content/GroupItemMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/GroupItemMetadata$1;->compare(Lcom/amazon/kindle/content/GroupItemMetadata;Lcom/amazon/kindle/content/GroupItemMetadata;)I

    move-result p1

    return p1
.end method
